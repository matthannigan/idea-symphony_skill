---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: "2026-04-27"
effort: "medium"
stage: "Phase 2 Step 2.4: Brainstorming Persona Selection"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Brainstorming Persona Selections: Feature-Bloated Mobile App MVP Reset

**Effort:** medium → 4 personas per cluster: Core (Devil's Advocate + Pragmatist) + 2 topic-matched Inner Ring personas.

**Cluster-family cap check:** No cluster exceeds 3 personas from any single cluster family. Pragmatist (Analytical Core) is the only Analytical Core member used per topic, so the Analytical-family count never exceeds 1. All other selections diversify across Human-Centered, External Perspectives, Forward-Looking, Challenge, and Tension-Pair families.

---

## Summary Table

| # | Topic Cluster | Persona 1 (Core) | Persona 2 (Core) | Persona 3 (Inner Ring) | Persona 4 (Inner Ring) |
|---|--------------|------------------|------------------|------------------------|------------------------|
| 01 | Diagnosing the Real Problem | Devil's Advocate | Pragmatist | First Principles Thinker | Empath |
| 02 | Reading Feature Signals | Devil's Advocate | Pragmatist | Simplifier | Systems Thinker |
| 03 | The Passionate Minority | Devil's Advocate | Pragmatist | Audience Advocate | Empath |
| 04 | The Cut Decision — Framework and Authority | Devil's Advocate | Pragmatist | Visionary | Simplifier |
| 05 | Removal Mechanics and Relaunch Approach | Devil's Advocate | Pragmatist | Constraint Flipper | Momentum Builder |
| 06 | Communication and the Existing User Ecosystem | Devil's Advocate | Pragmatist | Storyteller | Empath |
| 07 | Team Dynamics and the Psychology of Cutting | Devil's Advocate | Pragmatist | Empath | Systems Thinker |
| 08 | Strategic Identity After the Cut | Devil's Advocate | Pragmatist | Visionary | Analogist |
| 09 | Redefining Success for the Focused Product | Devil's Advocate | Pragmatist | Visionary | Audience Advocate |

---

## Per-Cluster Selections and Rationale

### Topic Cluster 01: Diagnosing the Real Problem

**Topic classification:** Strategic/Vision with strong User-Facing undertones. The cluster questions whether the diagnosis itself ("feature overload causes 8% retention") is correct — this requires deconstruction to fundamentals plus emotional fidelity to the abandonment moment.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Strong fit: this cluster *is* a critique exercise — questioning whether the data is contaminated, whether the diagnosis is misframed, whether retention is even the right target. |
| **Pragmatist** | Analytical (core) | Mandatory. Grounds the diagnostic exercise in cheap, near-term tests ("what would it take to tell those diagnoses apart cheaply") rather than infinite re-framing. |
| **First Principles Thinker** | Analytical | The cluster's central question — "why do we assume feature overload is the cause?" — is a textbook FPT prompt: deconstruct the problem to fundamentals before accepting the team's framing. Strong fit for Strategic/Vision topics. |
| **Empath** | Human-Centered | Q2 ("the 47-second abandonment moment"), Q5 ("Maya's overwhelm"), and Q3 ("the absent voice") are all emotional-sequence questions. Empath operates on the felt experience of confusion and retreat. |

**Cluster-family check:** Analytical = 2 (Pragmatist, FPT), Challenge = 1, Human-Centered = 1. Cap of 3-per-family respected. FPT + Pragmatist together is acceptable here because the diagnostic frame genuinely needs both fundamentals-deconstruction and feasibility-grounding; Technical Expert is deliberately not added (would push Analytical to 3 and the topic isn't engineering-architectural).

---

### Topic Cluster 02: Reading Feature Signals

**Topic classification:** Technical/Product. The cluster is about distinguishing genuine signal from noise in usage data, isolating discoverability failure from feature value, and finding "desire paths" in session flows.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Critical for the "core feature vs. least-annoying feature" distinction in Q7 — DA is the one who refuses to let habit-loop inertia masquerade as value. |
| **Pragmatist** | Analytical (core) | Mandatory. Grounds the data-interpretation work in what can actually be measured given current instrumentation. |
| **Simplifier** | Tension Pair | Strong fit for Technical/Product topics. The cluster is fundamentally about subtraction — which signals are real vs. noise, which 8% behavior actually matters. Simplifier's subtractive instinct is exactly the lens this cluster needs. |
| **Systems Thinker** | External Perspectives | Q9 (desire paths) explicitly asks for session flows mapped as a system; Q7 asks how discoverability and feature value interact. Systems Thinker is "good fit" for Technical/Product per the affinity matrix and is the right lens for treating usage data as emergent behavior of a complex product system. |

**Cluster-family check:** Analytical = 1, Challenge = 1, Tension Pair = 1, External Perspectives = 1. Maximally diverse. Avoided stacking Technical Expert + FPT + Pragmatist (the affinity-matrix anti-pattern of analytical convergence).

---

### Topic Cluster 03: The Passionate Minority

**Topic classification:** User-Facing/Community with an ethical-obligation thread. Centers on small but devoted user bases, the ethics of cutting features they love, and whether they signal a different product entirely.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q10 explicitly asks for the "structural trap" critique — vocal advocacy inflating perceived value. DA is built for that. |
| **Pragmatist** | Analytical (core) | Mandatory. Q10 asks for a "quantitative threshold" — Pragmatist supplies the feasible cutoff rule rather than open-ended philosophizing. |
| **Audience Advocate** | Human-Centered | Strong fit for User-Facing/Community. The cluster is *about* mapping stakeholder segments — what does the passionate minority actually need, and are they a separate user archetype (Q12)? AA does that mapping. |
| **Empath** | Human-Centered | Q11 ("ethical obligation to the loyal few") is a felt-experience question, not a segmentation question. Empath supplies the gut-level resonance that AA's structural mapping lacks. |

**Cluster-family check:** Analytical = 1, Challenge = 1, Human-Centered = 2. Cap of 3-per-family respected. Both Human-Centered picks add distinct value (AA = structural needs mapping; Empath = felt obligation), per the cluster guide which says "any 2 of 3 provides good coverage" on strongly human-centered topics.

---

### Topic Cluster 04: The Cut Decision — Framework and Authority

**Topic classification:** Strategic/Vision with Implementation overlap. The cluster is about building a defensible scoring model, choosing decision authority, and running cheap experiments — strategy meeting execution.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q14-Q15 are explicitly about defensibility — DA stress-tests "by whose standard" and exposes when scoring weights are post-hoc rationalization. |
| **Pragmatist** | Analytical (core) | Mandatory. Q16 ("smallest proof of concept in two weeks") is pure Pragmatist territory. |
| **Visionary** | Forward-Looking | Strong fit for Strategic/Vision. Q19 ("the one thing that changes everything — what new category of product does that single interaction define?") and Q17 (Michelin-kitchen reframe) are paradigm-shift questions, not trend extrapolations. Visionary > Futurist here because the topic asks what the product *should become*, not where the market is going. |
| **Simplifier** | Tension Pair | Q18 ("designing for deletion") and Q19 ("reduce to a single interaction") are subtractive thought experiments. Simplifier provides productive tension against Visionary's expansive paradigm-shift framing — the MB/Simplifier tension pair is explicitly recommended for "anything that might suffer from feature creep." |

**Cluster-family check:** Analytical = 1, Challenge = 1, Forward-Looking = 1, Tension Pair = 1. Maximally diverse.

---

### Topic Cluster 05: Removal Mechanics and Relaunch Approach

**Topic classification:** Implementation/Ops with Technical undertones. The cluster is about engineering cost of incremental sunset vs. clean break, codebase entanglement, runway-dip risk, and the partial-simplification trap.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q20-Q22 are full of failure modes (load-bearing walls, partial-simplification trap, recovery dip consuming the runway) — DA names the risks the team will be tempted to wave away. |
| **Pragmatist** | Analytical (core) | Mandatory. Q21's "estimated engineering cost difference (in person-weeks)" is exactly Pragmatist's lane. |
| **Constraint Flipper** | Challenge | Strong fit for Implementation/Ops. Q21's "third path" question (parallel legacy version, framing relaunch as a bold upgrade not a retreat) is the classic CF reframe — turning the 8-month runway and codebase entanglement *into* design features rather than treating them as obstacles. |
| **Momentum Builder** | Tension Pair | Strong fit for Implementation/Ops. The cluster needs progressive elaboration of the relaunch sequence: what happens in week 1, week 4, month 3 of the recovery dip. MB builds the forward-motion plan that Pragmatist scopes and DA stress-tests. |

**Cluster-family check:** Analytical = 1, Challenge = 2 (DA + CF), Tension Pair = 1. Cap of 3-per-family respected. Both Challenge picks add distinct value: DA critiques; CF reframes.

---

### Topic Cluster 06: Communication and the Existing User Ecosystem

**Topic classification:** User-Facing/Community. Strongly human-centered: 180K existing users, anticipatory churn, disrupted routines, notification overload as accessibility issue, and the ceremonial relaunch ritual.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q23 explicitly asks how the message could be "experienced as betrayal" — DA is the persona who anticipates how communication backfires. |
| **Pragmatist** | Analytical (core) | Mandatory. Q23 asks for sequencing and timing of communication — Pragmatist scopes what the team can actually execute with 1 PM and 1 designer. |
| **Storyteller** | Human-Centered | Strong fit. Q27 ("Marcus and his eight months of meal logs") and Q28 ("two characters in a short film") are explicitly named-character narrative questions — Storyteller's exact strength. |
| **Empath** | Human-Centered | Strong fit. Q24 (emotional experience of routine disruption) and Q25 (notification overload as accessibility barrier for ADHD/anxiety users) are felt-experience questions about cognitive and emotional loss, not narrative scenes. Empath catches what Storyteller's character framing might miss. |

**Cluster-family check:** Analytical = 1, Challenge = 1, Human-Centered = 2. Cap respected. Audience Advocate deliberately not added — would push Human-Centered to 3 and is partially redundant with Empath here; the cluster guide explicitly says "any 2 of 3 provides good coverage."

---

### Topic Cluster 07: Team Dynamics and the Psychology of Cutting

**Topic classification:** User-Facing (team-as-user) with Strategic/Systems overlap. The cluster treats the burned-out team as the central stakeholder, with explicit systems-dynamics framing (Q30's burnout-feature-creep loop, Q33's Toyota Production System parallel).

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q29 explicitly raises the framing risk ("strategic clarity vs. failure acknowledgment") — DA examines how the cut signal lands on a burned-out team. |
| **Pragmatist** | Analytical (core) | Mandatory. Q30's "which intervention breaks the cycle — cutting features, or first restoring team capacity?" is a sequencing question Pragmatist is built for. |
| **Empath** | Human-Centered | Strong fit. Q35 (the sleep-tracker engineer hearing his work is cut) and Q31 (the team's proudest build) are felt-experience questions about craft, pride, and loss. Empath's emotional resonance is essential here. |
| **Systems Thinker** | External Perspectives | Q30 explicitly names the reinforcing feedback loop (burnout → half-built features → worse retention → pressure to add features → more burnout). Q33's Toyota/lean-manufacturing reframe is structural systems analysis. ST is the persona built for that. |

**Cluster-family check:** Analytical = 1, Challenge = 1, Human-Centered = 1, External Perspectives = 1. Maximally diverse. Storyteller deliberately not added (would echo Empath's emotional lane); Connector/Analogist deliberately not added (Systems Thinker alone covers the structural-loop work without pulling toward cross-domain solution import, which Cluster 8 will do).

---

### Topic Cluster 08: Strategic Identity After the Cut

**Topic classification:** Strategic/Vision, with strong novel/ambiguous notes. The cluster asks who the simplified product *becomes* — the bloat-spiral pattern, the new competitive position against best-in-class incumbents, latent assets the team owns, and reimagining the unit of product value entirely.

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q37 (do we have a defensible edge against Strava/Whoop, or are we just smaller?) demands DA's competitive scrutiny. |
| **Pragmatist** | Analytical (core) | Mandatory. Keeps the strategic-identity work tied to what this team, with this codebase, in this market window can actually execute (Q37's exact framing). |
| **Visionary** | Forward-Looking | Strong fit for Strategic/Vision. Q40 ("reinventing fitness from scratch — no legacy constraints") and Q41 ("structured around emotional states, life chapters, or relationships rather than capabilities") are paradigm-shift questions. Visionary ignores current reality, which is the right move for these specific questions. |
| **Analogist** | External Perspectives | The cluster's questions span multiple unfamiliar terrains (Q36 self-amplifying patterns, Q39 "depth not reduction," Q41 reframing the unit of product value). Per the selection guide: "Analogist is the strongest pick when a topic is hard to classify or doesn't map cleanly to an established domain." Cross-domain inspiration (e.g., how restaurants, music albums, or rituals structure value differently than feature lists) is high-leverage here. |

**Cluster-family check:** Analytical = 1, Challenge = 1, Forward-Looking = 1, External Perspectives = 1. Maximally diverse. Futurist deliberately not added — the cluster's questions are paradigm-shift, not trend-extrapolation; Visionary alone is the right Forward-Looking pick at medium effort.

---

### Topic Cluster 09: Redefining Success for the Focused Product

**Topic classification:** Strategic/Vision with strong User-Facing overlap. The cluster is about native metrics for a focused product, but Q43-Q47 are squarely about what success *feels like* to the user (emotional arc of first three sessions, daily ritual, the app that disappears).

| Persona | Cluster Family | Rationale |
|---------|----------------|-----------|
| **Devil's Advocate** | Challenge (core) | Mandatory. Q42 explicitly raises the "post-hoc rationalization" risk — DA is the persona who refuses to let new KPIs become cover for underperformance. |
| **Pragmatist** | Analytical (core) | Mandatory. Q42 asks for "specific metrics, target ranges, and a single north-star metric" — concrete, instrumentable definitions are Pragmatist's lane. |
| **Visionary** | Forward-Looking | Strong fit for Strategic/Vision. Q45 ("making it harder on purpose — the 47-second session might be correct") and Q46 ("the app that disappears") are paradigm-shift reframes about what success even means. Visionary supplies that framing. |
| **Audience Advocate** | Human-Centered | Strong fit. Q43 ("what success feels like from the user side"), Q44 ("the emotional arc of the first three sessions"), and Q47 (the daily ritual a year out) demand stakeholder-needs mapping from the user's perspective, not just team-side metric design. AA grounds the new success definition in lived user need. |

**Cluster-family check:** Analytical = 1, Challenge = 1, Forward-Looking = 1, Human-Centered = 1. Maximally diverse. Empath deliberately not added (would push Human-Centered to 2 with limited marginal value vs. AA's needs-mapping focus, which is what the metrics-redesign work most needs).

---

## Family Distribution Audit (across all 9 clusters)

| Persona | Appearances |
|---------|-------------|
| Devil's Advocate (core) | 9 |
| Pragmatist (core) | 9 |
| Empath | 4 (clusters 01, 03, 06, 07) |
| Visionary | 3 (clusters 04, 08, 09) |
| Systems Thinker | 2 (clusters 02, 07) |
| Audience Advocate | 2 (clusters 03, 09) |
| Simplifier | 2 (clusters 02, 04) |
| First Principles Thinker | 1 (cluster 01) |
| Constraint Flipper | 1 (cluster 05) |
| Momentum Builder | 1 (cluster 05) |
| Storyteller | 1 (cluster 06) |
| Analogist | 1 (cluster 08) |

Retired personas (Questioner, Analyst, Synthesizer): not selected — confirmed.

Specialized lenses (Lawyer, Accountant, Politician): not selected — consistent with Phase 2A's exclusion rationale (no regulatory regime; runway is background not a financial-design axis; "team morale" and "user communication" are not stakeholder-political).
