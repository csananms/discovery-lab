# EXP-0018: Bounded Reference Resolution and Result Validation Trial

**Date:** 2026-08-18

**Status:** Examined

## Objective

Test whether the missing contents identified by [EXP-0014](../EXP-0014/README.md) are enough to reproduce one synthetic application result, without changing the evidence-candidate envelope or introducing a Trust subsystem.

## Boundary

This is a Discovery Lab-created validation fixture for the operation named in [evidence-trial-001.json](../../evidence-trial-001.json). The three fixture files are not recovered producer records and must not be treated as independent evidence of the original application execution.

The review used only the fixture contents, the transferred candidate envelope, and the explicit calculation below. No application source, hidden runtime state, external architecture, or participant data was used.

## Resolved evidence

| Reference role | Record | Relevant content |
| --- | --- | --- |
| Input artifact | [input.json](fixtures/input.json) | `temperature_c = 42.0` |
| Result | [result.json](fixtures/result.json) | `status = review_required`; rule threshold is `40.0` |
| Operation provenance | [operation.json](fixtures/operation.json) | operation and application identifiers match the candidate |

## Review result

The fixture is internally consistent:

1. The input and result use the same `operation_id`.
2. The operation record identifies the same application and operation as the candidate.
3. `42.0 >= 40.0`, so the stated rule produces `review_required`.
4. The result therefore reproduces the status reported in the candidate envelope.

## Classification

**Observation — fixture-bounded reproduction.** The supplied fixture contents are sufficient to reproduce the reported status for this synthetic case.

This does not validate the original application execution. The fixture provenance explicitly identifies the records as laboratory-created, so the result is not independent producer evidence.

## What the trial establishes

- Reference contents can make one reported outcome reproducible when the input, result, operation record, and decision rule are available.
- The existing envelope can remain unchanged while separately supplied supporting evidence is reviewed.
- Reproduction and authenticity are distinct: a self-consistent bundle can explain an outcome without proving that an external producer actually generated it.

## What remains unresolved

- Whether a producer-generated bundle can be independently authenticated or shown to be untampered.
- Whether the same review boundary works across different applications, result types, and transfer mechanisms.
- What authorization and provenance are sufficient for treating supporting records as external evidence rather than validation fixtures.

## Foundation impact

None. No new field, schema, protocol, entity, Trust Kernel, Trust subsystem, or accepted principle is justified by this single synthetic fixture.

## Result

**PASS — bounded reproduction only.** The outcome is reproducible from resolved supporting records, but independent authenticity remains untested.
