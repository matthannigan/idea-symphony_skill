---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/high"
date: 2026-04-22
effort: high
stage: "Phase 2 Step 2.4: Brainstorming Persona Selection"
model-requested: opus
model-reported: claude-opus-4-7
---

# Phase 2.4 Brainstorming Persona Selection — High Effort

Each topic cluster receives 7 personas: Core (Devil's Advocate ★ + Pragmatist ★) + Inner Ring (2 topic-matched) + Middle Ring cluster completers (3). Retired personas (Questioner, Analyst, Synthesizer) are excluded. Family-balance constraint: no more than 3 personas from the same cluster family per topic.

## Summary Table

| # | Cluster | Personas (★ = core) |
|---|---------|---------------------|
| 01 | First Principles and the Job-to-Be-Done | Devil's Advocate ★, Pragmatist ★, First Principles Thinker, Visionary, Provocateur, Analogist, Simplifier |
| 02 | Differentiation and Positioning in a Crowded Market | Devil's Advocate ★, Pragmatist ★, Visionary, Futurist, Systems Thinker, Constraint Flipper, Analogist |
| 03 | Monetization and the Freemium Gate | Devil's Advocate ★, Pragmatist ★, Accountant, Audience Advocate, Futurist, Empath, Constraint Flipper |
| 04 | Streak Anxiety, Grace Mechanics, and the Emotional Interior | Devil's Advocate ★, Pragmatist ★, Empath, Storyteller, Audience Advocate, Provocateur, Analogist |
| 05 | Behavioral Science as Architecture vs. Framing | Devil's Advocate ★, Pragmatist ★, First Principles Thinker, Visionary, Analogist, Provocateur, Systems Thinker |
| 06 | Notifications, Attention, and Trust Infrastructure | Devil's Advocate ★, Pragmatist ★, Audience Advocate, Empath, Futurist, Analogist, Constraint Flipper |
| 07 | The Weekly Review as Keystone Habit | Devil's Advocate ★, Pragmatist ★, Empath, Storyteller, Audience Advocate, Simplifier, Momentum Builder |
| 08 | Check-In Speed and the Partial-Logging Dilemma | Devil's Advocate ★, Pragmatist ★, Technical Expert, Simplifier, Storyteller, Empath, Constraint Flipper |
| 09 | Local-First Architecture, Data Sovereignty, and Sync Conflict | Devil's Advocate ★, Pragmatist ★, Technical Expert, First Principles Thinker, Systems Thinker, Futurist, Analogist |
| 10 | Access, Inclusion, and the Returner's Emotional Landscape | Devil's Advocate ★, Pragmatist ★, Empath, Audience Advocate, Storyteller, Visionary, Analogist |
| 11 | Inactive Users, Drift, and What Success Actually Means | Devil's Advocate ★, Pragmatist ★, Empath, Visionary, Storyteller, Audience Advocate, Futurist |

---

## Per-Cluster Rationale

### Cluster 01 — First Principles and the Job-to-Be-Done

- **Topic classification:** Grounding / ideation. The cluster interrogates what a habit tracker fundamentally is, whether the PRD's diagnosis is correct, and what a minimum viable behavioral intervention would look like. This is "strip to fundamentals and rebuild" territory.
- **Inner Ring picks:**
  - **First Principles Thinker** — the cluster literally asks "rebuilt from the literature," "strip away the app entirely," "interrogate what a habit tracker fundamentally is." FPT is the primary instrument for this question set.
  - **Visionary** — Q1.1 and Q1.2 ("if you started only from behavioral science literature," "if the product were designed around deciding rather than tracking") call for paradigm-shifting reframes, not incremental critique.
- **Middle Ring cluster completers:**
  - **Provocateur** — completes the Challenge Triad (DA + Provocateur + CF family); Q1.2 and Q1.3 benefit from absurdist reframes about whether the product itself is the wrong unit of analysis. DA critiques assumptions; Provocateur generates alternatives the PRD would never propose.
  - **Analogist** — this cluster asks "what would you build if you started from habit-formation research rather than existing products" — a cross-domain import question. Analogist fetches concrete structures from behavior-change literature, memory prosthetics research, commitment-device design.
  - **Simplifier** — Q1.4 ("minimum viable behavioral intervention… if you removed every feature not strictly necessary") is a subtractive prompt by construction. Simplifier pairs in productive tension with Momentum Builder; for this cluster the subtractive half is what the questions demand.
- **Family-balance check:** Analytical (Pragmatist, FPT) = 2. Challenge (DA, Provocateur) = 2. External Perspectives (Analogist) = 1. Forward-Looking (Visionary) = 1. Progressive/Elaborative (Simplifier) = 1. No family exceeds 3. ✅

### Cluster 02 — Differentiation and Positioning in a Crowded Market

- **Topic classification:** Strategic / vision. Questions about moats, positioning windows, inverse onboarding, absurd inversions ("what if the app got worse the longer you used it"), timing against converging incumbents.
- **Inner Ring picks:**
  - **Visionary** — Q2.4 (inverse onboarding), Q2.5 (app getting worse with use), Q2.6 (feature floor as selling point) are paradigm-shift territory.
  - **Futurist** — Q2.3 explicitly asks "within what timeframe does explicitly anti-gamification positioning become crowded," which is trend extrapolation. Q2.1's "2–3 year horizon" and Q2.7's platform-gap framing also require trend grounding.
- **Middle Ring cluster completers:**
  - **Systems Thinker** — Q2.1 asks what becomes the actual moat (data model, community, compounding brand reputation) once the surface framework is table stakes; that is internal-system-dynamics analysis. Completes External Perspectives pairing with Analogist.
  - **Constraint Flipper** — Q2.6 ("the feature floor as a selling point") and Q2.7 ("turning the platform gap into a positioning advantage") are textbook constraint-as-opportunity reframes. Completes the Challenge Triad with DA + CF.
  - **Analogist** — Q2.4 imports from Notion/Linear and chef's-knife/instrument mastery; Q2.2 from notes apps, paper journals, recurring reminders. The cluster is saturated with cross-domain prompts.
- **Family-balance check:** Forward-Looking (Visionary, Futurist) = 2. Challenge (DA, CF) = 2. External (Systems Thinker, Analogist) = 2. Analytical (Pragmatist) = 1. No family exceeds 3. ✅

### Cluster 03 — Monetization and the Freemium Gate

- **Topic classification:** Financial/business with strong human-centered overlay. PRD names specific prices ($3/mo, $24/yr), conversion targets (5% of D30), tier structures (3-habit cap, weekly-review gating), cost-per-active-user curves at 1K/10K/100K, and subscription-vs-lifetime tradeoffs. This is a genuine Accountant trigger — not the birthday-party anti-pattern.
- **Inner Ring picks:**
  - **Accountant** — business-model architecture (tier design, cannibalization, cost-per-user curves, lifetime-vs-subscription cash-flow profiles) is the literal subject of Q3.1, Q3.3, and Q3.4.
  - **Audience Advocate** — Q3.1, Q3.2, Q3.5, Q3.6, Q3.7 repeatedly ask what the ceiling *feels like to different user segments* (users with fewer resources, graduated users, re-acquired users, would-be advocates turned bitter). This is needs-mapping across stakeholder segments.
- **Middle Ring cluster completers:**
  - **Futurist** — Q3.3 explicitly invokes "subscription fatigue as an accelerating consumer trend," App Store "lifetime" search behavior, platform gatekeepers tightening take-rates. Trend-grounded positioning is the Futurist's lane.
  - **Empath** — Q3.5 ("what does it feel like to hit that wall?") and Q3.1's "ceiling moment" design are purely emotional-texture questions. Empath + AA provides Human-Centered pairing without overloading the family.
  - **Constraint Flipper** — Q3.6 (inverted razor-and-blades: paid tier *removes* rather than *adds*) is a canonical constraint flip. Completes Challenge Triad with DA + CF.
- **Family-balance check:** Human-Centered (AA, Empath) = 2. Challenge (DA, CF) = 2. Analytical (Pragmatist) = 1. Outer-Ring (Accountant) = 1. Forward-Looking (Futurist) = 1. No family exceeds 3. ✅

### Cluster 04 — Streak Anxiety, Grace Mechanics, and the Emotional Interior

- **Topic classification:** Human-centered (emotional interior of users who have already failed elsewhere). Explicit cues: "what streak anxiety actually feels like," "the shame mirror," "the narrative the app tells about you," "walk through what happens the first time a committed user misses a day."
- **Inner Ring picks:**
  - **Empath** — the cluster is almost entirely about emotional texture (dread, bargaining, shame, relief, identity narrative). This is Empath's home turf.
  - **Storyteller** — Q4.4 ("tell me about a time when…"), Q4.7 ("walk through… the first time a committed user misses a day"), Q4.10 (narrative day-47 reframes) are named-character, lived-experience prompts.
- **Middle Ring cluster completers:**
  - **Audience Advocate** — completes the Human-Centered Triad (Empath + AA + Storyteller). Distinguishes between user subpopulations who experience streak anxiety differently (perfectionists, the recently-relapsed, those in active shame spirals).
  - **Provocateur** — Q4.5 (celebrate *misses* not hits) and Q4.6 (recovery as central metaphor, not consistency) are absurdist provocations. Completes Challenge Triad with DA + Provocateur.
  - **Analogist** — Q4.8 imports physical-therapy adherence protocols; Q4.9 imports bird-migration redundant-signal architectures. The cluster actively invites cross-domain structural imports.
- **Family-balance check:** Human-Centered (Empath, Storyteller, AA) = 3 (at limit, permitted). Challenge (DA, Provocateur) = 2. External (Analogist) = 1. Analytical (Pragmatist) = 1. No family exceeds 3. ✅

### Cluster 05 — Behavioral Science as Architecture vs. Framing

- **Topic classification:** Strategic / novel-ambiguous. Questions whether the cue/routine/reward model is load-bearing architecture or marketing surface, whether anti-gamification is principled or reflexive, and whether the product should invent a new motivational paradigm ("witnessing, or ritual recognition").
- **Inner Ring picks:**
  - **First Principles Thinker** — Q5.1 asks for "minimal implementation that adds genuine behavioral value" and whether the architecture rebuilt with behavioral science as load-bearing structure would be different. Q5.3 questions fundamental assumptions about what "better" means.
  - **Visionary** — Q5.4 (track the person, not the habit — identity-state data model) and Q5.5 (invent a new psychological contract — "witnessing, or ritual recognition") are explicit paradigm-shift prompts.
- **Middle Ring cluster completers:**
  - **Analogist** — Q5.6 imports from variable-ratio reinforcement research, slot machines, athletic periodization, animal training. The cluster is explicitly cross-domain.
  - **Provocateur** — Q5.4 and Q5.5 are provocateur-shaped (erase outcomes, invent new paradigms). Completes Challenge Triad with DA + Provocateur.
  - **Systems Thinker** — Q5.1 "data modeling, notification timing, recovery flows, review prompts… rebuilt with behavioral science as load-bearing structure" is a product-architecture-as-system prompt. Paired with Analogist completes External Perspectives coverage.
- **Family-balance check:** Analytical (Pragmatist, FPT) = 2. Challenge (DA, Provocateur) = 2. External (Analogist, Systems Thinker) = 2. Forward-Looking (Visionary) = 1. No family exceeds 3. ✅

### Cluster 06 — Notifications, Attention, and Trust Infrastructure

- **Topic classification:** Mixed — user-facing/community (opinion vs. projection onto diverse users, trust contract) with a systems/trend overlay (declining opt-in rates, pull-based pivots).
- **Inner Ring picks:**
  - **Audience Advocate** — Q6.1 is explicitly about whether "opinionated minimal" serves the target user or projects developer preferences onto a diverse population. Needs-mapping across user segments is exactly AA's lane.
  - **Empath** — Q6.1's "what does a pre-set two-notification model feel like to users who've been burned — relief, or a different kind of paternalism," and Q6.2's slow-burn dependency are emotional-texture prompts.
- **Middle Ring cluster completers:**
  - **Futurist** — Q6.3 names "iOS and Android opt-in rates declining year over year, notification permissions tightening" and pull-based engagement models (widgets, watch complications) "before competitors do." Trend-grounded horizon reading.
  - **Analogist** — Q6.4 explicitly imports weather-alert tiering and city-siren credibility loss. The cluster asks for cross-domain signal-ecology analogues.
  - **Constraint Flipper** — Q6.5 reframes the two-notification cap as a *public covenant* (constraint-as-feature). Completes Challenge Triad with DA + CF.
- **Family-balance check:** Human-Centered (AA, Empath) = 2. Challenge (DA, CF) = 2. Forward-Looking (Futurist) = 1. External (Analogist) = 1. Analytical (Pragmatist) = 1. No family exceeds 3. ✅

### Cluster 07 — The Weekly Review as Keystone Habit

- **Topic classification:** Mixed — refinement (is the review a genuine wedge or ritual-without-function?) plus human-centered (how to design a Sunday experience users look forward to).
- **Inner Ring picks:**
  - **Empath** — Q7.2 ("the review as mirror, not report") and Q7.3 ("a small, grounding ritual rather than a chore") are emotional-texture-of-reflection prompts.
  - **Storyteller** — Q7.3 ("what would users say about it to a friend") and Q7.4 ("picture a user sitting down Sunday evening… moment to moment") are named-character narrative prompts.
- **Middle Ring cluster completers:**
  - **Audience Advocate** — Q7.2 asks about users who've struggled with perfectionism or self-criticism; different user segments experience review differently. Completes Human-Centered Triad with Empath + Storyteller.
  - **Simplifier** — Q7.1 asks whether, if we can't articulate a behavioral function the review serves, we're "building a feature or a ritual" — a subtractive prompt. The PRD gives only 3 minutes on a Sunday; minimal structure that earns its place is the Simplifier's question.
  - **Momentum Builder** — Q7.3 (aspirational) and Q7.4 (narrative of the ritual that users look forward to) are progressive-elaboration prompts — what does this become at its best? Pairs with Simplifier in productive tension (expand vs. strip).
- **Family-balance check:** Human-Centered (Empath, Storyteller, AA) = 3 (at limit, permitted; cluster is strongly human-centered). Progressive/Elaborative (MB, Simplifier) = 2 productive tension pair. Analytical (Pragmatist) = 1. Challenge (DA) = 1. No family exceeds 3. ✅

### Cluster 08 — Check-In Speed and the Partial-Logging Dilemma

- **Topic classification:** Technical/product with strong human-centered overlay. Q8.1 is timed-prototype/web-vs-native architecture (TE trigger); Q8.3 and Q8.4 are emotional-texture narratives about users logging under duress or with partial completion.
- **Inner Ring picks:**
  - **Technical Expert** — Q8.1 explicitly asks about "network latency, UI rendering, interaction steps, user decision time… mid-range Android devices on 4G… PWA cold-start times, sync round-trips, absent haptic feedback." This is concrete implementation-specifics territory.
  - **Simplifier** — Q8.5 ("the app was invisible for 23 hours and 50 minutes a day… a single 10-second interaction") is explicitly subtractive. Partial-logging UI also begs the Simplifier's "what would we remove?" question.
- **Middle Ring cluster completers:**
  - **Storyteller** — Q8.3 ("imagine a user pulling out their phone between meetings, in a loud hallway, on two hours of sleep") and Q8.4 (the 15-minute partial log narrative) are named-character scenarios.
  - **Empath** — Q8.1 asks what the user should *feel* during the 10-second interaction; Q8.2 asks whether "partial" feels like publicly confessing inadequacy. Pairs with Storyteller for human-centered coverage without filling the triad.
  - **Constraint Flipper** — the <10s requirement plus web-first plus absent haptics is a constraint stack; Q8.5 reframes the constraint (invisible 23h50m) as the core value. Completes Challenge Triad with DA + CF.
- **Family-balance check:** Analytical (Pragmatist, TE) = 2. Human-Centered (Empath, Storyteller) = 2. Challenge (DA, CF) = 2. Progressive/Elaborative (Simplifier) = 1. No family exceeds 3. ✅

### Cluster 09 — Local-First Architecture, Data Sovereignty, and Sync Conflict

- **Topic classification:** Technical/product. CRDT libraries, last-write-wins conflict policy, cost-per-active-user curves, offline measurement tension. Primary frame is engineering architecture with a trust-signal surface.
- **Inner Ring picks:**
  - **Technical Expert** — Q9.1 names "CRDT libraries like Automerge and Y.js"; Q9.2 is explicitly a conflict-resolution-policy prompt ("last-write-wins acceptable for habit tracking or does every conflict matter"). Pure implementation-specifics.
  - **First Principles Thinker** — Q9.1 asks "what decisions change if we commit now rather than treating it as nice-to-have" and how to resolve the architectural tension before a painful pivot. Deconstructs the "feasible if possible" hedge.
- **Middle Ring cluster completers:**
  - **Systems Thinker** — Q9.1's measurement-vs-privacy tension, multi-device conflict flows, and Q9.4's "bike path" structural-dedicated-lane framing are all internal-system-dynamics analysis.
  - **Futurist** — Q9.1 names infrastructure maturing "within 2–3 years" and privacy regulation expanding, shifting local-first "from engineering choice to marketable trust signal." Explicit trend extrapolation.
  - **Analogist** — Q9.4 imports dedicated bike-lane urban-planning framing as structural analogy. Completes External Perspectives with Systems Thinker. Pragmatist handles cost-per-user feasibility from the Analytical side, so Accountant is not added (avoids a 4th analytical-family persona and an outer-ring redundancy).
- **Family-balance check:** Analytical (Pragmatist, TE, FPT) = 3 (at limit — permitted because the cluster is strongly technical-analytical). External (Systems Thinker, Analogist) = 2. Forward-Looking (Futurist) = 1. Challenge (DA) = 1. No family exceeds 3. ✅

### Cluster 10 — Access, Inclusion, and the Returner's Emotional Landscape

- **Topic classification:** Human-centered with strategic-vision overlay. Q10.1–10.6 are emotional-texture/lived-experience prompts; Q10.7 and Q10.8 are paradigm-shift prompts ("living system, not a log"; "pioneer a new vocabulary").
- **Inner Ring picks:**
  - **Empath** — Q10.1 ("scar-tissue carrier… disappointed self-knowledge that lives in their body"), Q10.2 ("invisible but present on a hard day"), Q10.6 ("previous app ghost") are explicitly emotional-resonance prompts.
  - **Audience Advocate** — Q10.3 (literacy, language, hustle-culture bounce) and Q10.4 (parents as secondary users with different accountability loops) are needs-mapping across stakeholder segments.
- **Middle Ring cluster completers:**
  - **Storyteller** — Q10.5 ("imagine a user named Maya who downloads the app on a Monday… day 47 compared to day 2") and Q10.9 ("think about a habit you've successfully maintained") are named-character narrative prompts. Completes Human-Centered Triad.
  - **Visionary** — Q10.7 ("living system, not a log") and Q10.8 ("pioneer an entirely new vocabulary and structure for intentional behavior change") are paradigm-shift prompts.
  - **Analogist** — the cluster spans literacy research, mental-health accommodation, parent-child behavior monitoring, and identity-formation theory — distinct domains benefiting from cross-field imports. Also essential for Q10.8 ("something that doesn't yet have a name in the self-improvement canon" invites imports from practices like meditation, recovery communities, spiritual direction).
- **Family-balance check:** Human-Centered (Empath, AA, Storyteller) = 3 (at limit, permitted — cluster is strongly human-centered). Forward-Looking (Visionary) = 1. External (Analogist) = 1. Analytical (Pragmatist) = 1. Challenge (DA) = 1. No family exceeds 3. ✅

### Cluster 11 — Inactive Users, Drift, and What Success Actually Means

- **Topic classification:** Mixed — human-centered (dignity-preserving re-engagement, shame-free ghost population handling) plus strategic (product-success vs. user-success definitions, graduation as success).
- **Inner Ring picks:**
  - **Empath** — Q11.1 ("re-opening an abandoned app is an act of vulnerability… preserve a drifting user's dignity"), Q11.5 (emotional texture of the two-year data artifact) are emotional-resonance prompts.
  - **Visionary** — Q11.6 ("designed the app to make quitting effortless"), Q11.7 (competitors' users right to churn — graduation as success), Q11.8 ("built for who the user will be on day 300, not day one"), Q11.9 ("dissolve into life rather than competing for attention"), Q11.10 (data as autobiography, not log) are all paradigm-shift prompts.
- **Middle Ring cluster completers:**
  - **Storyteller** — Q11.3 ("six months after launch and a user writes in to describe how the app quietly helped them through a difficult period") and Q11.5 (two-year CSV export moment) are named-character narrative prompts.
  - **Audience Advocate** — Q11.1 distinguishes "silently succeeding / lapsed-and-ashamed / forgot" subpopulations and Q11.2 asks about distinct subpopulations within "bounced from prior apps" (streak anxiety, notification fatigue, feature overload, losing motivation). Needs-mapping across segments. Completes Human-Centered Triad.
  - **Futurist** — Q11.7 reframes habit tracking as "transitional scaffold, not a permanent tool" — a trend-grounded claim about where the category is going. Q11.2's segmentation also benefits from trend extrapolation about which failure modes grow over time.
- **Family-balance check:** Human-Centered (Empath, Storyteller, AA) = 3 (at limit, permitted). Forward-Looking (Visionary, Futurist) = 2. Analytical (Pragmatist) = 1. Challenge (DA) = 1. No family exceeds 3. ✅

---

## Cross-Cluster Notes

- **Devil's Advocate and Pragmatist** appear on every cluster as required by the core constraint.
- **No retired personas** (Questioner, Analyst, Synthesizer) selected on any cluster.
- **Outer-ring restraint:** Accountant is selected only on Cluster 03, where the PRD provides concrete unit economics, tier structures, cost-per-active-user curves, and explicit subscription/lifetime/conversion questions. Lawyer is not selected anywhere (no named regulatory framework — GDPR/CCPA/HIPAA — beyond design-preference privacy statements, per the Phase 2A exclusion rationale). Politician is not selected anywhere (solo-dev product with end users, no stakeholder-governance dynamics).
- **Family-balance constraint satisfied on every cluster.** Clusters 04, 07, 09, 10, and 11 sit at the 3-of-same-family limit (Human-Centered Triad on 04/07/10/11; Analytical Core on 09), all intentional and permitted.
- **Analogist appears on 7 of 11 clusters** — justified by the PRD's explicit invitation of cross-domain imports (physical therapy, bird migration, variable-ratio reinforcement, enterprise tools, bike-lane urban planning, weather-alert tiering). The cluster-level question synthesizers leaned heavily on analogical scaffolding, and the Analogist delivers the most value where problem spaces are novel or multi-domain.
