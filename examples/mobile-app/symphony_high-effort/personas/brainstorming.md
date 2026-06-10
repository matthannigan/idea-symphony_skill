---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: "2026-04-27"
effort: "high"
stage: "Phase 2 Step 2.4: Brainstorming Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Brainstorming Persona Selections

Each of the 13 topic clusters from `QUESTIONS.md` is assigned exactly 7 personas:
**Core** (Devil's Advocate + Pragmatist) + **2 Inner Ring** (topic-matched) + **3 Middle Ring** (cluster completers). The "Additional Questions" section is not a topic cluster and is not assigned personas.

Retired personas (Questioner, Analyst, Synthesizer) are not selected.

## Summary Table

| # | Topic Cluster | Core 1 | Core 2 | Inner 1 | Inner 2 | Middle 1 | Middle 2 | Middle 3 |
|---|---|---|---|---|---|---|---|---|
| 01 | Defining the Core Value Hypothesis | Devil's Advocate | Pragmatist | First Principles Thinker | Visionary | Provocateur | Futurist | Analogist |
| 02 | Interpreting Session Length and Engagement Signals | Devil's Advocate | Pragmatist | First Principles Thinker | Empath | Provocateur | Storyteller | Constraint Flipper |
| 03 | Retention Diagnostics and the Activation Event | Devil's Advocate | Pragmatist | First Principles Thinker | Systems Thinker | Storyteller | Connector | Analogist |
| 04 | The Passionate Minority Problem | Devil's Advocate | Pragmatist | Empath | Audience Advocate | Storyteller | Visionary | Constraint Flipper |
| 05 | Feature-Selection Methodology and Decision Bias | Devil's Advocate | Pragmatist | First Principles Thinker | Systems Thinker | Provocateur | Constraint Flipper | Analogist |
| 06 | Technical Entanglement and Removal Risks | Devil's Advocate | Pragmatist | First Principles Thinker | Systems Thinker | Connector | Analogist | Constraint Flipper |
| 07 | Communicating the Reset to Existing Users | Devil's Advocate | Pragmatist | Empath | Audience Advocate | Storyteller | Provocateur | Constraint Flipper |
| 08 | Equity, Inclusion, and Whose Voice Shapes the Decision | Devil's Advocate | Pragmatist | Audience Advocate | Empath | Storyteller | Systems Thinker | Connector |
| 09 | Team Capacity, Burnout, and the Build Itself | Devil's Advocate | Pragmatist | Empath | Storyteller | Audience Advocate | Constraint Flipper | Analogist |
| 10 | Runway as a Design Constraint | Devil's Advocate | Pragmatist | Constraint Flipper | Momentum Builder | Simplifier | Visionary | Futurist |
| 11 | Defining Success for the Simplified Product | Devil's Advocate | Pragmatist | First Principles Thinker | Visionary | Futurist | Provocateur | Empath |
| 12 | Strategic Positioning, Category Trajectory, and Relaunch Timing | Devil's Advocate | Pragmatist | Futurist | Visionary | Connector | Analogist | Systems Thinker |
| 13 | First Steps and Experiments Worth Running | Devil's Advocate | Pragmatist | Momentum Builder | Constraint Flipper | Simplifier | Storyteller | Visionary |

## Per-Cluster Rationale

### Cluster 01: Defining the Core Value Hypothesis

**Topic classification:** Strategic/Vision + Novel/Ambiguous. Questions probe the irreducible human need beneath 15 features (Q1, Q4), challenge whether the "real core" even exists yet (Q2, Q5), and ask whether the relaunch could *create a category* rather than compete in one (Q6).

- **Devil's Advocate** (core) — challenges the assumption that any of the 15 features captures the core.
- **Pragmatist** (core) — keeps "what is shippable in 8 months" anchored against vision drift.
- **First Principles Thinker** (Inner / Strong Fit for Strategic-via-deconstruction): Q1 and Q4 are explicit FPT prompts ("setting aside all 15 features… single irreducible human need"; "with no legacy code… single irreducible thing").
- **Visionary** (Inner / Strong Fit for Strategic): Q5 (ambient continuous presence) and Q6 (creating a category) demand paradigm-shift thinking, not trend extrapolation.
- **Provocateur** (Middle): completes the Challenge Triad with DA. Q5 ("don't open at all") is already absurdist territory; Provocateur can push further.
- **Futurist** (Middle): completes Forward-Looking pair with Visionary. Grounds the "what could this be" question in observable category trends.
- **Analogist** (Middle): novel/ambiguous topic — the question "what is the core of a social fitness app?" doesn't map to a single domain. Cross-domain inspiration (relationships, rituals, tools, services) is high-value.

Cluster-family check: Analytical Core = 2 (FPT, Pragmatist); Forward-Looking = 2 (Visionary, Futurist); Challenge = 2 (DA, Provocateur); External Perspectives = 1 (Analogist). No family ≥ 4.

### Cluster 02: Interpreting Session Length and Engagement Signals

**Topic classification:** Technical/Product (data interpretation) + User-Facing emotional (Q9 explicitly asks "what does someone *feel* in 47 seconds"). The 47-second metric is being interrogated as failure mode, design target, or misread proxy.

- **DA** (core) / **Pragmatist** (core).
- **First Principles Thinker** (Inner / Strong Fit Technical): Q7 deconstructs whether the goal is longer sessions or *faster, more satisfying* sessions — a fundamentals question.
- **Empath** (Inner / Strong Fit User-Facing): Q9 is an explicit Empath prompt ("a 47-second average session isn't just a metric — it's a feeling… boredom, anxiety, defeat").
- **Provocateur** (Middle): completes Challenge Triad with DA. The cluster benefits from absurdist reframes ("what if 47s is the *correct* length?").
- **Storyteller** (Middle): Q8 is an explicit Storyteller prompt ("write the complete narrative of a typical user's 47 seconds"). Plus Storyteller + Empath partially complete the Human-Centered Triad.
- **Constraint Flipper** (Middle): the metric *as a constraint to flip* (sessions are 47s — design for that) is the cluster's central provocation.

Cluster-family check: Challenge = 2 (DA, Provocateur, plus CF = 3 — at the cap, allowed); Human-Centered = 2 (Empath, Storyteller). OK.

### Cluster 03: Retention Diagnostics and the Activation Event

**Topic classification:** Technical/Product (cohort analysis, activation-event definition) with a portrait/narrative thread (Q11) and signal-in-the-wreckage analytical thread (Q12).

- **DA** / **Pragmatist** (core).
- **First Principles Thinker** (Inner / Strong Fit Technical): Q10 demands redefining what "retention" measures from first principles ("returned vs. helped").
- **Systems Thinker** (Inner / Good Fit Technical): cohort segmentation by acquisition channel × activation event is a system-mapping task; behavioral feedback loops in the 8% are systems questions.
- **Storyteller** (Middle): Q11 ("imagine one of them explaining to a friend") is an explicit Storyteller prompt.
- **Connector** (Middle): partially completes the External Perspectives Triad with Systems Thinker — bridges to structural parallels (other apps' activation-event definitions).
- **Analogist** (Middle): completes External Perspectives Triad. Activation events are well-studied in adjacent fields (onboarding flows in Duolingo, Slack's "10 messages" rule); concrete imports add value.

Cluster-family check: External Perspectives = 3 (full triad); Analytical Core = 2 (FPT, Pragmatist). OK.

### Cluster 04: The Passionate Minority Problem

**Topic classification:** User-Facing/Community + emotional. Q14 ("the difference between leaving and grieving"), Q15 (passionate user's story), Q13 (what's owed to users who built habits) — strongly human-centered. Q16 reframes niche devotion as product thesis (constraint-flip + visionary).

- **DA** / **Pragmatist** (core).
- **Empath** (Inner / Strong Fit User-Facing): Q14 is an explicit Empath prompt ("emotional texture of losing something they rely on").
- **Audience Advocate** (Inner / Strong Fit User-Facing): Q13 maps stakeholder constituencies (the meditation-guide user managing anxiety) and asks what's *owed* — classic AA framing.
- **Storyteller** (Middle): Q15 is an explicit Storyteller prompt; completes the Human-Centered Triad with Empath + AA.
- **Visionary** (Middle): Q16 reframes niche devotion as a *product thesis* — paradigm-shift question.
- **Constraint Flipper** (Middle): Q16's flip ("treated as retention problem → flipped, evidence of focused-product loyalty") is exactly CF's move.

Cluster-family check: Human-Centered = 3 (full triad); no other family ≥ 3. OK.

### Cluster 05: Feature-Selection Methodology and Decision Bias

**Topic classification:** Technical/Product (analytics methodology, Q17–Q19) + heavy Provocateur/Analogist load (Q24 triage, Q25 medicine, Q26 perverse excellence, Q27 destruction as research). The cluster mixes rigorous analytical questions with absurdist provocations.

- **DA** / **Pragmatist** (core).
- **First Principles Thinker** (Inner / Strong Fit Technical): Q17 is FPT-shaped ("how confident can the team be that low engagement reflects low value rather than poor implementation"); Q19 demands stating each feature's behavioral assumption.
- **Systems Thinker** (Inner / Good Fit Technical): Q21 ("the team is the product"), Q22 (8% as structural ceiling), Q24/Q25 are systems-level reframes.
- **Provocateur** (Middle): Q26 (perverse excellence) and Q27 (destruction as user research) are explicit Provocateur prompts. Completes Challenge Triad with DA.
- **Constraint Flipper** (Middle): Q22 (assume 8% is the ceiling and work backward), Q23 (users define the core, not the team) are constraint-flips.
- **Analogist** (Middle): Q24 (triage logic) and Q25 (medical diagnosis vs. symptom) are *already* analogical questions; Analogist amplifies and adds adjacent imports.

Cluster-family check: Challenge = 3 (DA, Provocateur, CF — full triad, at cap); Analytical Core = 2 (FPT, Pragmatist). OK.

### Cluster 06: Technical Entanglement and Removal Risks

**Topic classification:** Technical/Product + Systems. Dependency graphs, second-order effects, load-bearing code (Q29 walls, Q30 keystone species/trophic cascades) — system-mapping with rich cross-domain analogy already in the questions.

- **DA** / **Pragmatist** (core).
- **First Principles Thinker** (Inner / Strong Fit Technical): Q28 demands separating "removed from UI" from "removed from infrastructure" at the architectural-fundamentals level; Q31 asks what the codebase has been "voting for."
- **Systems Thinker** (Inner / Strong Fit Technical-systems): dependency graphs and cascading second-order effects are textbook Systems Thinker territory.
- **Connector** (Middle): Q29 (load-bearing walls vs. partition walls) and Q30 (keystone species, trophic cascades) are *already* connector prompts. Bridges to structural parallels.
- **Analogist** (Middle): completes External Perspectives Triad. Imports concrete architectural and ecological pruning playbooks.
- **Constraint Flipper** (Middle): Q31 reframes integration depth from a *risk* to be managed into a *signal* about the true core — classic CF move.

Cluster-family check: External Perspectives = 3 (full triad with Systems Thinker); Analytical Core = 2 (FPT, Pragmatist). OK.

### Cluster 07: Communicating the Reset to Existing Users

**Topic classification:** User-Facing/Community + emotional. The cluster's spine is communication, churn, and trust repair — Q34 (churn vs. harm), Q35 (trust repair, emotional credibility), Q36 (the email you dread writing), Q37 (first open after relaunch).

- **DA** / **Pragmatist** (core).
- **Empath** (Inner / Strong Fit User-Facing): Q34, Q35 are explicit Empath prompts (emotional credibility, what users *feel* on first open).
- **Audience Advocate** (Inner / Strong Fit User-Facing): Q32 maps stakeholder cohorts (2% DAU/MAU power users, niche-feature loyalists) and their differential vulnerability.
- **Storyteller** (Middle): Q36 (email to 180K users) and Q37 (first open after relaunch) are explicit Storyteller prompts. Completes Human-Centered Triad.
- **Provocateur** (Middle): Q38 (the hospice model — 30-day farewell window, public wake) is an explicit Provocateur prompt.
- **Constraint Flipper** (Middle): reframes "communicate to avoid churn" into "design the experience so the announcement *is* the relaunch's emotional center."

Cluster-family check: Human-Centered = 3 (full triad); Challenge = 2 (DA, Provocateur, plus CF = 3). Both at cap; OK.

### Cluster 08: Equity, Inclusion, and Whose Voice Shapes the Decision

**Topic classification:** User-Facing/Community with strong inclusion framing (Q39 accessibility, Q40 design-with-vs-design-for, Q41 the 92% and non-users, Q42 first-open shame underneath "overwhelming"). Touches systems thinking (whose voice is filtered out) but is fundamentally human-centered.

- **DA** / **Pragmatist** (core).
- **Audience Advocate** (Inner / Strong Fit User-Facing): Q39, Q40, Q41 are explicit AA prompts — mapping underserved cohorts, distinguishing "informants" from "co-decision-makers."
- **Empath** (Inner / Strong Fit User-Facing): Q42 is explicitly emotional ("shame underneath 'overwhelming'"); Q40 surfaces dignity dynamics.
- **Storyteller** (Middle): Q42 ("walk through the first-open moment, exactly which screen") is a lived-experience scene. Completes Human-Centered Triad.
- **Systems Thinker** (Middle): Q41 ("who is not in the data") is structurally a feedback-loop / sampling-bias question — which voices get filtered, which don't.
- **Connector** (Middle): bridges to inclusive-design playbooks from adjacent fields (public-health outreach, library service design, voter-registration access).

Cluster-family check: Human-Centered = 3 (full triad); External Perspectives = 2 (Systems Thinker, Connector). OK.

Politician was considered (governance/voice dynamics) but excluded — Q3 trap fires per the guide: "users with lower tech literacy" and "co-decision-makers" are inclusive-design and stakeholder-research framings, not multi-stakeholder political coalition design.

### Cluster 09: Team Capacity, Burnout, and the Build Itself

**Topic classification:** User-Facing emotional (treating the team as a user/stakeholder whose feelings shape outcomes — Q44 burnout's seepage, Q45 killing your darlings, Q47 team's proudest build, Q50 exhaustion as signal) + Implementation/Ops capacity questions.

- **DA** / **Pragmatist** (core).
- **Empath** (Inner / Strong Fit for emotional-user topics, where the "user" here is the team): Q44 (burnout's seepage into the work), Q45 (visceral reluctance, unresolved feelings) are Empath prompts.
- **Storyteller** (Inner / Strong Fit for lived-experience): Q51 ("the day the team stopped fighting the codebase") is an explicit Storyteller prompt; Q52 (manufacturing a founding moment) is narrative-shaped.
- **Audience Advocate** (Middle): completes Human-Centered Triad. Maps the team-as-stakeholder needs vs. user-as-stakeholder needs and the conflict between them (Q21's "team is the product").
- **Constraint Flipper** (Middle): Q49 ("burnout as a scope oracle") and Q50 ("exhaustion as signal, not problem") are explicit CF prompts.
- **Analogist** (Middle): Q52 is already analogical (Slack from a game studio, Instagram from Burbn) — Analogist amplifies and imports concrete pivot playbooks.

Cluster-family check: Human-Centered = 3 (full triad); no other family ≥ 3. OK.

### Cluster 10: Runway as a Design Constraint

**Topic classification:** Implementation/Ops + Strategic. Q53 treats runway as a churn-threshold gate (ops); Q54 and Q55 reframe the constraint as a creative brief (constraint-flip + visionary).

- **DA** / **Pragmatist** (core).
- **Constraint Flipper** (Inner / Strong Fit Implementation): Q54 and Q55 are explicit CF prompts ("rather than a fear-inducing deadline, treat it as a design constraint"; "use the tightness of the constraint as a design brief").
- **Momentum Builder** (Inner / Strong Fit Implementation): the cluster needs progressive elaboration of what *can* ship in 8 months given specific decision rules.
- **Simplifier** (Middle): completes the MB / Simplifier tension pair — the cluster is fundamentally about subtraction under deadline pressure.
- **Visionary** (Middle): Q54 ("does that product look like the simplified version you're already considering, or does it suggest something more radical?") is paradigm-shift framing.
- **Futurist** (Middle): completes Forward-Looking pair with Visionary. Q55's "next funding round" demands trend-grounded positioning of what investors will reward in 8 months.

Accountant was considered (runway = financial) but excluded per Phase 2A precedent: the cluster treats runway as a *design constraint*, not a financial-modeling exercise; Q3 trap fires (financial appears as background, not decision axis).

Cluster-family check: Progressive/Elaborative pair = 2 (MB, Simplifier); Forward-Looking = 2 (Visionary, Futurist); no family ≥ 3. OK.

### Cluster 11: Defining Success for the Simplified Product

**Topic classification:** Strategic/Vision + Technical/Product (metric design). Q56 demands separating bloated-architecture-artifact metrics from genuine simplification metrics (FPT). Q61 and Q62 are paradigm-shift / Visionary prompts ("retention is the wrong success frame"; "the app designed to be forgotten").

- **DA** / **Pragmatist** (core).
- **First Principles Thinker** (Inner / Strong Fit Strategic-via-deconstruction): Q56 explicitly asks "why do we assume the simplified product should be measured by the same DAU/MAU and retention metrics" — pure FPT.
- **Visionary** (Inner / Strong Fit Strategic): Q61 (success measure with no analog in current mobile benchmarks) and Q62 (designed to be forgotten) are paradigm-shift prompts.
- **Futurist** (Middle): completes Forward-Looking pair. Q58 (notification-permission shifts, focus modes) is explicitly trend-grounded.
- **Provocateur** (Middle): Q62 ("deliberately unmemorable — no notifications, no streaks, no hooks") is absurdist provocation; completes Challenge Triad with DA.
- **Empath** (Middle): Q59 is an explicit Empath prompt ("'I opened the app and felt good about it'… centering user-experienced success").

Cluster-family check: Forward-Looking = 2; Challenge = 2 (DA, Provocateur); Analytical Core = 2 (FPT, Pragmatist); no family ≥ 3. OK.

### Cluster 12: Strategic Positioning, Category Trajectory, and Relaunch Timing

**Topic classification:** Strategic/Vision + heavy trend grounding (Q63 digital minimalism, Q65 wearable readiness / API-first health, Q66 social-fitness behavior shifts, Q67 seasonal attention windows, Q70 niche-vs-generalist ecology). Strongest Futurist cluster in the session.

- **DA** / **Pragmatist** (core).
- **Futurist** (Inner / Strong Fit Strategic-trend): Q63, Q64, Q65, Q66, Q67 are all explicit Futurist prompts (named platform trends, named APIs, observable seasonal patterns).
- **Visionary** (Inner / Strong Fit Strategic): Q68 (the feature graveyard as positioning asset) and Q70 (which question — "feature users love" vs. "niche competitors left open" — is the right one) are paradigm-shift.
- **Connector** (Middle): Q70 (ecology — generalist vs. specialist species) is an explicit Connector prompt.
- **Analogist** (Middle): completes External Perspectives Triad. The cluster invites concrete imports (Strava's running clubs, MyFitnessPal's consolidation pattern, intentional-use app design language).
- **Systems Thinker** (Middle): completes the External Perspectives Triad. Category consolidation dynamics, seasonal acquisition cycles, and wearable-ecosystem feedback loops are systems questions.

Cluster-family check: External Perspectives = 3 (full triad); Forward-Looking = 2 (Futurist, Visionary). OK.

### Cluster 13: First Steps and Experiments Worth Running

**Topic classification:** Implementation/Ops (Q71 the experiment worth running this month, with concrete 30-day scope) + Strategic/Vision in the celebration framing (Q72 18-month product, Q73 subtraction as a new category).

- **DA** / **Pragmatist** (core).
- **Momentum Builder** (Inner / Strong Fit Implementation): Q71 demands progressive elaboration ("smallest, fastest experiment in the next 30 days").
- **Constraint Flipper** (Inner / Good Fit Implementation): the existing skills, codebase, and engaged users are constraints to be reframed as a launch surface.
- **Simplifier** (Middle): completes MB / Simplifier tension pair. Q73 (subtraction as a new category) is explicit Simplifier territory.
- **Storyteller** (Middle): Q72 ("imagine a user 12 months from now… what is she doing every week, what would she tell a friend") is an explicit Storyteller prompt.
- **Visionary** (Middle): Q73 (relaunch as inventing an entirely new category defined by what it refuses to do) is paradigm-shift.

Cluster-family check: Progressive/Elaborative pair = 2 (MB, Simplifier); no family ≥ 3. OK.

## Quality Gate Verification

- [x] All 13 topic clusters assigned exactly 7 personas
- [x] Devil's Advocate present in every cluster
- [x] Pragmatist present in every cluster
- [x] No retired personas selected (Questioner, Analyst, Synthesizer all absent)
- [x] No cluster exceeds 3 personas from a single cluster family
- [x] Outer-ring personas (Lawyer, Accountant, Politician) used only when genuinely warranted — none selected; the cluster guidance from Phase 2A excluded Lawyer, Accountant, and Politician at the topic level, and per-cluster review here confirms no cluster has a stronger trigger than the REQUEST as a whole.
