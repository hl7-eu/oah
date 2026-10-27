This page is a proposal from Second Look, a team in the OneAquaHealth hackathon (Berkeley). File paths below are in our repository, https://github.com/alejandro-publius/second-look, which opens to the public on 2026-09-30. The FSH it describes is in `input/fsh/second-look/` in this pull request.


For the authors of hl7-eu/oah. Written by the Second Look team in Berkeley, which ran your five steps for a follower city on its creeks; the city has not adopted the method. One page, plain words. Alex opens the pull request; this file is the text behind it.

## What we are actually asking, first

Three gaps, found by building a citizen record against your guide at b907cf0 and running the HL7
validator over it with terminology checking on. It passes with zero errors, which is the good
news. These are the places where passing required a judgement call we would rather you made.

1. **Your guide has no profile for the person, and none for the trail from an answer to whoever
   gave it.** There is no Practitioner, no QuestionnaireResponse and no Provenance profile at
   b907cf0. So the part of a citizen record that says who looked, what they were asked, and how
   good they have been shown to be is outside the guide entirely. Ours validates only because
   those resources fall back to plain R4.
2. **We modelled a citizen volunteer as a pseudonymous Practitioner, because
   `Observation.performer` has no better fit.** The profile puts no type restriction on performer,
   so a Practitioner is accepted, but calling a volunteer a Practitioner is a stretch and we know
   it. We give them one qualification, no name, no telecom, no address, no birth date and no
   gender: only a random contributor token.

3. **Your Specimen profile allows only a PractitionerRole as the collector.** `SpecimenOah` says
   `collection.collector 1..1` and `only Reference(PractitionerRole)`. When we showed how a
   laboratory result would return to a citizen record (a Specimen and a small panel pointing back
   at the ServiceRequest that asked for the sample), we had to invent a PractitionerRole for the
   laboratory to satisfy it. A laboratory is an Organization; a volunteer taking a sample under a
   city programme is a Practitioner, if anything. There is also no ServiceRequest profile, so the
   request itself, the piece that turns a citizen finding into a sample bottle, is plain R4.

One small thing we found on the way, offered in a friendly spirit: your temporary code system
spells one code `morophology`. We kept that spelling, because our records have to validate
against the guide as it is, and they do. You may want to correct it before it spreads to other
follower cities.

**So, plainly: which resource should stand for a citizen observer?** If the answer is
Practitioner, we would like the guide to say so, so that everyone modelling citizen data lands in
the same place. If it is RelatedPerson, or Patient, or a Device representing an app account, or
something you have already discussed, tell us and we will change ours. Our validator output,
every warning word for word, is in docs/notes/p2_validator_run.md.

## The problem in one line

Professional surveyors pass a test before their data counts. Citizen observers never have. The guide has a profile for an indicator Observation and a profile for a Location, but no place to say how good the person who made the observation is at seeing that indicator.

## What we did

Every volunteer takes a two minute photo test on four stream features (built banks, dug-out channel, invasive plants, pipes and sewage signs), four photos per feature, scored by code as k of 4. Every creek check they make afterwards is stored as FHIR R4 (4.0.1) under your profiles, with that score attached to the person and reachable from every Observation.

## What we stored and where

One visit becomes one collection Bundle (example: `fhir/golden/visit-strawberry-creek-1.json`, built by `core/fhir_emit.py`):

| Resource | Profile | What it holds |
|---|---|---|
| Location, three nested | your `LocationOah` | creek, reach (`partOf` creek), spot (`partOf` reach, with `position`) |
| Practitioner | base R4 | the volunteer, identified only by a random contributor token. One `qualification` coded `second-look-test`, `period` from the test date to 90 days later, `issuer` our Organization |
| QuestionnaireResponse, test sitting | base R4 | one item per feature with the score out of 4 |
| QuestionnaireResponse, visit | base R4 | one item per answered check item, linkIds are the stable ids of the check form |
| Observation, one per answered item | your `ObservationIndicatorsOah` | `status final`, `subject` the spot, `performer` the Practitioner, `effectiveDateTime`, `derivedFrom` the visit response, a coded or quantity value |
| Provenance | base R4 | `target` every Observation, `agent` author = Practitioner and assembler = our software Device, `entity` source = the visit response and the test sitting |

The same Bundle also exists as a transaction of conditional creates (`fhir/golden/visit-strawberry-creek-1.transaction.json`) with our `meta.tag` on every resource, which is what we mirror to the sandbox. On 2026-09-21 it was mirrored: 14 resources, ids 452 to 465 on your sandbox, every one in `fhir/sandbox_ledger.jsonl`.

Two more shapes sit beside it, built by `core/fhir_referral.py`:

| Resource | Profile | What it holds |
|---|---|---|
| ServiceRequest | base R4 | `subject` the pipe's Location, `reasonReference` the Observations of two people who both passed the pipe feature and saw it running in dry weather, `requester` our Organization, `code` ours (`test-pipe-outflow`). Computed from stored visits on request, never stored, so never counted as a finding (`fhir/golden/referral-strawberry-creek-1.json`) |
| Specimen and three Observations | your `SpecimenOah` and `ObservationIndicatorsOah` | how a laboratory result returns to the same record: `Specimen.subject` and `Observation.subject` the same Location, `Observation.basedOn` the ServiceRequest, `Observation.specimen` the Specimen, `type` Water from your value set, values as Quantity with UCUM or as your `present`/`absent`. Tagged `example` in `meta.tag`, EXAMPLE in every narrative, made up numbers (`fhir/golden/example-lab-result-strawberry-creek-1.json`) |

And one Library under your `LibraryOah` profile, your own FAIR pattern: it names the repository, the read only endpoint, the worked visit and the mirrored Provenance, with `library-size` and `library-numberOfRecords`. It is `Library/466` on your sandbox since 2026-09-21 (`fhir/golden/library-second-look.json`, evidence in `docs/notes/sandbox_library.md`).

## Why that shape

- The score belongs to the person, not to the observation. It lives in the QuestionnaireResponse of the test sitting, and the Practitioner carries a dated qualification for the test. A reader who finds any Observation follows `performer` to the Practitioner and sees the qualification and its period, and follows Provenance to the test sitting and its score. When the period ends the score is expired and the volunteer retakes the test.
- The raw numbers live in the test sitting QuestionnaireResponse, so nothing is a blended grade or a probability. A city can decide its own threshold.
- Provenance is the path from an answer to the evidence for it: the visit response (what was asked and answered) and the test sitting (how well this person sees this feature). The software that assembled the record is named as an agent, so a reader knows no model wrote the answers.
- Your codes wherever they exist: `present`, `absent`, the indicator groups (`morophology`, `hydrology`, `invasiveOrganisms`, `foam`, `LandUse`, `riparianVegetation`) and the vegetation types. Ours only where you have none: the four feature codes, `cant-tell`, and the coded form answers (channel form, flow, habitats, debris, overall rating). Your `preferred` binding on `Observation.code` lets a local code through with an information note, which is exactly right for a follower city.
- Nothing here needed a change to your profiles. The record validates as is.

## What the validator said

HL7 validator 6.10.4, FHIR 4.0.1, your guide built from commit b907cf0 with our FSH inside it. In CI the terminology server is off, so UCUM units cannot be checked there; the full run with terminology on is in `docs/notes/p2_validator_run.md` and also had zero errors. From `results/fhir_validation.json` on 2026-09-21:

```
fhir-validate: 7 file(s), 0 error(s), 24 warning(s), terminology checks off; details in results/fhir_validation.json
```

The seven files are the FSH example Bundle SUSHI builds from `fhir/fsh/`, the Heraklion follower city Bundle from the same folder, and five golden files the code produces: the visit as a collection and as a transaction, the referral, the example laboratory result, and the Library. Every warning is one of two kinds: the dom-6 "a resource should have narrative" best practice note on the two FSH examples, and "Unable to validate code ... in system http://unitsofmeasure.org because the validator is running without terminology services" for `m`, `mL`, `%` and `[CFU]/dL`. The Bundles the code produces carry a generated narrative on every resource, so they show only the UCUM note; the referral and the Library show none. The `preferred` binding on `Observation.code` produced information notes for our local codes, not errors.

## The FSH example

`fhir/fsh/` holds our CodeSystem (`second-look`), two ValueSets (feature codes, answer values), the two Questionnaires (the observer test and the creek check, the second generated from our form so every linkId and answer option matches), one complete visit example, and the Heraklion scaffold: four nested Locations under `LocationOah` for a follower city, written by `make new-city`. `scripts/fhir_build.sh` copies them into `input/fsh/second-look/` inside a copy of your guide at the pinned commit and runs SUSHI 3.20.1: 0 errors, 0 warnings. That build runs in our CI on every commit, so the example cannot drift from the guide without someone noticing.

## What we would add to the guide

1. A Practitioner qualification pattern for citizen observers: `qualification.code` from a small ValueSet of observer tests, `qualification.period` required so every score has an end date, `qualification.issuer` the organisation that ran the test. The Practitioner carries an identifier and no name, so citizen records stay pseudonymous.
2. A Provenance pattern for citizen Observations: `target` the Observations of one visit, `agent` with `author` (the person) and `assembler` (the software), `entity` with `source` pointing at the QuestionnaireResponse of the visit and at the response that holds the person's test result. One Provenance per visit keeps the resource count small.
3. A note beside the `preferred` binding on `ObservationIndicatorsOah.code` saying that follower cities may use local codes for features your value set does not yet name, and asking them to publish the CodeSystem, as we do.
4. Optional: a `QuestionnaireResponse` profile for the observer test with one group per indicator and an integer score item, so cities can compare observer quality across countries with the same shape.
5. On `SpecimenOah.collection.collector`, allow `Reference(PractitionerRole or Practitioner or Organization)`, so a laboratory can be named as itself and a trained volunteer taking a sample under a city programme does not need a role invented for them. And a small `ServiceRequest` pattern for the step between a citizen finding and a sample: `subject` a `LocationOah`, `reasonReference` the indicator Observations, `requester` the organisation that runs the programme. Our referral is that shape today in plain R4.
6. A note on the Library pattern for follower cities: one `LibraryOah` per city data set, `content` pointing at the repository that holds the code and at the Provenance resources on the server, so a reader can walk from the Library to a record and from the record to the score of the person who made it. Ours is `Library/466` on the sandbox.

We would be glad to send the FSH for any of these as a pull request.
