# EXP-0006: Z4 Historical Evidence Intake

**Date:** 2026-08-08

**Status:** Examined

## Research Question

What durable knowledge emerged from the Z4 multi-machine AI experiments, and what evidence supports or contradicts a developmental relationship with the earlier YG14 experiments?

## Input

- [REF-0004: Z4 Evidence Transfer Preparation Report](../../references/REF-0004.md)
- [EXP-0005: YG14 Historical Evidence Intake](../EXP-0005/README.md)

## Historical Evidence Map

| Historical area | Authority or role | Evidence class | Bounded interpretation |
| --- | --- | --- | --- |
| AI-OS Kernel Foundation | Source-stated approved architectural foundation for AI-OS. | Architectural authority | The report identifies explicit Governance, Knowledge, Kernel, Runtime, and Application boundaries. This authority applies to AI-OS in the source record; it does not make other Z4 projects universal architecture. |
| Adaptive Learning multi-machine runtime | Most mature operational experiment in the source report. | Operational implementation and derived evidence | Documentation and artifacts describe machine roles, task history, approvals, retries, leases, cancellation, lineage, tidy data, graphs, and digests. Operational effectiveness is not independently validated here. |
| SAI Extractor | Extraction and normalization trial. | Experimental implementation | Pipelines, normalization material, audit-oriented processing, and raw-to-parsed lineage candidates were reported. Authority and version consolidation remain unresolved. |
| SAI Codex | Physics-domain ingestion and representation trial. | Experimental implementation and derived evidence | Ingestion, validation, relational persistence, graph representation, and knowledge outputs were reported. It remains a domain application, not a universal AI-OS pattern. |
| AI Agent Team | Local agent collaboration and ingestion trial. | Experimental implementation | The report treats it as a candidate adapter requiring identity, authority, source-reference, and action-audit review before any promotion. |
| Supporting prototypes and runtime stores | Basic RAG utilities, Titan Shard, auxiliary notes, and data/model stores. | Historical prototype and derived evidence | Preserve only as labeled historical leads. Runtime stores and sensitive content are not transferred. |

## Classified Findings

### AI-OS Authority Boundary Is Explicit in the Source Record

- **Classification:** Observation
- **Architectural authority:** The source report identifies approved AI-OS foundation documents that distinguish governance, knowledge, kernel, runtime, and application boundaries.
- **Confidence:** High for the report's claim about source-project authority; not assessed as Discovery Lab authority.
- **Interpretation:** This is evidence about AI-OS's stated architectural truth, not a mandate for Discovery Lab or for Z4 application experiments.

### Multi-Machine Coordination Concerns Were Explicitly Documented

- **Classification:** Observation
- **Operational implementation evidence:** The Adaptive Learning runtime documentation and artifacts describe stable task identifiers, machine roles, dependencies, approvals, retries, leases, cancellation, audit history, source references, and derived artifact roots.
- **Confidence:** Moderate for the presence of these documented patterns; not assessed for successful operation, necessity, or generality.
- **Interpretation:** Scaling toward multi-machine work exposed these concerns in the source project's runtime design. It does not establish them as Discovery Lab foundation requirements.

### Authority Boundaries May Be Durable Knowledge for Interpreting Historical Systems

- **Classification:** Discovery Candidate
- **Supporting evidence:** The Z4 report distinguishes an approved AI-OS foundation from operational and experimental projects, while the YG14 report found absent canonical baselines and approval records across its historical projects.
- **Confidence:** Initial. The comparison suggests that authority status materially affects how historical implementation evidence can be interpreted.
- **Possible durable knowledge:** Any future cross-project reasoning may need to preserve the difference between source-stated architectural authority and experimental implementation status.

### Z4 May Continue Earlier Knowledge and Agent Concerns

- **Classification:** Hypothesis
- **Supporting evidence:** YG14 and Z4 reports both describe work involving knowledge processing, graph representations, local AI, agent collaboration, monitoring or audit concerns, and staged or lineage-aware processing.
- **Confidence:** Initial. Shared concerns do not establish shared lineage, design inheritance, compatibility, or common authority.

### Z4-to-YG14 Comparison

| Apparent relationship | Classification | Evidence boundary |
| --- | --- | --- |
| Knowledge graph and staged processing appear in Deep Farm and Z4 projects. | Similar concern only | Both reports describe graph or staged-processing work; no shared artifact, commit, or provenance chain was supplied. |
| Agent coordination, monitoring, and audit concerns appear in SHAO/local-agent trials and Z4 runtime projects. | Candidate continuity | The concerns recur, but the supplied reports do not establish a direct design or implementation lineage. |
| Z4 explicitly distinguishes AI-OS authority from experimental applications; YG14 lacks an equivalent approved baseline. | Insufficient evidence | This is a difference in documented provenance and governance, not proof of a developmental sequence or contradiction. |
| Evidence-transfer preparation and sensitivity boundaries appear in both reports. | Similar concern only | Both reports support careful evidence handling; neither report proves that one transfer discipline evolved from the other. |
| Direct project-to-project lineage between YG14 and Z4. | Insufficient evidence | No shared commit, artifact identifier, owner approval, or documented supersession chain was supplied. |

### Multi-Machine Operation and Current Work

- **Classification:** Open Question
- **Supporting evidence:** The Z4 report documents identity, roles, lifecycle, approval, retry, lease, cancellation, audit, lineage, and authority concerns in an operational multi-machine design.
- **Question:** Which of these concerns remain necessary when evidence is transferred across collaborating participants, and which are specific to a particular runtime implementation?

## Recommended Investigations

- **Authority comparison, only with owner authorization:** Compare a small approved AI-OS foundation record with a redacted experimental runtime record to determine which authority distinctions are preserved in practice. Do not transfer application implementations or sensitive runtime material.
- **Lineage investigation, only with documentary evidence:** Seek owner-approved commits, artifact identifiers, or supersession records before asserting any YG14-to-Z4 developmental relationship.
- **Multi-machine evidence review, only with redacted artifacts:** Examine one documented task-history and one derived artifact lineage record to test which concerns are runtime-specific versus evidence-transfer relevant.

## Dormant Evidence

- Adaptive Learning task folders, workflow manifests, data stores, graphs, digests, and multi-machine configuration.
- SAI Extractor pipelines, ontology material, audit logs, vaults, raw and parsed data.
- SAI Codex source, deployment composition, physics outputs, and graph files.
- AI Agent Team adapters, supporting RAG utilities, Titan Shard, auxiliary notes, model stores, and retrieval-service data.
- The source-recommended `evidence-manifest.jsonl` format.

## Items Not Transferred

- Private keys, credentials, environment files, connection material, and secret configuration.
- Raw learner data, personally identifying educational records, databases, runtime stores, logs, and model weights or caches.
- Source code, prompts, generated outputs, deployment manifests, graph files, and application designs as current Discovery Lab or AI-OS architecture.

## Result

The intake preserves Z4 as separate historical evidence. It supports a source-qualified distinction between AI-OS architectural authority and experimental runtime/application evidence. It does not establish YG14-to-Z4 lineage, require a Discovery Lab foundation change, or justify creating an evidence manifest.

## Related Records

- [REF-0003: YG14 Evidence Transfer Preparation Report](../../references/REF-0003.md)
- [ETP-002: Evidence Transfer Protocol](../../ETP-002.md)
- [D-0002: Discovery Lab and AI-OS Ecosystem](../../discoveries/D-0002.md)
