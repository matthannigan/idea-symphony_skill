# mobile-app — low — Brainstorming Persona Recommendations (Condition A)

## Guide Rule for Low Effort

Per `persona-selection-guide_Phase2C.md` Effort Level Mapping:

| Effort | Personas/Topic | Composition |
|--------|---------------|-------------|
| Low | 0 (generic) | No persona system |

At low effort, the guide prescribes **no persona system** — brainstorming runs generic rather than persona-driven. The canonical recommendation for this session is therefore **zero brainstorming personas**.

The table below records the persona set that *would* be selected if this topic were escalated to medium effort, applying the guide's medium-effort algorithm (core + 2 topic-matched per cluster). This is provided for Condition A traceability; it is not what a strictly-low-effort session would use.

## Topic Clusters Identified in Raw Material

Scanning the 101 raw questions across 10 Phase-2 personas, four coherent topic clusters emerge:

- **Cluster 1 — Core Value & Feature Selection:** which of the 15 features constitute the app's true value; frameworks for cutting from 15 to 3-4 (raised by Analyst Q1-3,7,9; Questioner Q1-3,10; Systems Thinker Q1-3; Visionary Q1,5)
- **Cluster 2 — User Experience & Retention:** what the 47-second session and 2% DAU/MAU actually mean; onboarding, notification load, cognitive overload (Audience Advocate Q1,3,4,6,9; Analyst Q5,11; Visionary Q6)
- **Cluster 3 — Migration, Trust & Communication:** how to remove features without alienating passionate minority users; relaunch vs. incremental; "funeral" for cut features (Audience Advocate Q7; Devil's Advocate Q5,8; Storyteller Q2,5,6,7; Appreciative Inquirer Q9)
- **Cluster 4 — Team, Runway & Execution:** burned-out team of 6 engineers, 8-month runway, morale through feature cuts (Analyst Q8; Devil's Advocate Q6,10,11; Appreciative Inquirer Q3,6; Storyteller Q4; Systems Thinker Q7)

## Recommended Personas (Hypothetical Medium-Effort Projection)

| Persona | Circle | Topic Cluster | Rationale |
|---|---|---|---|
| Devil's Advocate | Core | Cluster 1 — Core Value & Feature Selection | Core, always present. Directly warranted: the "clean relaunch" assumption, "simplify into nothing" trap, and whether a unified core value even exists (DA-style questions already dominate the raw material) demand critique of the team's base assumptions about cutting to 3-4 features. |
| Pragmatist | Core | Cluster 1 — Core Value & Feature Selection | Core, always present. With an 8-month runway and 15 features integrated across shared code/data models, Pragmatist's "what's the simplest version we can actually ship" lens is essential for feasibility-bounded feature selection. |
| First Principles Thinker | Inner Ring | Cluster 1 — Core Value & Feature Selection | Topic classifies as Technical/Product (feature architecture decisions). Strong Fit. The raw questions repeatedly ask "what does 'core value' actually mean" and "why assume we need to be in the fitness app category" — exactly FPT's deconstruction-to-fundamentals territory. |
| Simplifier | Inner Ring | Cluster 1 — Core Value & Feature Selection | Topic classifies as Technical/Product. Strong Fit. The entire decision is subtractive ("cut from 15 to 3-4"). Simplifier's subtractive-thinking lens is almost definitional for this cluster — which single feature, stripped of everything else, still delivers value. |
| Devil's Advocate | Core | Cluster 2 — UX & Retention | Core. Specifically warranted: the "self-selection bias in user research" and "feature popularity vs. feature value" questions need DA to challenge whether the 8% retained users' behavior actually tells us anything about the 92% who left. |
| Pragmatist | Core | Cluster 2 — UX & Retention | Core. Pragmatist grounds UX ideation in what's actually shippable given the 6-engineer / 1-designer / 1-PM team and 8-month runway. |
| Audience Advocate | Inner Ring | Cluster 2 — UX & Retention | Topic classifies as User-Facing/Community. Strong Fit. Raw material repeatedly surfaces stakeholder-mapping needs: new user in first 30 seconds, power users at 2% DAU/MAU, users with varying digital literacy or cognitive differences — classic AA territory. |
| Empath | Inner Ring | Cluster 2 — UX & Retention | Topic classifies as User-Facing/Community. Strong Fit. The 47-second session is an emotional signal (overwhelm, decision paralysis, "where do I even start?"); Empath's gut-feel lens on user emotional state complements AA's structured segmentation. |
| Devil's Advocate | Core | Cluster 3 — Migration, Trust & Communication | Core. Warranted: DA's "cascading user loss from feature cuts" and "relaunch assumption itself" already appear in the raw material — feature removal is exactly the kind of decision that needs adversarial pressure. |
| Pragmatist | Core | Cluster 3 — Migration, Trust & Communication | Core. Migration plans need feasibility grounding — what communication and transition mechanisms can a team of 8 actually execute alongside the simplification work itself. |
| Audience Advocate | Inner Ring | Cluster 3 — Migration, Trust & Communication | Topic classifies as User-Facing/Community. Strong Fit. Handling users whose routines depend on soon-to-be-deleted features (Marcus with supplement store, Priya with progress journal per Storyteller Q2) is a stakeholder-needs-mapping problem. |
| Storyteller | Inner Ring | Cluster 3 — Migration, Trust & Communication | Topic classifies as User-Facing/Community. Strong Fit. The raw material explicitly invokes lived-experience narratives — the "moment of deletion," the "funeral scene," the "six-months-later testimonial." Storyteller is already implicitly driving this cluster's best questions. |
| Devil's Advocate | Core | Cluster 4 — Team, Runway & Execution | Core. Warranted: DA's "team morale as critical success factor" and "8-month runway as false constraint" directly challenge the project's execution assumptions. |
| Pragmatist | Core | Cluster 4 — Team, Runway & Execution | Core. With 8 months of runway, burned-out team, and deeply integrated 15-feature codebase, Pragmatist's minimum-viable lens is critical for execution planning. |
| Momentum Builder | Inner Ring | Cluster 4 — Team, Runway & Execution | Topic classifies as Implementation/Ops. Strong Fit. Sequencing the work across 8 months (which features to cut first, when to communicate, when to relaunch) is progressive-elaboration territory — incremental vs. clean-slate (raised explicitly in Analyst Q10 and Questioner Q9) is a sequencing question. |
| Constraint Flipper | Inner Ring | Cluster 4 — Team, Runway & Execution | Topic classifies as Implementation/Ops. Strong Fit. The 8-month runway and burned-out team read as constraints; CF reframes them as design features — e.g., the runway as forcing function for focus, the small team as enabling tight product coherence. |

## Selection Summary

- **Total personas (if session were run):** 0 at strict low effort (per guide). Hypothetical medium-effort projection lists 4 unique personas per cluster × 4 clusters, using 8 distinct personas total (Devil's Advocate, Pragmatist, First Principles Thinker, Simplifier, Audience Advocate, Empath, Storyteller, Momentum Builder, Constraint Flipper — core personas repeat across clusters).
- **Distinct personas across all clusters:** 9 — Devil's Advocate, Pragmatist, First Principles Thinker, Simplifier, Audience Advocate, Empath, Storyteller, Momentum Builder, Constraint Flipper
- **Circle distribution (distinct personas):** Inner 7, Middle 0, Outer 0, Core 2
- **Dominant topic drivers:**
  - Feature-architecture decisions pull Analytical Core (FPT + Simplifier + Pragmatist) — but guide warns against stacking 3+ analytical personas, so Simplifier + FPT is the maximum safe stack on Cluster 1 with Pragmatist from core.
  - Human-facing signals (47-sec session, notification fatigue, feature deletion trauma) pull Human-Centered Triad members (AA, Empath, Storyteller) across clusters 2 and 3.
  - Implementation/runway pressure pulls the Progressive/Elaborative + Constraint-reframing pair (Momentum Builder, Constraint Flipper) on Cluster 4.
  - No outer-ring personas warranted: no regulatory dimension (Lawyer out), no business-model / budget / financial-planning depth in raw material beyond generic runway mention (Accountant out), no multi-stakeholder governance (Politician out).
  - Forward-Looking pair (Visionary, Futurist) considered but held: the raw material already contains strong visionary framings from Phase 2 (Visionary volume 7); the Phase 3 brainstorm need here is execution-grounded, not more paradigm-shift ideation.
