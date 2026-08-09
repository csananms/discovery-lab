# EXP-0007: QA-AG Course Evidence Transfer Intake

**Date:** 2026-08-08

**Status:** Examined

## Research Question

Can the existing Evidence Transfer Protocol represent a first-semester 2026 QA-AG course directory without transferring learner-level data or treating instructional design and generated summaries as validated knowledge?

## Input

- [REF-0005: QA-AG First Semester 2026 Course Evidence Directory](../../references/REF-0005.md)

## Evidence Map

| Evidence area | Classification | What the directory supports | Boundary |
| --- | --- | --- | --- |
| Course framework and agendas | Instructional design evidence | A phase-based course approach combining assessment, activity, reflection, feedback, and instructor review was documented. | This is design intent, not evidence of educational effectiveness. |
| Quiz and learning-activity materials | Operational implementation | Course activities and formative-assessment materials were present. | Quiz content and responses are not transferred. |
| Scores, attendance, feedback, questionnaires, and learner profiles | Derived classroom evidence | Learner-level measurement and response records exist. | Restricted due to identity, educational, and personal-data concerns; no values or records are transferred. |
| Generated learning-context summary | Derived output and interpretation | A generated document organizes course context using ETP-like language. | Its confidence claims require independent evidence review; it is not repository truth. |
| Individual dashboard discussion | Historical prototype and interpretation | A proposal for individual profiling and risk labeling exists. | It depends on restricted learner data and is not a Discovery Lab or AI-OS requirement. |

## Classified Findings

### Course Design and Classroom Measurement Are Distinct Evidence Classes

- **Classification:** Observation
- **Supporting evidence:** The directory contains both instructional-framework materials and separate learner-level measurement records.
- **Confidence:** High for the observed separation of artifact classes; not assessed for effectiveness.
- **Lab reasoning:** A course plan, a learner record, and a generated summary should not be treated as the same kind of evidence.

### Generated ETP-Like Content Requires Independent Review

- **Classification:** Observation
- **Supporting evidence:** A generated learning-context document presents classifications and confidence language while citing classroom logs and feedback that are not transferred or independently reviewed here.
- **Confidence:** High for the presence of the derived summary; not assessed for the truth of its claims.
- **Lab reasoning:** Using ETP terminology does not validate the underlying evidence or authorize transfer of the referenced data.

### De-identified Course Feedback May Support Iterative Instructional Review

- **Classification:** Hypothesis
- **Supporting evidence:** Course-design materials describe feedback and instructor-review loops, and classroom feedback records are present in the directory.
- **Confidence:** Initial. No aggregate analysis or causal assessment was performed.
- **Lab reasoning:** Any claim about instructional improvement requires authorization, de-identification, documented measures, and a bounded analysis.

### Mixed Course Directories Need Explicit Sensitivity Separation

- **Classification:** Discovery Candidate
- **Supporting evidence:** The same directory contains instructional material, generated summaries, and learner-identifying educational records.
- **Confidence:** Initial. This supports a course-intake practice, not a new Discovery Lab foundation requirement.
- **Possible durable knowledge:** Educational intake may require separating public or instructional artifacts from restricted learner evidence before any interpretation is preserved.

### Course Evidence Authorization

- **Classification:** Open Question
- **Supporting evidence:** The supplied directory does not establish learner consent, data-retention basis, research authorization, course-material ownership, or the acceptable aggregation threshold.
- **Question:** Which de-identified aggregate measures, if any, may be used for future course investigation under an explicit authorization and retention basis?

## Existing Protocol Assessment

| Concern | Result | Evidence |
| --- | --- | --- |
| Identity | Passed with limitation | Course identity is supported by filenames and materials; directory naming differs from the first-semester 2026 artifact names. |
| Provenance | Passed with limitation | The source directory and intake date are recorded; original authorship and approval details are not established. |
| Evidence | Passed | Design evidence, operational artifacts, derived output, and restricted learner evidence are separated. |
| Privacy | Workflow constraint | Learner-level and contact information are excluded rather than transferred. |
| Historical integrity | Passed | The directory is represented as a source assessment, not copied or normalized into current truth. |

## Recommended Investigation

Only after course-owner authorization and an explicit privacy basis, conduct one bounded de-identified aggregate review that defines the measure, cohort threshold, retention period, and decision question before accessing learner records.

## Dormant Evidence

- Learner-level scores, attendance, feedback, questionnaire responses, profiles, and individual dashboard proposals.
- Quiz questions, responses, images, and detailed activity outputs.
- Generated learning-context claims until their sources are authorized and independently reviewed.

## Items Not Transferred

- Learner identifiers, direct contact information, attendance, assessment results, feedback text, questionnaire responses, and individual risk labels.
- Source screenshots, PDFs, spreadsheets, images, HTML exports, and raw quiz content.
- Generated summaries as accepted course, Discovery Lab, or AI-OS truth.

## Result

The existing protocol can represent the QA-AG course directory without an education-specific foundation. Privacy and authorization are workflow constraints. No foundation gap, dashboard architecture, or learner-model requirement was demonstrated.

## Related Records

- [EXP-0003: De-identified Classroom Result Intake](../EXP-0003/README.md)
- [ETP-002: Evidence Transfer Protocol](../../ETP-002.md)
