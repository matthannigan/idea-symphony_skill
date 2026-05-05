# LB1 Per-Sample Score: habit-tracker/low/04_streak-grace-failure-and-the-anxiety-loop

**Date:** 2026-05-04
**Sample ID:** habit-tracker_low_04_streak-grace-failure-and-the-anxiety-loop
**Effort:** low
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_low-effort.md
**Through-line count in BL1 ledger:** 23

---

## Axis A

| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 | Grace note as confession ritual | Paraphrased | Theme: "Grace Note Is a Confession Booth"; convergent diagnosis preserved |
| TL-2 | Instrument cohorts at launch; recovery rate is vanity | Paraphrased | Theme + immediate action; specific events listed |
| TL-3 | Binary-choice replacement (P only) | Paraphrased | Immediate action, near-verbatim button labels |
| TL-4 | One-day grace insufficient | Paraphrased | 48-hour window in trade-offs section |
| TL-5 | "Grace declined" as separate event | Paraphrased | Action items + Key Considerations |
| TL-6 | Surface grace proactively in onboarding | Paraphrased | Immediate action, tagged [unique: risk] |
| TL-7 | Onboarding stakes language audit | Paraphrased | Immediate action, tagged [unique: feasibility] |
| TL-8 | Weekly review trend/question framing | Paraphrased | Immediate action |
| TL-9 | Psychological safety operationalized (owners/metrics) | Dropped | No "shame audit" / named-reviewer / proxy-metric language survives; theme of active framing absorbs the principle but loses the operational-accountability claim |
| TL-10 | Active framing required, not just subtraction | Paraphrased | Dedicated theme |
| TL-11 | Re-engagement flow for long-absent users | Paraphrased | Near-term action with verbatim 18-day card |
| TL-12 | Reduce precision of failure signals (fuzzy framing) | Dropped | "most days" vs "71%" not preserved anywhere |
| TL-13 | 28-day trend lines | Paraphrased | Theme + immediate action |
| TL-14 | Configurable dashboard | Paraphrased | Blind-spot flag |
| TL-15 | 28-day rolling health band | Paraphrased | Long-term action with verbatim thresholds |
| TL-16 | Continuity view (wins-only calendar) | Dropped | DA-distinctive design move not preserved |
| TL-17 | Miss-reflection deferral timing | Paraphrased | Explicit trade-off section |
| TL-18 | Pre-commitment if-then before high-risk periods | Paraphrased | Long-term action, Thursday example preserved |
| TL-19 | If-then template at miss moment | Paraphrased | Folded into near-term action |
| TL-20 | Reflection must feed visible feedback loop | Paraphrased | Theme |
| TL-21 | Execution risk at vulnerable moment | Paraphrased | "execution standard is higher than any other feature because it catches users at their most vulnerable" |
| TL-22 | Feature-flag staged rollout | Paraphrased | Near-term action |
| TL-23 | Structured miss-reason taxonomy | Paraphrased | Near-term action with category list |

**Survival rate:** 20/23 = 87%
**Verdict:** pass

## Axis B (low)

### B.1
- Central Tension: "Whether the grace mechanic should be treated as a lightweight retention nudge to ship quickly and instrument — or whether it is a symptom of a deeper product theory that must be resolved before any single feature can work" — **Y** (names trade-off substantively; ship-and-instrument vs. resolve-theory-first; closely tracks BL1 candidate)
- Exec Summary: **substantive** — commits each lens to specific stances (binary buttons vs. "arrives too late even then"; 48-hour window + trend lines vs. "structural intervention is surfacing in onboarding"; feature flag + taxonomy vs. deferred prompt). No "balance is needed" smoothing.
- `[trade-off]` tags: BL1 has 1 explicit `[trade-off]` (TL-18 pre-vs-post if-then). Output uses 1 `[trade-off]` tag (on the immediate-vs-deferred reflection timing, which corresponds to TL-17). The BL1 TL-18 trade-off is folded into a long-term action without `[trade-off]` tag. Match: ~50%, but trade-offs section of Key Considerations explicitly names two stance-committed disagreements aligned with BL1 inverted-framing cases (TL-4, TL-17).
- Verdict: **pass**

### B.2
- BL1 categories: relational/social dynamics, lifecycle/stage-dependent design, accessibility/neurodivergent users (3 candidates)
- Output gaps mapping: 1 gap surfaced — "social and relational dynamics of shame" (accountability partners, shared streaks). Substantive and specific.
- Gap-presence rate: 1/3 = 33%
- Specificity: substantive (the one gap named is concrete and tied to social features)
- Verdict: **partial** (below 75% category-match threshold; specificity passes but breadth fails)

## Axis C — n/a

## Phase-5 Signal Audit
- Central Tension match BL1: closely aligned — output frames it as ship-and-instrument vs. theory-resolution; BL1 candidate frames it as highest-leverage vs. highest-vulnerability moment. Different framings of the same underlying tension; output's framing is defensible but doesn't pick up the "highest-vulnerability / hasn't-earned-the-right" axis.
- Confidence tags: `[convergent]`, `[unique: risk]`, `[unique: feasibility]`, `[trade-off]` all used. Spot-check: TL-3 BL1=`[unique: feasibility]` → output `[convergent]` (incorrect; binary-choice is P-only). TL-2 `[convergent]` ✓. TL-6 `[unique: risk]` ✓. TL-7 `[unique: feasibility]` ✓. TL-15 `[unique: feasibility]` ✓. TL-18 BL1=`[trade-off]` → output `[unique: risk]` (loses the explicit tension with TL-19). Match: ~75%.
- Neither-lens gaps cross-link: only relational/social named; lifecycle stages and neurodivergent users dropped.

## Sample Verdict

**Verdict:** FAIL
**Failure modes:**
- B.2 partial: only 1 of 3 BL1 neither-lens-gap categories surfaced (relational only; lifecycle and neurodivergent dropped). Strict regime fails the sample.
- TL-9 (operational accountability for psychological safety) absorbed-to-loss: principle of active framing survives but the load-bearing "named owner / shame audit / proxy metric" governance artifact is gone.
- TL-12 (fuzzy framing) and TL-16 (continuity view) dropped — both are DA-distinctive design moves; loss skews output toward Pragmatist's reframing toolkit.
- Confidence-tag mis-tagging: TL-3 mistagged `[convergent]` (P-only); TL-18 trade-off collapsed to `[unique: risk]`, losing the genuine pre-vs-post if-then tension.

**Recommended prompt revision target:**
- Strengthen Neither-lens gaps instruction: require 2-3 distinct angle categories (relational, lifecycle, equity/access, ethical) be considered before deciding whether to skip; current "skip if nothing emerges" license is producing single-gap outputs that pass the substance test but fail breadth.
- Add explicit instruction to preserve operational-accountability/governance recommendations (named owners, audit checklists, proxy metrics) as distinct from active-framing principles — these are commonly absorbed into theme prose and lost.
- Tighten confidence-tag guidance: when an item is unique to one persona but adopts the *form* of a convergent recommendation (e.g., binary buttons inside a shared "fix the grace note" diagnosis), the tag should still reflect raised-by, not adopted-by.
