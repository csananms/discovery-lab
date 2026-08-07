# EXP-0001: External Knowledge Intake Stability Test

**Date:** 2026-08-07

**Status:** Examined

## Research Question

Can the current Discovery Lab foundation accept a real external scientific source, preserve its identity and provenance, distinguish evidence from interpretation, and support later investigation without requiring new foundational architecture?

## Input

- [REF-0001: Microwave-Assisted Vacuum Frying of Durian Chips](../../references/REF-0001.md)

## Examination

The source was examined as external evidence. It was not copied into the repository. Selected reported results, author interpretations, and laboratory reasoning are preserved separately below.

## Classified Outputs

### Microwave Power Result Under Reported Conditions

- **Classification:** Observation
- **Source evidence:** The paper reports shorter frying time, lower specific energy consumption, and lower oil content for Day 1 samples at 560 W than at 400 W under its stated conditions.
- **Confidence:** Moderate for the reported result; not assessed for generalization.
- **Lab reasoning:** This is condition-specific evidence, not a general Discovery Lab conclusion about microwave-assisted vacuum frying.
- **Potential investigation:** Compare this relationship under a separately defined product and process context.

### Ripening Mechanism Proposed by the Authors

- **Classification:** Hypothesis
- **Source evidence:** The authors associate increased ripeness with longer frying time, higher oil uptake, and changed structure in their study.
- **Author interpretation:** Sugar and pectin changes may affect water binding, vapour pressure, and water removal.
- **Confidence:** Initial for use outside the reported study.
- **Lab reasoning:** The proposed mechanism remains an author interpretation until independently examined for a defined laboratory question.

### Foundation Accepts a Bounded External Source

- **Classification:** Discovery Candidate
- **Supporting evidence:** This experiment recorded source identity, provenance, selected evidence, author interpretation, laboratory reasoning, confidence, and linked outputs without changing the foundation.
- **Confidence:** Initial; one source intake is insufficient to establish general operational stability.
- **Potential architectural consequence:** None established. The existing reference, experiment, notebook, and linking structures were sufficient for this case.

### Ripening and Thickness

- **Classification:** Open Question
- **Supporting evidence:** The Day 4 samples used a greater initial thickness than Days 1-3 because of fruit softness.
- **Confidence:** Not applicable; this is a question.
- **Question:** Which reported changes remain when ripening level is compared with thickness controlled?

## Stability Test

| Foundation concern | Result | Evidence |
| --- | --- | --- |
| Identity | Passed | REF-0001 records title, authors, journal, year, pages, and DOI. |
| Provenance | Passed | REF-0001 records that the source was supplied externally for this experiment and was not archived. |
| Evidence | Passed | Source evidence, author interpretation, and laboratory reasoning are separated. |
| Lifecycle | Passed for this case | EXP-0001 records its current examined state without requiring a new lifecycle model. |
| Historical Integrity | Passed | The source remains externally identifiable; the laboratory record preserves what was selected and why. |

### Preservation Invariant

This intake does not establish whether Preservation is independent of the other foundation concerns. The source record and experiment preserve traceability for this case, but one intake cannot determine whether Preservation is redundant or independent.

## Difficulties Encountered

| Difficulty | Classification | Result |
| --- | --- | --- |
| Source PDF extraction required a bundled runtime after system PDF tools were unavailable. | Implementation limitation | Resolved without repository or architectural change. |
| Day 4 ripeness comparisons include a thickness difference. | Workflow issue | Record the scope limit; do not infer a thickness-independent ripening effect. |
| No standardized investigation artifact exists. | No architectural issue | The existing experiment record preserves the bounded investigation without new structure. |

## Result

The stability test passed for this single source intake. No foundation failure and no higher-layer capability were required. No redundant invariant was established. Preservation remains an open question rather than a resolved architectural conclusion.

## Related Records

- [2026-08-07 notebook](../../notebook/2026/2026-08-07.md)
- [ETP-002: Evidence Transfer Protocol](../../ETP-002.md)
