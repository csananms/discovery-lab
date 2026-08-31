\# EXP-0020: Runtime-Mediated Inference Path Execution Intake



\*\*Date:\*\* 2026-08-31



\*\*Status:\*\* Examined



\## Objective



Review the completed Z4 Runtime-to-Inference path experiment that followed the logical trust-zone execution retained in \[EXP-0019](../EXP-0019/README.md).



The question is whether one bounded Application request can pass through a Runtime mediation point to an isolated Inference zone, return a correlated result, preserve explicit rejection behavior, and leave prohibited direct paths unavailable.



\## Source authority



The source domain is the AI-OS physical-system trust-zone laboratory.



AI-OS remains authoritative for physical deployment, Runtime behavior, security decisions, machine roles, and any later physical-node design.



Discovery Lab reviews the transferred result. It does not approve or redefine the source architecture.



\## Stable source checkpoint



Source repository state:



\- branch merged into `master`;

\- source commit: `861ee71017b15b9a26e513a44bbdbc5edf820f15`;

\- preserved bundle: `aios-trust-zone-master-runtime-inference-861ee71017b1.bundle`;

\- bundle SHA-256: `f978c52990cd8c045008d1407b6e0a22a5e536427d740a6b3e037a2392f04314`;

\- final session checkpoint SHA-256: `b8932d1f977480591482f21054c31408bac3b4ce73b3ff51977787dbae1c3ce4`.



The source repository retains the experiment plan, disposable fixture implementation, parser-backed static validation, build-recovery evidence, execution evidence, restart evidence, teardown evidence, and cleanup evidence.



\## Evidence boundary



Discovery Lab did not independently rerun the containers, access Z4, inspect protected storage, or validate the machine-local logs.



This intake reviews the source-domain records, stable commit identity, bundle identity, reported execution results, explicit limitations, and cleanup outcome.



The experiment used a disposable line-protocol fixture. It did not implement the AI-OS Runtime, a production inference interface, ETP, or governed-operation semantics.



\## Tested path



The bounded path was:



Application → Runtime adapter → Inference probe → Runtime adapter → Application.



Application and Inference remained on separate internal networks.



Runtime was the only disposable service with membership in both the Application-facing and Inference-facing networks.



Inference remained outside the State network and had no State volume.



\## Accepted request result



Application supplied a request containing operation identifier `op-001`.



Runtime mediated the request to Inference.



Application received a result containing the same operation identifier and the bounded fixture result `inference-probe-ok`.



The command exited successfully.



\*\*Source result: ACCEPTED REQUEST AND OPERATION-ID CORRELATION PASS.\*\*



This demonstrates correlation in one disposable fixture. It does not establish durable identity, provenance authenticity, or governed-operation continuity.



\## Malformed request result



Application supplied one malformed fixture containing operation identifier `op-002`.



Runtime returned a rejection classified as `malformed\_request` and preserved `op-002`.



\*\*Source result: MALFORMED REQUEST REJECTION PASS.\*\*



Inference connection counts were not instrumented. The claim that the malformed request was not forwarded is supported by the reviewed Runtime handler control flow, not independently measured at Inference.



\## Prohibited direct paths



Application attempted direct access to the Inference service.



The attempt failed because the Inference service name was not resolvable from the Application network.



Inference attempted access to the State service.



The attempt failed because the State service name was not resolvable from the Inference network.



\*\*Source result: BOTH PROHIBITED DIRECT NETWORK PATHS REJECTED.\*\*



These are network and name-resolution boundaries. They are not authentication, authorization, or application-level policy enforcement.



\## GPU and topology observations



The disposable Inference service retained visibility of the Quadro RTX 4000.



Each internal experiment network contained exactly two expected services.



No network membership was broadened for testing.



The protected `z4-inference` deployment remained running, healthy, and attached only to its protected network.



\## Restart observation



Only the disposable Runtime and Inference services were restarted.



Both returned to healthy state.



After restart:



\- the accepted request/result path passed again;

\- exact operation-ID correlation passed again;

\- malformed-request rejection passed again;

\- GPU visibility passed again;

\- protected `z4-inference` remained healthy.



\*\*Source result: BOUNDED PROCESS-RESTART CONTINUITY PASS.\*\*



This does not establish host-reboot, power-loss, production recovery, database recovery, or availability behavior.



\## Build-evidence limitation



The previous build session ended after non-interactive sudo authorization expired.



The retained failure log contained only the sudo authorization error.



Both derivative images were later recovered and verified:



\- embedded handler hashes matched committed source hashes;

\- isolated embedded-handler tests passed;

\- running container image identities matched the recovered image identities.



Therefore:



\- recovered image artifact verification: PASS;

\- retained build-process evidence: INCOMPLETE.



The incomplete build-process evidence was preserved rather than converted into an unsupported build-pass claim.



\## Teardown and cleanup



Controlled teardown removed all disposable experiment containers and networks.



The original Compose-down exit value was not retained, but the checksum-verified teardown log and independent post-teardown inspection confirmed the object outcome.



Cleanup then removed:



\- the disposable State volume;

\- the Runtime derivative image;

\- the Inference derivative image.



Identity and attachment gates passed before deletion.



The protected inference deployment remained running and healthy.



\## Classification



\*\*Observation — bounded Runtime-mediated inference-path behavior.\*\*



One disposable Z4 trial demonstrated:



\- a mediated request/result path;

\- exact operation-ID correlation;

\- explicit malformed-request rejection;

\- network denial of prohibited direct paths;

\- bounded process-restart continuity;

\- GPU visibility confined to the Inference zone;

\- controlled teardown and cleanup.



\## Relationship to earlier records



\[EXP-0015](../EXP-0015/README.md) retained the original logical trust-zone rehearsal hypothesis.



\[EXP-0019](../EXP-0019/README.md) retained the first completed trust-zone execution and identified an actual Runtime-to-Inference request/result path as the smallest justified follow-up.



This experiment completed that follow-up.



The broader hypothesis that logical rehearsal reduces physical migration risk remains unresolved because no physical node migration occurred.



\## Confidence update



Confidence increases from a proposed request/result test to \*\*Supported in one bounded disposable Z4 trial\*\*.



Confidence does not increase for:



\- production Runtime behavior;

\- general application interoperability;

\- governed-operation evidence;

\- authentication or authorization;

\- authenticity or tamper resistance;

\- real model inference;

\- physical separability;

\- migration benefit.



\## Discovery interpretation



The important result is not the line protocol itself.



The useful observation is that the existing logical topology could express a working mediated path while keeping Application away from Inference and Inference away from State.



The fixture also showed that rejection, correlation, restart, teardown, and cleanup evidence can be retained separately without promoting the experiment mechanism into architecture.



\## Smallest justified next step



Stop expanding the logical fixture.



A further experiment is justified only when one of the following becomes concrete:



\- a real bounded model-inference operation requires mediation;

\- an actual application needs the path;

\- a physical inference node becomes available;

\- an explicit threat model requires authentication or stronger isolation;

\- governed-operation evidence needs to cross the Runtime-to-Inference boundary.



Until then, retain this result as evidence and avoid creating additional infrastructure.



\## Explicit non-claims



This intake does not establish authentication, authorization, evidence authenticity, tamper resistance, governed-operation semantics, production Runtime behavior, real model inference, database recovery, transactional integrity, performance, availability, host-reboot recovery, power-loss recovery, physical separability, migration benefit, or production security.



It does not establish a Trust Kernel or Trust subsystem.



\## Foundation and architecture impact



None.



No Discovery Lab foundation, constitution, ETP, schema, architecture, Trust Kernel, or Trust subsystem change is justified.



No AI-OS architecture change is authorized by this intake.



\## Result



\*\*PASS — bounded evidence intake and classification.\*\*



The Runtime-mediated path is supported in one disposable Z4 trial. The result should remain dormant until a real operation, physical inference node, or explicit security requirement creates a justified next experiment.

