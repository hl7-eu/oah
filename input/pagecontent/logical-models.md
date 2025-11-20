This page summarizes the logical models defined in `input/fsh/model-maps`. Each entry lists the intent of the model and the main data elements captured for interoperability across the Implementation Guide.

### DataSet (OAH Data Set Model)
[DataSet logical model](StructureDefinition-DataSet.html)

Captures the metadata for a OneAquaHealth data set, including stewardship and access details.
- Identifiers and naming: globally unique persistent identifier (`pid`), `title`, `description`, `version`, `type`.
- Stewardship: `contact`, `publisher`, `author`, `date`, `dateOfApproval`, `dateOfReview`, plus `licence` and `copyright`.
- Size and composition: overall `size`, `numberOfRecords`, and repeating `record` entries with `title`, `format`, `link`, and `size`.

### IndicatorsOah (OAH Indicators)
[IndicatorsOah logical model](StructureDefinition-IndicatorsOah.html)

Organizes the collections of indicators used across the project, grouped by theme.
- Biological quality: macroinvertebrates, diatoms, fish, macrophytes, riparian vegetation, and microbiomes.
- Hydromorphological quality: morphology, hydrology, and land use aspects that influence habitat and connectivity.
- Water quality: nutrients, pH, dissolved oxygen, temperature, dissolved/suspended solids, conductivity, pharmaceuticals, foam/colour/smell, and coliforms.
- Biological indicators of health risks: diptera, ticks, invasive organisms, birds, diatom teratology, fish, and amphibians.
- Remote sensing indices: chlorophyll and vegetation/water indices for aquatic/riparian assessment (e.g., NDCI, MCI, NDVI/mNDVI, NDWI/MNDWI/ANDWI, SAVI/TSAVI), moisture/temperature measures (LWCI, GVMI, LST), and urban/built-up indices (BLFEI, BRBA, NBAI, IBI, EBBI, PISI, UI, VIBI).

### Sample (SampleOah)
[Sample logical model](StructureDefinition-Sample.html)

Describes the sampling site and event supporting an indicator.
- Site context: one or more `identifier` and `name` values, optional `gps`, free-text `characteristics`, and `formReference` to supporting documentation.
- Sampling event: mandatory `dateOfSampling` and optional `performer` (organization or practitioner role) information.

### SimpleIndicator (SimpleIndicatorOah)
[SimpleIndicator logical model](StructureDefinition-SimpleIndicator.html)

Represents an indicator with a single value.
- Links to the associated `sampleDetails`.
- Captures `type` of measurement, one or more `date` values, `performer`, and a single `result` (codeable concept or quantity).

### StructuredIndicator (StructuredIndicatorOah)
[StructuredIndicator logical model](StructureDefinition-StructuredIndicator.html)

Represents an indicator composed of multiple components.
- Links to the associated `sampleDetails`.
- Captures `type` of measurement, one or more `date` values, and `performer`.
- Includes repeating `component` entries, each with its own `type` and `result` (codeable concept, quantity, or string).
