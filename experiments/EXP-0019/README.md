\# EXP-0019: Logical Trust-Zone Execution Result Intake



\*\*Date:\*\* 2026-08-27



\*\*Status:\*\* Examined



\## Objective



Review the completed Z4 logical trust-zone rehearsal proposed in \[EXP-0015](../EXP-0015/README.md) and determine what the execution evidence justifies.



\## Source boundary



The source domain is the AI-OS physical-system trust-zone laboratory repository. AI-OS remains authoritative for physical-system, deployment, and security decisions.



Stable source checkpoint:



\- repository branch merged into `master`;

\- source commit: `a976f7def7a61cfa10147f13426c8d182894b6d9`;

\- preserved bundle: `aios-trust-zone-master-a976f7def7a6.bundle`;

\- bundle SHA-256: `91451acf68ecee813783b977c896ce80f37b07b19b7114bb79b1a959c47ab6f1`.



The source repository retains five execution records:



\- initial execution and negative evidence;

\- bounded state-ownership correction;

\- controlled service-restart recovery;

\- controlled teardown;

\- controlled cleanup.



Discovery Lab did not independently rerun the containers, inspect protected storage, or validate the source host. This intake reviews the transferred execution evidence and its stated limitations.



\## Question



Did the logical trust-zone rehearsal produce decision-useful evidence about boundary behavior, operational dependencies, and later physical separability?



\## Confirmed source-reported results



Within the bounded disposable experiment:



\- four probes represented Application, Runtime-adapter, state, and inference roles;

\- the probes ran as non-root with read-only root filesystems;

\- all three experiment networks were internal;

\- network visibility checks passed 12 of 12 expected allow/deny observations;

\- GPU visibility was limited to the inference probe;

\- no experiment ports were published;

\- no protected host storage was mounted into the probes;

\- no sensitive environment-variable names were found by the bounded scan;

\- the existing protected `z4-inference` deployment remained running, healthy, and separately networked throughout the experiment.



These results are evidence about the tested container configuration, not proof of complete security isolation.



\## Negative evidence retained



The first state-volume operational test failed.



`state-probe`, running as `65532:65532`, could not write to the disposable volume root because it was owned by `0:0` with mode `755`.



The failure was preserved before correction. It exposed an operational dependency that static isolation checks alone had not resolved: writable state requires an explicit and bounded initialization mechanism.



\## Bounded correction



A one-time initializer changed only the disposable volume owner from `0:0` to `65532:65532`. Mode `755` remained unchanged.



The initializer used:



\- the pinned `alpine:3.20` image;

\- user `0:0`;

\- a read-only root filesystem;

\- all capabilities dropped except `CHOWN`;

\- network mode `none`;

\- only the disposable experiment volume mounted.



After correction, bounded state write, read, and cleanup passed without broadening zone access.



\## Recovery evidence



After controlled restart:



\- all four probes returned to `running`;

\- inference retained GPU visibility;

\- the three internal networks retained their expected memberships;

\- the protected inference deployment remained healthy.



A self-contained marker survived a controlled restart of `state-probe`, and its cleanup passed.



This establishes bounded state-volume continuity across one controlled service restart only.



The first marker observation after a broader restart was inconclusive because earlier cleanup timing was unknown. It was neither promoted to a pass nor classified as a failure.



\## Teardown and cleanup



Controlled teardown removed the experiment containers and networks while preserving the disposable volume temporarily.



The explicit output needed to establish marker continuity across full Compose teardown was not retained. Therefore, state-content continuity across full Compose teardown remains \*\*inconclusive\*\*.



After teardown evidence was committed and bundled:



\- the disposable volume was removed;

\- no experiment containers, networks, or volumes remained;

\- the protected inference deployment remained healthy.



\## Interpretation



The rehearsal answered the research question partially.



\*\*Yes:\*\* logical trust-zone rehearsal produced decision-useful evidence before physical separation. In particular, it:



\- exposed a concrete state-initialization dependency;

\- tested expected network visibility boundaries;

\- demonstrated bounded GPU assignment;

\- preserved negative evidence before correction;

\- exercised controlled restart, teardown, and cleanup;

\- showed that the disposable experiment could coexist with the protected inference deployment without modifying it.



\*\*Not yet:\*\* the experiment did not establish whether later physical separation is required, beneficial, secure, or operationally complete.



It also did not demonstrate an application-level Runtime-to-inference protocol, database behavior, production state management, or end-to-end governed-operation evidence transfer.



\## Classification



\*\*Observation — bounded physical-system rehearsal result.\*\*



Logical rehearsal on the present Z4 exposed at least one operational dependency and produced inspectable allow/deny, correction, restart, teardown, and cleanup evidence.



This supports retaining logical rehearsal as a useful experimental method. It does not establish containers as a permanent trust boundary or promote the tested topology into architecture.



\## Explicit non-claims



This intake does not establish:



\- container or Docker isolation as a complete security boundary;

\- authenticity or tamper resistance of the execution evidence;

\- application-protocol isolation;

\- database recovery or transactional integrity;

\- host-reboot or power-loss recovery;

\- production availability or performance;

\- physical separability;

\- a requirement for a dedicated inference machine;

\- a permanent role for M1 or Z4;

\- a Trust Kernel or Trust subsystem.



\## Relationship to EXP-0015



\[EXP-0015](../EXP-0015/README.md) remains the historical proposed and dormant intake. Its dormancy condition was later met by the source-domain execution.



This record does not rewrite EXP-0015. It preserves the resulting evidence and revised confidence separately.



\## Revised confidence



The observation that trust boundaries can be rehearsed logically before physical separation is now supported by one bounded execution.



Confidence increases from \*\*Initial\*\* to \*\*Supported in one bounded Z4 trial\*\*.



The broader hypothesis that this rehearsal reduces later coupling or migration risk remains unresolved because no physical inference-node migration was performed.



\## Smallest justified next step



Do not expand architecture.



If the physical-system domain later needs stronger evidence, the smallest justified follow-up is one separately authorized test of an actual bounded Runtime-to-inference request/result path, including retained rejection evidence. Physical separation should remain deferred until a concrete dependency, performance requirement, threat model, or operational need justifies it.



\## Foundation and architecture impact



None.



No Discovery Lab foundation, constitution, ETP, architecture, Trust Kernel, or Trust subsystem change is justified. No AI-OS architecture change is authorized by this intake.



\## Result



\*\*PARTIAL PASS — decision-useful rehearsal evidence produced.\*\*



The trial supports logical rehearsal as a bounded learning method and preserves a concrete operational discovery. Claims about production security, physical separability, migration benefit, and governed application behavior remain unresolved.

