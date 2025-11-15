#!/usr/bin/env python3
"""Aggregate Benevento pollutant CSVs into a summary table."""

from __future__ import annotations

import argparse
import csv
import re
import statistics
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, Iterable, List

CSV_FIELD_LIMIT = 5_000_000
OUTPUT_ENCODING = "cp1252"
SITE_PATTERN = re.compile(r"pollutant\s+(\d{2})-20\d{2}", re.IGNORECASE)


@dataclass
class PollutantSeries:
    """Holds the numeric time-series for a pollutant."""

    values: List[float]
    unit: str

def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description="Build monthly pollutant summaries for the Benevento samples."
    )
    parser.add_argument(
        "--folder",
        type=Path,
        default=Path("_samples/benevento/source"),
        help="Directory containing the Benevento pollutant CSVs.",
    )
    parser.add_argument(
        "--output-folder",
        type=Path,
        help="Directory that receives the summary CSVs (default: parent of --folder if named 'source', otherwise the folder itself).",
    )
    parser.add_argument(
        "--site",
        action="append",
        help="Two-digit site identifier to process. Use multiple times for several sites. Defaults to auto-detecting all sites.",
    )
    return parser.parse_args()


def load_pollutant_series(csv_path: Path) -> Dict[str, PollutantSeries]:
    csv.field_size_limit(CSV_FIELD_LIMIT)
    with csv_path.open(encoding="cp1252", newline="") as handle:
        rows = list(csv.reader(handle))
    if len(rows) < 4:
        raise ValueError(f"{csv_path} unexpectedly has {len(rows)} rows.")

    columns = [row[1].split(",") for row in rows[:4]]
    lengths = {len(col) for col in columns}
    if len(lengths) != 1:
        raise ValueError(f"{csv_path} columns do not share a common length: {lengths}")

    result: Dict[str, PollutantSeries] = {}
    for _, pollutant, value, unit in zip(*columns):
        value = value.strip()
        if not value:
            continue
        try:
            numeric_value = float(value)
        except ValueError:
            continue
        series = result.setdefault(pollutant, PollutantSeries([], unit))
        series.values.append(numeric_value)
    return result


def iter_site_files(folder: Path, site: str) -> Iterable[Path]:
    pattern = f"pollutant {site}-201"
    for candidate in sorted(folder.glob("*.csv")):
        if "benevento" not in candidate.name.lower():
            continue
        if pattern not in candidate.name.lower():
            continue
        yield candidate


def build_summary_lines(folder: Path, site: str) -> List[str]:
    files = list(iter_site_files(folder, site))
    if not files:
        raise SystemExit(f"No files found for site {site!r} in {folder}.")
    summary_lines = ["Year;Parameter;Unit;AVERAGE;MAX;MIN;STDEV;MEDIAN"]
    for csv_path in files:
        year = next((part for part in csv_path.stem.split("-") if part.isdigit()), None)
        if not year:
            raise ValueError(f"Unable to extract year from '{csv_path.name}'.")
        series_map = load_pollutant_series(csv_path)
        for pollutant in sorted(series_map):
            series = series_map[pollutant]
            fmt = lambda x: f"{x:.2f}".replace(".", ",")
            avg = statistics.fmean(series.values)
            mx = max(series.values)
            mn = min(series.values)
            stdev = statistics.pstdev(series.values)
            med = statistics.median(series.values)
            summary_lines.append(
                f"{year};{pollutant};{series.unit};"
                f"{fmt(avg)};{fmt(mx)};{fmt(mn)};{fmt(stdev)};{fmt(med)}"
            )
    return summary_lines


def detect_sites(folder: Path) -> List[str]:
    sites = set()
    for csv_path in folder.glob("*.csv"):
        match = SITE_PATTERN.search(csv_path.name)
        if match:
            sites.add(match.group(1))
    return sorted(sites)


def normalize_site(site: str) -> str:
    site = site.strip()
    if not site:
        raise ValueError("Empty site identifier provided.")
    if len(site) == 1:
        site = f"0{site}"
    return site


def main() -> None:
    args = parse_args()
    folder = args.folder
    if not folder.exists():
        raise SystemExit(f"Folder '{folder}' does not exist.")

    if args.output_folder:
        output_folder = args.output_folder
    else:
        output_folder = folder.parent if folder.name.lower() == "source" else folder
    output_folder.mkdir(parents=True, exist_ok=True)

    if args.site:
        sites = sorted({normalize_site(site) for site in args.site})
    else:
        sites = detect_sites(folder)
    if not sites:
        raise SystemExit(f"No pollutant sites detected in {folder}.")

    for site in sites:
        summary_lines = build_summary_lines(folder, site)
        output_path = output_folder / f"Benevento pollutant {site}-summary.csv"
        output_path.write_text("\n".join(summary_lines), encoding=OUTPUT_ENCODING)
        print(f"Wrote summary to {output_path}")


if __name__ == "__main__":
    main()
