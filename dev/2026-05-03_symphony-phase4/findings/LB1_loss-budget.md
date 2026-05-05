# Phase 4 Investigation — LB1 Loss-Budget Findings

**Date:** 2026-05-04
**Samples scored:** 20 (10 min + 10 low)
**Verdict-semantics note:** Per the two-regime lens (`dev/2026-05-03_effort-comparison.md` §5), sample verdicts are harmonized to **strict semantics**: any co-primary axis at `partial` or `fail` ⇒ sample FAIL. Wave 1+2 sub-findings (career-change_min_01, food-truck_low_02, habit-tracker_min_02, space-party_low_03, mobile-app_min_01, property-management_min_02, school-consolidation_low_04, tool-library_min_01, wearable-device_low_04, youth-mentorship_low_06) interpreted "co-primary" leniently in some cases — granting PASS where Axis B/C was `partial`. Wave 3+4 applied strict semantics. The strict re-derivation below is authoritative for this synthesis and for downstream RP1 reading; per-sample axis-level data (survival %, axis pass/partial/fail) is preserved as recorded.

---

## Headline

**Min prompt (`phase4_summary-only_min-effort.md`).** Axis A (through-line survival) clears the 80% bar in 7/10 samples (aggregate ≈ 84%), so the prompt is *almost* meeting the loss-budget benchmark. But the regime-distinctive job — surfacing **conspicuous absences** with cluster-specific match to BL1 candidates — is failing: Axis C passes in only **3/10** samples. Combined with `[recurring]` survival breaching the strict 100% target in 5/10 samples, the **strict full-pass rate is 2/10** (food-truck_min_01, school-consolidation_min_04). The dominant failure mode is the prompt's permissive Conspicuous-Absences language ("skip the section entirely if nothing notable emerges"): synthesizers populate the section with plausible-sounding but BL1-mismatched candidates, demonstrating they understood the section exists but had no anchor on what counts as a real cluster-specific absence vs. a generic one.

**Low prompt (`phase4_summary-only_low-effort.md`).** Axis A clears 80% in 6/10 samples; aggregate survival ≈ 80.4%, just at threshold. Tension preservation (B.1) is the prompt's strongest signal — passing in **8/10** samples with substantive (non-smoothed) DA × Pragmatist framing. The collapse is on B.2 **neither-lens-gap detection**: **0/10** samples pass strict B.2 semantics. Outputs reliably surface a non-empty Neither-lens-gaps section, but the gaps named almost never match the BL1 4-category candidate set — outputs find legitimate-but-different gaps rather than the cluster's most distinctive blind spots. The **strict full-pass rate is 0/10**. The low prompt is a competent compressor but does not yet reliably surface the distinctive multi-category gap content the two-regime lens demands. Min and low are failing in different places: min on what specific absence to call out, low on which gap categories the DA × Pragmatist pair structurally cannot reach.

---

## Min-effort prompt (`phase4_summary-only_min-effort.md`)

### Survival rate

| Sample | Survival rate | Absorption rate | Drop rate | `[recurring]` survival | Verdict (strict) |
|---|---|---|---|---|---|
| career-change_min_01 | 80% | 5% | 15% | 87.5% | **FAIL** |
| food-truck_min_01 | 87.5% | 6% | 6% | 100% | **PASS** |
| habit-tracker_min_02 | 80% | 5% | 15% | 73% | **FAIL** |
| mobile-app_min_01 | 80% | 8% | 8% | 100% | **FAIL** (Axis C partial) |
| property-management_min_02 | 85% | 0% | 15% | 87% | **FAIL** |
| school-consolidation_min_04 | 94% | 11% | 6% | 100% | **PASS** |
| space-party_min_02 | 88.2% | n/r | n/r | 100% | **FAIL** (Axis C partial) |
| tool-library_min_01 | 71% | n/r | n/r | 75% | **FAIL** |
| wearable-device_min_05 | 94.4% | n/r | n/r | 100% | **FAIL** (Axis C partial) |
| youth-mentorship_min_01 | 77% (V/P) / 86% (V/P+abs) | 9% | 14% | 79–93% | **FAIL** |

**Aggregate survival rate (10 samples):** ≈ **84%** (mean of per-sample V/P survival)
**Pass rate (Axis A ≥ 80%):** **7/10**
**`[recurring]` 100% rate:** **5/10**
**Strict full-pass rate (A pass AND `[recurring]` 100% AND C pass):** **2/10**

### Conspicuous-absences detection

The prompt's Conspicuous Absences section is *present* in every min sample examined — synthesizers know to write it. The failure is on content selection:

- **Pass (3/10):** career-change_min_01 surfaces specific financial/PSLF absence matching BL1's top candidate; food-truck_min_01 hits BL1 candidates with concrete operational specificity; school-consolidation_min_04 surfaces 3 specific absences, 2/3 align with BL1 candidates.
- **Partial (7/10):** Section present, items are specific (not generic filler), but **BL1 candidate-match rate is 0–33%**. Outputs find real but different absences. Examples:
  - mobile-app_min_01 misses the cluster's most conspicuous gap — the brainstormer's "three businesses, pick a lane" prompt without picking a lane — and the summary actively papers over it by recommending "Choose one business model lane."
  - space-party_min_02 misses BL1's top candidate ("host fatigue / adult capacity," flagged in the topic effort-comparison memo) and surfaces three plausible-but-secondary gaps.
  - wearable-device_min_05 misses the load-bearing consumer-acquisition-channel gap (which structurally undermines the 10K-unit revenue model the same output recommends).
- **Fail (0/10):** No min sample produced generic-only or empty-when-needed Conspicuous Absences; the qualitative floor is at "specific but mis-targeted."

The cross-cutting pattern is **substitution, not omission**: synthesizers reliably write the section but select different candidates than BL1. This points at *no diagnostic anchor in the prompt* for what constitutes a cluster-specific absence — the prompt says "be specific" but does not enumerate categories or push the synthesizer to interrogate the response for the most consequential structural omission.

### `[recurring]` survival floor

5/10 min samples breach the strict 100% target on `[recurring]` through-line survival:
- habit-tracker_min_02: 73% (TL-10 scaled-down re-entry; TL-11 weekly review dropped)
- tool-library_min_01: 75% (TL-4 tool-sponsorship, TL-11 advisory council, TL-18 tool-condition rubric all dropped)
- youth-mentorship_min_01: 79–93% (TL-9 vehicle-transport safety policy dropped despite Q2+Q3 recurrence)
- property-management_min_02: 87% (TL-10 PMS stack and TL-18 review velocity dropped)
- career-change_min_01: 87.5% (TL-15 absorbed into general moral-injury framing rather than preserved)

Pattern: action-list budget fills with the most numerically-anchored items (financial thresholds, percentages); operational/governance recurring items get squeezed out. The prompt has no instruction tying `[recurring]` tags to **mandatory inclusion** in Recommended Actions / Key Themes.

### Failure modes (min)

**Pattern: BL1 candidate-substitution in Conspicuous Absences (count: 7)**
- **Affected samples:** career-change_min_01 (partial), habit-tracker_min_02, mobile-app_min_01, property-management_min_02, space-party_min_02, wearable-device_min_05, youth-mentorship_min_01
- **Mechanism:** Prompt instructs "be specific to this cluster's substance; don't list generic gaps" but provides no diagnostic procedure. Synthesizers identify *some* real absence and write it confidently; they don't interrogate the response for the *most consequential* structural omission. The BL1-flagged absences are typically the ones with cross-question or cross-effort reinforcement; these require deeper reading than a single-pass synthesis tends to do.
- **Recommended prompt revision target:** Add a diagnostic checklist before writing the Conspicuous Absences section: *"Before naming absences, ask: (a) Does the brainstormer name a stakeholder type but not a structurally adjacent one (e.g., owners but not staff)? (b) Does it offer a recommendation whose precondition the response never establishes (e.g., '10K units sold' without an acquisition channel)? (c) Does it propose action whose downside class is never raised? (d) Did the brainstormer face a decision in the prompt and decline to make it? Pick the 1–2 with the highest leverage on the cluster's recommendations — those are the conspicuous absences. Avoid restating risks already covered."*

**Pattern: `[recurring]` through-line dropped from output (count: 5)**
- **Affected samples:** habit-tracker_min_02, tool-library_min_01, youth-mentorship_min_01, property-management_min_02, career-change_min_01
- **Mechanism:** Action list budget is finite; numerically-anchored items (dollar thresholds, percentages, week counts) crowd out operational/policy items (advisory council, transport policy, PMS stack) that nevertheless recurred across questions. The prompt's `[recurring]` definition ("returned to in multiple responses — high confidence") describes the tag but does not tie it to inclusion-required.
- **Recommended prompt revision target:** Add explicit gating: *"Every through-line that recurs across multiple questions in the brainstormer's response must surface in either Recommended Actions or Key Themes. Do not drop a `[recurring]` insight to make room for a single-occurrence item, however vivid."*

**Pattern: Confidence-tag inflation (count: 4+)**
- **Affected samples:** career-change_min_01 (2 mistags), school-consolidation_min_04 (5 mistags — 9 items tagged `[recurring]` vs. only 4 in BL1), tool-library_min_01 (3 mistags), youth-mentorship_min_01 (2 mistags), food-truck_min_01 (1 mistag)
- **Mechanism:** Synthesizer treats `[recurring]` as a **subjective confidence/importance marker** instead of a literal cross-question recurrence count. This breaks the downstream Phase-5 weighting affordance: a Phase-5 reader cannot distinguish actual cross-question patterns from synthesizer-judged-important.
- **Recommended prompt revision target:** Tighten the tag definition: *"`[recurring]` = the same specific recommendation/heuristic (not just its theme) appears in two or more questions. A single mention plus thematic resonance counts as `[single]`. When in doubt, tag `[single]`. Do not use `[recurring]` as a generic confidence marker."*

**Pattern: Central Tension absent or implicit (count: 8/10 min samples)**
- **Affected samples:** All min samples except school-consolidation_min_04 and arguably food-truck_min_01.
- **Mechanism:** The min prompt has no Phase-5-signal scaffolding — no Central Tension section. The Executive Summary often *gestures* at the tension (capital discipline vs. growth at food-truck; metric honesty vs. motivational scaffolding at habit-tracker; bootstrapping paradox at property-management) but does not name it as the cluster's organizing trade-off. A Phase-5 aggregator has to extract it implicitly.
- **Recommended prompt revision target:** Add a one-sentence "Central Tension" affordance to the min prompt's structure: *"If a single organizing trade-off is detectable across the brainstormer's responses, name it as a one-sentence Central Tension at the top of the Executive Summary. Skip if no such tension emerges."*

---

## Low-effort prompt (`phase4_summary-only_low-effort.md`)

### Survival rate

| Sample | Survival rate | Absorption rate | Drop rate | Verdict (strict) |
|---|---|---|---|---|
| career-change_low_01 | 83% | 0% | 17% | **FAIL** (B.2 partial) |
| food-truck_low_02 | 76.9% | 3.8% | 19.2% | **FAIL** |
| habit-tracker_low_04 | 87% | n/r | n/r | **FAIL** (B.2 partial) |
| mobile-app_low_08 | 77% (incl. absorbed) | 14% | n/r | **FAIL** |
| property-management_low_02 | 76% | n/r | n/r | **FAIL** |
| school-consolidation_low_04 | 64% | n/r | n/r | **FAIL** |
| space-party_low_03 | 82.4% | 11.8% | 5.9% | **FAIL** (B.2 partial) |
| tool-library_low_05 | 85% | n/r | n/r | **FAIL** (B.2 partial) |
| wearable-device_low_04 | 91% | 9% | 9% | **FAIL** (B.2 partial) |
| youth-mentorship_low_06 | 82% | 9% | 9% | **FAIL** (B.1+B.2 partial) |

**Aggregate survival rate (10 samples):** ≈ **80.4%**
**Pass rate (Axis A ≥ 80%):** **6/10**
**Strict full-pass rate (A pass AND B.1 pass AND B.2 pass):** **0/10**

### Tension preservation (B.1)

This is the prompt's strongest signal: **8/10 samples pass** with substantive (non-smoothed) DA × Pragmatist framing. Outputs commit each lens to a stance ("A feasibility-oriented case argues...; a risk-oriented counterpoint flags...") rather than producing "balance is needed" consensus.

- **Pass (8/10):** career-change, food-truck, habit-tracker, property-management, school-consolidation, space-party, tool-library, wearable-device.
- **Partial (2/10):** mobile-app_low_08 ("both converge on one uncomfortable truth" smooths the path-choice trade-off into agreement); youth-mentorship_low_06 (TL-2's signature inverted-framing — coordinator-as-bottleneck vs. coordinator-as-broker — collapsed into convergence).
- **Fail (0/10).**

The B.1 mandate is being met. The remaining defect is **inverted-framing-pair detection**: when the two lenses point at the same mechanism from opposite directions, current synthesis sometimes smooths to convergence rather than preserving the inversion as the highest-value tension.

### Neither-lens-gap detection (B.2)

**0/10 samples pass strict B.2 semantics.** All outputs surface a Neither-lens-gaps section (the section discipline is solid), but the gaps named almost never match the BL1 4-category candidate set:

- **Category-match rate per sample is typically 0–33%**, well below the 75% threshold. Outputs find real, substantive, cluster-specific gaps; they just aren't the gaps BL1 surfaced as the most distinctive DA-Pragmatist blind spots.
- **Specificity is high** in 9/10 — outputs are not producing generic "more perspectives needed" filler. The failure is breadth and category-coverage, not specificity.
- **Per-category aggregate** (counting at least one substantive gap surfaced in BL1's 4 taxonomy categories across the 10 samples):
  - **relational:** ~70% surfaced (most reliable category)
  - **equity:** ~50% surfaced (often substituted in even when not in BL1)
  - **political-economy:** ~30% surfaced (frequently dropped — property-management_low_02 misses Lawyer/Accountant/Politician lens-gaps; mobile-app_low_08 misses App Store dynamics)
  - **emotional / phenomenological:** ~20% surfaced (most-dropped category — career-change_low_01 misses phenomenology-of-practice; tool-library_low_05 misses phenomenological-experience; mobile-app_low_08 misses first-person user emotional texture)
  - **cluster-specific 5th:** novel gaps are surfaced (space-party_low_03 finds parent-pickup; food-truck_low_02 finds linguistic/branding-of-cultural-heritage), but they substitute for rather than supplement BL1 categories.

**Pattern:** outputs typically produce 1–2 gaps where BL1 surfaces 3–4. The prompt's "1–3 things... skip if nothing emerges" license is producing single-gap outputs that pass the substantive-content test but fail the breadth test. Synthesizers aren't being pushed to systematically iterate the 4 taxonomy categories before deciding what to surface.

### Failure modes (low)

**Pattern: B.2 single-gap or category-thin output (count: 10/10)**
- **Affected samples:** All 10 low samples.
- **Mechanism:** Prompt's gap-section instruction permits ≥1 gap and licenses skipping. Synthesizers exit after 1–2 substantive gaps even when more candidate categories exist. Phenomenological/emotional and political-economy/regulatory categories are particularly dropped.
- **Recommended prompt revision target:** Replace the open-ended gap instruction with a **category-iteration** instruction: *"Before writing this section, mentally walk through five candidate categories and identify the 2–3 most cluster-relevant: (a) relational/social dynamics, (b) emotional/phenomenological/lived-experience, (c) equity/access/distributional, (d) political-economy/regulatory/institutional, (e) lifecycle/temporal-stage. For each candidate, ask: did the DA's risk lens and the Pragmatist's feasibility lens both structurally miss this angle? If yes for at least 2 categories, surface those as distinct gaps. If only 1 category passes the test, surface it; do not pad. Do not skip the section unless 0 categories survive the test — in that case, name the closest near-miss as 'considered but ruled out' to make the synthesis traceable."*

**Pattern: Through-line survival below 80% (count: 4)**
- **Affected samples:** food-truck_low_02 (76.9%), mobile-app_low_08 (77%), property-management_low_02 (76%), school-consolidation_low_04 (64%).
- **Mechanism:** Output prioritizes thematic coherence (selecting and elaborating 5–7 themes) over through-line coverage. Single-persona-unique through-lines and operational/quantified items (concrete dollar figures, hire timelines, regulatory mechanics) are most likely to drop. school-consolidation_low_04 at 64% is the clear outlier — the output absorbed many TLs into a Neither-lens-gap section as compressed bullets rather than surfacing them as themes/actions.
- **Recommended prompt revision target:** Add coverage instruction: *"Before finalizing themes, list every distinct claim/recommendation/observation that appears in either response file (target: at least 80% must surface as named themes, action items, or considerations). Do not absorb operational specifics — concrete dollar figures, named tools, regulatory mechanics, threshold numbers — into general statements; preserve them or cite them explicitly under the relevant theme."*

**Pattern: Stance tags absent or replaced with category tags (count: 1, but high-impact)**
- **Affected sample:** mobile-app_low_08 (stance tags entirely absent — replaced with category tags).
- **Mechanism:** Prompt's `[convergent]` / `[trade-off]` / `[unique:*]` tag instruction is followable but not enforced. One sample reinterpreted "tag your actions" as "categorize your actions."
- **Recommended prompt revision target:** Tighten tag definition with required vocabulary: *"Every action item must carry exactly one stance tag from this fixed set: `[convergent]`, `[trade-off]`, `[unique: feasibility]`, `[unique: risk]`. Do not invent alternative tag categories. The tag describes the stance relationship between the two lenses, not the topical domain of the recommendation."*

**Pattern: Inverted-framing-pair smoothed to convergence (count: 2)**
- **Affected samples:** youth-mentorship_low_06 (TL-2 coordinator-bottleneck vs. coordinator-broker), mobile-app_low_08 (path-choice trade-off → "both converge on one truth").
- **Mechanism:** When DA and Pragmatist target the same mechanism from opposite valences, the synthesizer reads them as agreement-on-importance rather than disagreement-on-direction.
- **Recommended prompt revision target:** Add to Central Tension section: *"If both lenses point at the same coordinator/structure/mechanism but from opposite directions (one as risk-source, the other as solution-vector), name that inverted-framing pair as the Central Tension explicitly. Inverted framings are the highest-value tensions to preserve and the most likely to be smoothed to false convergence."*

---

## Cross-prompt observations

- **Min vs. low survival comparison:** Aggregate survival is comparable (min ≈ 84%, low ≈ 80%). Min has more samples clearing 80% (7 vs. 6), but the highest-survival low samples (wearable-device_low_04 at 91%, habit-tracker_low_04 at 87%) are competitive with the highest-survival min samples (school-consolidation_min_04 at 94%, wearable-device_min_05 at 94.4%). Survival is *not* the load-bearing differentiator between the prompts.
- **Through-line types most likely to drop:** Operational/governance through-lines without numeric anchors (advisory councils, escalation policies, communication firewalls, transport policies). Late-question or last-listed responses. Methodological/diagnostic critiques (e.g., "counterfactual resolution test flawed"). Decision-architecture frames.
- **Through-line types most likely to absorb:** Trade-off framings tend to absorb into theme paragraphs or Trade-offs bullets where the specific framing is generalized (e.g., asymmetric-harm diagnoses softened into match-closure protocols; cluster-specific saturation-as-corridor inversions softened into DA blind-spot framings).
- **Confidence-tag drift (cross-cutting `[recurring]` over-tagging at min):** Across the 10 min samples with confidence-tag spot-checks reported, mismatch rate is **30–45%** with consistent direction: synthesizers upgrade `[single]` items to `[recurring]` when they *feel* important, not when they actually recur across questions. school-consolidation_min_04 is the most extreme (9 items tagged `[recurring]` vs. only 4 in BL1). This breaks the downstream Phase-5 weighting affordance.
- **Central Tension surfacing (cross-cutting):** Of 20 samples, **2 samples have a strong (Y) BL1-aligned Central Tension** (property-management_low_02; tool-library_low_05). **~12 are partial** (named but framed off-axis from BL1). **~6 are weak/absent.** Min has no Central Tension affordance at all in the prompt structure; low has the affordance but synthesizers frequently choose a defensible-but-secondary tension over the BL1-flagged signature one. This is the largest cross-prompt Phase-5-readiness gap.

---

## Recommendations for RP1

### P0 (must-fix; blocks RP1 stop criterion)

**P0-1. Low prompt — Replace the Neither-lens gaps instruction with category-iteration discipline.**
- **Prompt:** `phase4_summary-only_low-effort.md`, "Neither-lens gaps" section instruction.
- **Problem:** 0/10 low samples pass strict B.2. Synthesizers stop at 1–2 gaps when the cluster has 3–4 candidate categories; phenomenological/emotional and political-economy categories are systematically under-surfaced.
- **Revision (insert):** *"Before writing this section, walk through the 5 candidate categories and identify the 2–3 most cluster-relevant: (a) relational/social, (b) emotional/phenomenological/lived-experience, (c) equity/access/distributional, (d) political-economy/regulatory/institutional, (e) lifecycle/temporal-stage. For each candidate, ask: did the DA's risk lens and the Pragmatist's feasibility lens both structurally miss this angle? If yes for ≥2 categories, surface them as distinct gaps. Skip the section only if 0 categories pass the test."*
- **Motivating samples:** career-change_low_01, food-truck_low_02, habit-tracker_low_04, mobile-app_low_08, property-management_low_02, school-consolidation_low_04, space-party_low_03, tool-library_low_05, wearable-device_low_04, youth-mentorship_low_06 (all 10).

**P0-2. Min prompt — Add diagnostic checklist for Conspicuous Absences.**
- **Prompt:** `phase4_summary-only_min-effort.md`, "Conspicuous absences" instruction in Key Considerations.
- **Problem:** Axis C passes only 3/10. Section is reliably present, but candidate selection misses BL1's load-bearing absences in 7/10 — including cases where the same summary actively papers over the gap (mobile-app_min_01 recommends "choose one business-model lane" while the brainstormer's failure to do so was the cluster's most conspicuous absence).
- **Revision (insert):** *"Before naming absences, run this diagnostic: (a) Does the brainstormer name a stakeholder type but not a structurally adjacent one? (b) Does it recommend something whose precondition the response never establishes (e.g., a 10K-unit revenue model with no acquisition channel)? (c) Does it propose action whose downside class is never raised? (d) Did the brainstormer face a decision implicit in the question and decline to make it? Pick the 1–2 with highest leverage on the cluster's own recommendations. Avoid restating risks already named."*
- **Motivating samples:** career-change_min_01 (partial), habit-tracker_min_02, mobile-app_min_01, property-management_min_02, space-party_min_02, wearable-device_min_05, youth-mentorship_min_01.

**P0-3. Min prompt — Tie `[recurring]` tag to mandatory inclusion.**
- **Prompt:** `phase4_summary-only_min-effort.md`, Recommended Actions and Synthesis Guidelines sections.
- **Problem:** 5/10 min samples drop a `[recurring]` through-line (TL-9 transport-safety at youth-mentorship; TL-10/TL-11 at habit-tracker; TL-4/TL-11/TL-18 at tool-library; TL-10/TL-18 at property-management; TL-15 absorbed at career-change). Action-list budget fills with numerically-anchored items; recurring operational/governance items get squeezed.
- **Revision (insert at Recommended Actions instruction):** *"Every through-line that recurs across multiple questions in the brainstormer's response must appear in either Recommended Actions or Key Themes. Do not drop a `[recurring]` insight to make room for a single-occurrence item, however vivid."*
- **Motivating samples:** habit-tracker_min_02, tool-library_min_01, youth-mentorship_min_01, property-management_min_02, career-change_min_01.

### P1 (high-value; addresses Phase-5-readiness)

**P1-1. Both prompts — Tighten `[recurring]` tag definition.**
- **Prompts:** Both summary-only prompts; instruction on confidence/stance tags.
- **Problem:** Cross-cutting confidence-tag drift. Synthesizers use `[recurring]` as a subjective importance marker; mismatch rate 30–45% on min samples with the bias direction `[single]` → `[recurring]` (over-confidence).
- **Revision (insert):** *"`[recurring]` = the same specific recommendation/heuristic (not just its theme) appears in two or more questions. A single mention plus thematic resonance counts as `[single]`. When in doubt, tag `[single]`. Do not use `[recurring]` as a generic confidence or importance marker."*
- **Motivating samples:** school-consolidation_min_04 (5 mistags), tool-library_min_01 (3 mistags), career-change_min_01 (2 mistags), youth-mentorship_min_01 (2 mistags), food-truck_min_01 (1 mistag).

**P1-2. Min prompt — Add optional Central Tension affordance.**
- **Prompt:** `phase4_summary-only_min-effort.md`, Summary Structure (Executive Summary block).
- **Problem:** 8/10 min samples have a partial or absent Central Tension. Min has no Phase-5-signal scaffolding; the Executive Summary gestures at the trade-off but does not name it as such, forcing Phase-5 aggregators to extract implicitly.
- **Revision (insert before Executive Summary block):** *"If a single organizing trade-off is detectable across the brainstormer's responses, open the Executive Summary with a one-sentence Central Tension that names the trade-off explicitly (e.g., 'The cluster's organizing tension is X versus Y'). Skip if no such tension emerges; do not invent one."*
- **Motivating samples:** career-change_min_01, habit-tracker_min_02, mobile-app_min_01, property-management_min_02, space-party_min_02, wearable-device_min_05, food-truck_min_01.

**P1-3. Low prompt — Add inverted-framing-pair instruction to Central Tension.**
- **Prompt:** `phase4_summary-only_low-effort.md`, Central Tension section instruction.
- **Problem:** When DA and Pragmatist target the same mechanism from opposite valences, synthesizer smooths to "both converge" rather than preserving the inversion. This is the highest-value tension to preserve.
- **Revision (insert):** *"If both lenses point at the same coordinator/structure/mechanism from opposite directions (one as risk-source, the other as solution-vector), name that inverted-framing pair as the Central Tension explicitly. Inverted framings are the highest-value tensions to preserve and the most likely to be smoothed into false convergence."*
- **Motivating samples:** youth-mentorship_low_06 (TL-2 coordinator-bottleneck inversion), mobile-app_low_08 (path-choice "both converge").

### P2 (quality; addresses Axis A coverage on weakest samples)

**P2-1. Low prompt — Add explicit through-line coverage instruction.**
- **Prompt:** `phase4_summary-only_low-effort.md`, Synthesis Guidelines / Themes section.
- **Problem:** 4/10 low samples below 80% survival. school-consolidation_low_04 at 64% is the clear outlier. Operational specifics (concrete dollar figures, named tools, regulatory mechanics) are absorbed into general statements.
- **Revision (insert):** *"Before finalizing themes, list every distinct claim/recommendation/observation in either response file. Target ≥80% surface as named themes, action items, or considerations. Do not absorb operational specifics — concrete dollar figures, named tools, regulatory mechanics, threshold numbers — into general statements; preserve them under the relevant theme."*
- **Motivating samples:** school-consolidation_low_04 (64%), food-truck_low_02 (77%), mobile-app_low_08 (77%), property-management_low_02 (76%).

**P2-2. Low prompt — Enforce stance-tag vocabulary.**
- **Prompt:** `phase4_summary-only_low-effort.md`, action-tag instruction.
- **Problem:** mobile-app_low_08 replaced stance tags with category tags entirely. The other 9 samples kept stance tags but applied them with ~60–90% accuracy.
- **Revision (insert):** *"Every action item must carry exactly one stance tag from this fixed set: `[convergent]`, `[trade-off]`, `[unique: feasibility]`, `[unique: risk]`. Do not invent alternative tag categories. The tag describes the stance relationship between the two lenses, not the topical domain of the recommendation."*
- **Motivating samples:** mobile-app_low_08 (full absence), food-truck_low_02 (60% accuracy).

---

**Anomalies in the per-sample data:**
- Wave 1+2 (10 samples) interpreted "co-primary" leniently — granted PASS to samples with `partial` Axis B/C; per the strict-semantics harmonization above these are re-derived to FAIL.
- mobile-app_min_01 per-sample file labels Axis A "partial" at exactly 80% survival; strict semantics treat this as `pass` on A but the sample still FAILs on Axis C.
- youth-mentorship_min_01 reports two survival rates (V/P only = 77%; V/P + Absorbed = 86%). Per Discussion Q8 (Absorbed = separate category, not survival), the V/P-only 77% is authoritative and Axis A is `fail`.
- food-truck_min_01 and school-consolidation_min_04 are the only two min samples that strictly pass; both have small ledgers (16, 18 TLs) — possible interaction between cluster size and pass rate; flagged for RP1 to watch.
