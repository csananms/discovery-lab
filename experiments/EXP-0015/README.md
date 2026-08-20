# EXP-0015: Logical Trust-Zone Rehearsal Evidence Intake

**Date:** 2026-08-20

**Status:** Proposed; dormant until the Z4 experiment is run

## Source

Incoming Evidence Transfer Protocol from the AI-OS physical-system design domain.

AI-OS remains authoritative for AI-OS physical-system and security decisions. This intake does not approve, adopt, or modify AI-OS architecture.

## Research Question

Does rehearsing a future physical trust boundary as a logical boundary on existing hardware produce useful evidence before the cost and complexity of physical separation are introduced?

## Evidence Boundary

The supplied ETP contains an observation, an engineering hypothesis, a proposed experiment, explicit non-claims, and an open question. It reports no completed Z4 experiment or experimental results. The proposed topology is preserved as a test direction, not as a Discovery Lab or AI-OS architectural commitment.

## Retained Observation

Trust boundaries may be rehearsed logically before they become physical boundaries.

**Confidence:** Initial. The observation is plausible as an engineering practice, but this intake provides no experimental evidence that logical rehearsal reduces migration risk or reveals all relevant boundary failures.

## Retained Engineering Hypothesis

Separating state/domain services and inference logically on Z4 may expose trust-boundary violations and reduce later coupling when inference is moved to a dedicated machine.

**Confidence:** Initial. The hypothesis remains untested and does not imply that physical separation will be required or beneficial.

## Proposed Experiment

### Logical Trust-Zone Rehearsal on Z4

Create bounded execution zones for `state`, `runtime`, `application`, and `inference` on the existing Z4 machine. Give GPU access only to the inference zone. Route inference through a bounded Runtime-mediated request and result path.

The experiment is sufficiently bounded as a proposed test plan if it records configuration, observed behavior, and negative results for:

- logical network separation and unauthorized cross-zone communication;
- GPU access assignment and attempted access by non-inference zones;
- durable-state and authoritative-database access, including blocked inference-to-database access;
- successful Runtime-to-inference requests and returned results;
- secrets and credential exposure boundaries;
- operational friction, performance, failure, and recovery behavior;
- dependencies and changes required to move inference to another physical machine.

Negative evidence is first-class evidence. Unexpected dependencies, direct state access, degraded operation, failed recovery, performance costs, and boundary bypasses must be retained rather than omitted.

The experiment should document its threat model and test conditions. It must not treat containers or Docker as a complete security boundary without separate evidence.

## Explicit Non-Claims Preserved

This intake does not establish that:

- Docker or containers are the permanent or sufficient isolation mechanism;
- M1 or Z4 roles are permanent;
- Z4 must own all durable state;
- inference must run on a separate machine;
- the proposed topology is production-ready;
- Kubernetes, a service mesh, or other orchestration infrastructure is required;
- Discovery Lab should adopt the AI-OS machine architecture.

## Open Question

Can logical trust-zone rehearsal produce decision-useful evidence about boundary violations, coupling, operation, and later physical separability before physical node separation is introduced?

## Classification Decision

**TESTABLE ENGINEERING HYPOTHESIS - unchanged.**

No Discovery Candidate is recorded. Promotion would require actual experimental evidence showing what logical rehearsal exposes, preserves, reduces, or fails to reveal.

## Foundation and Architecture Impact

None identified. This intake does not modify Discovery Lab's foundation, constitution, accepted principles, ETP, discoveries, or architecture. It also does not authorize changes to AI-OS architecture.

## Dormancy Condition

Remain dormant until the Z4 experiment is actually run with retained configuration, test results, negative evidence, and failure/recovery observations. Any later physical-separation decision belongs to the AI-OS source domain and requires its own evidence and authority.

## Related Records

- [ETP-002: Evidence Transfer Protocol](../../ETP-002.md)
- [EXP-0011: Trust Without a Trust Kernel Evidence Intake](../EXP-0011/README.md)
