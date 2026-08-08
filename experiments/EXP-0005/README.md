# EXP-0005: YG14 Historical Evidence Intake

**Date:** 2026-08-08

**Status:** Examined

## Research Question

What durable knowledge emerged from earlier YG14 AI application experiments, and what, if anything, deserves continued investigation within the current scientist-AI ecosystem?

## Input

- [REF-0003: YG14 Evidence Transfer Preparation Report](../../references/REF-0003.md)

## Historical Evidence Map

| Historical area | Historical observation | Implementation evidence | Derived output or limit |
| --- | --- | --- | --- |
| Deep Farm / Universal Brain | Multiple generations of a local research and knowledge-processing trial existed. | Manifests, an R pipeline, a node/edge graph schema, API/web source, and monitoring configuration were reviewed. | A graph export and processed material existed, but raw and derived content remain restricted; the working tree was uncommitted and a likely duplicate existed. |
| SHAO | An agent and coordination trial had both a clean initial repository and a later working tree. | MQTT, Postgres, heartbeat, sentinel, dashboard, and agent-source artifacts were reviewed. | Runtime state and network configuration are restricted; later changes were untracked or unapproved, and operation was not validated. |
| Local agent team | An agent-runtime trial combined local-model use with database and R tools. | Compose, orchestrator/tool source, a versioned prompt, and audit-log intent were reviewed. | Logs and generated output are excluded; no reproducible run or approval record was found. |
| Wrappers and deployment trials | Alternate wrappers and deployment compositions existed. | Compose and Dockerfile artifacts were reviewed. | They are historical deployment evidence only; conflicting manifests and secret-bearing configuration prevent direct reuse. |

## Classified Findings

### Historical Lineage Is Not Current Architecture

- **Classification:** Observation
- **Historical evidence:** The report identifies multiple Deep Farm generations, likely duplicate trees, uncommitted working files, alternate deployment wrappers, and separate SHAO and agent-runtime trials.
- **Interpretation:** These artifacts record historical experimentation, not one canonical architecture.
- **Confidence:** High for the reported filesystem and Git-state observations; low for any claim about current approval or technical validity.

### Canonical State Is Needed Before Historical Implementation Can Inform Current Design

- **Classification:** Discovery Candidate
- **Supporting evidence:** The report found no authoritative project owner, approved baseline, release tag, current-truth declaration, or reproducible run record. It also identifies duplicate and uncommitted working trees.
- **Confidence:** Initial. This is a candidate practice for interpreting historical implementation evidence, not a new Discovery Lab foundation requirement.
- **Possible durable knowledge:** Historical source can inform later investigation only after its canonical state, approval, and sensitivity boundaries are known.

### Graph-Based Knowledge Processing Was Explored Historically

- **Classification:** Observation
- **Historical evidence:** The report describes a node/edge graph schema and staged processing in the Deep Farm working tree.
- **Implementation evidence:** The schema, pipeline, and associated manifests were reviewed as local artifacts.
- **Interpretation:** This demonstrates an earlier implementation direction; it does not validate a graph model or transfer it into the current architecture.
- **Confidence:** Moderate for the existence of the reviewed design; not assessed for technical validity or reproducibility.

### Monitoring, Audit, and Resilience Concerns Recurred Across Trials

- **Classification:** Observation
- **Historical evidence:** Deep Farm included monitoring configuration; SHAO included heartbeat and sentinel components; the local agent-team trial included audit-log intent.
- **Interpretation:** Observability and operational resilience recurred as implementation concerns in the reviewed trials.
- **Confidence:** Moderate for recurrence in the supplied report; low for effectiveness or necessity.

### Historical Graph and Agent Patterns May Relate to Current Work

- **Classification:** Hypothesis
- **Supporting evidence:** Deep Farm's graph-processing trial may be relevant to the current Knowledge Domain discussion; SHAO and the agent-team trial may be relevant to AI-OS and agent collaboration; versioned prompts and audit intent may be relevant to evidence-transfer review.
- **Candidate connections:** These are possible conceptual connections to Discovery Lab, AI-OS, Knowledge Runtime, agent collaboration, and evidence transfer.
- **Confidence:** Initial. Similarity of ideas does not demonstrate continuity, compatibility, or architectural reuse.

### Historical Implementation Validity

- **Classification:** Open Question
- **Supporting evidence:** The report records uncommitted implementations, apparent defects, unknown approval state, unresolved duplication, absent reproducibility records, and licensing/privacy uncertainty.
- **Question:** Which, if any, redacted and owner-approved historical artifacts can be reproduced or compared without importing their implementation architecture?

## Recommended Investigations

- **Provenance investigation, only with owner authorization:** Identify a canonical historical baseline by comparing approved commits, release markers, and documented deviations. Do not inspect restricted databases, logs, or credentials.
- **Reproducibility investigation, only after redaction and approval:** Map one sanitized source baseline to one permitted derived result. Do not use raw literature, personal material, runtime stores, or unapproved outputs.

## Dormant Items

- Exact Deep Farm graph schema, staged-layer configuration, and v1/v2/v3 implementation details.
- SHAO heartbeat, MQTT, dashboard, sentinel, and network behavior.
- Local agent-team orchestration, prompt text, database tools, Docker-socket assumptions, logs, and generated outputs.
- Deployment wrappers, duplicate working trees, and historical graph exports.

These items remain historical leads unless a future owner-approved investigation establishes provenance, sensitivity, and relevance.

## Items Not Transferred

- Secrets, credentials, environment files, connection material, and external-storage configuration.
- Databases, backups, MQTT/runtime state, logs, caches, model data, and session material.
- Raw literature, personal or family material, potentially copyrighted content, and unreviewed graph exports.
- Old source code, prompts, generated outputs, and system designs as current architectural truth.

## Result

The intake preserved historical implementation evidence without inheriting historical implementation architecture. No foundation gap or new architecture was demonstrated. The only justified next work is owner-authorized provenance or reproducibility investigation under the report's exclusion and sensitivity boundaries.

## Related Records

- [ETP-002: Evidence Transfer Protocol](../../ETP-002.md)
- [D-0002: Discovery Lab and AI-OS Ecosystem](../../discoveries/D-0002.md)
- [D-0004: Discovery Engine Minimum Kernel](../../discoveries/D-0004.md)
