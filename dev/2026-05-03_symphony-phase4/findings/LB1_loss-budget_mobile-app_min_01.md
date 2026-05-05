# LB1 Per-Sample Score: mobile-app/min/01_feature-triage-and-core-value-identification

**Date:** 2026-05-04
**Sample ID:** mobile-app_min_01_feature-triage-and-core-value-identification
**Effort:** min
**Prompt under test:** idea-symphony/prompts/phase4_summary-only_min-effort.md
**Through-line count in BL1 ledger:** 25 (13 `[recurring]`, 12 `[single]`)

---

## Axis A: Through-Line Survival

| BL1 TL ID | TL summary | Status | Notes |
|---|---|---|---|
| TL-1 `[single]` | Organic-revisit rate (notification-free sessions) | Verbatim | Imm. action #1; 24-hr filter named, exec summ. mentions it |
| TL-2 `[single]` | First-tap entry-point + session-length cross-ref | Verbatim | Imm. action #2; sub-15-sec threshold preserved |
| TL-3 `[recurring]` | Shares as 3-5x weighted signal-rich event | Verbatim | Imm. action #4; "weight 3-5x" preserved; opportunity bullet echoes 50-share point |
| TL-4 `[single]` | Cohort retention by first feature exposes onboarding mis-routing | Verbatim | Imm. action #5; exec summ. flags it as "highest-leverage single query" — even strengthened |
| TL-5 `[recurring]` | Frequency-vs-time 2x2 eliminates 6-8 features pre-interview | Verbatim | Imm. action #3; 6-8 number preserved; theme #2 |
| TL-6 `[recurring]` | Define power user concretely; loudest-complainers risk | Paraphrased | Theme #3 names 20+ sessions / 50% retention threshold; "loudest complainers" framing dropped but directional-not-prescriptive caution retained |
| TL-7 `[recurring]` | Feature association analysis (60% co-use → product core) | Paraphrased | Theme #3 mentions "association analysis across feature pairs" + "60%+" — preserved |
| TL-8 `[recurring]` | Power-user vs median rank-order divergence = two products | Paraphrased | Risks bullet: "If feature rank order differs significantly between power users and median users, 'simplification' will feel like betrayal to one group" |
| TL-9 `[single]` | Acquisition-channel bias narrows true scope | Paraphrased | Theme #3 + risks bullet: "70% from a single influencer or campaign" — preserved with concrete number |
| TL-10 `[recurring]` | Power users = design partners; one-question interview | Verbatim | Near-term action #1; exact one-question protocol preserved |
| TL-11 `[single]` | Quantify "vocal" — passionate count vs retained base + FTE | Paraphrased | Near-term action #3; 500+ users + engineer-hours framing preserved; 3.5%-of-retained-base arithmetic dropped |
| TL-12 `[single]` | Negotiate sunset: 90-day notice, 20-40% churn | Verbatim | Near-term action #4 + theme #4; both specifics preserved |
| TL-13 `[single]` | Spin-out option for passion communities | Verbatim | Long-term action #2; open-source/license/migrate preserved |
| TL-14 `[recurring]` | Codebase complexity = 15% architectural agility cost | Paraphrased | Risks bullet preserves "~15% architectural agility cost"; "compounds silently" framing kept |
| TL-15 `[single]` | Mono-user vs cross-user survey before treating churn as loss | Dropped | Not present in summary. The mono/cross-user distinction does not appear in any section |
| TL-16 `[recurring]` | Behavior vs belief; aspiration-reality gap | Verbatim | Theme #1 directly; exec summ. references it; framework rule preserved |
| TL-17 `[recurring]` | Interviews generate hypotheses; 2-week experiment confirms | Absorbed | Acquisition-vs-retention distinction surfaces in trade-offs bullet but the 2-week-experiment + analytics-set-baseline framework is collapsed into TL-25's three-lane framing |
| TL-18 `[single]` | Match evidence standard to decision reversibility | Absorbed | Trade-offs bullet: "Using interview signal for permanent cuts risks acting on aspiration; using only analytics risks missing acquisition-hook" — captures the spirit but drops the explicit reversibility rubric |
| TL-19 `[single]` | PM conviction as tiebreaker (falsifiable thesis) | Dropped | Not present |
| TL-20 `[single]` | 72-hour blackout on 10% traffic | Verbatim | Near-term action #2; all specifics preserved |
| TL-21 `[single]` | Team-wide independent one-feature exercise | Verbatim | Imm. action #6; "anonymous reveal" + "alignment problem" preserved |
| TL-22 `[recurring]` | Workout tracker = retention anchor (natural daily trigger) | Paraphrased | Long-term action #1 + exec summ. ("workout tracker emerged as recurring candidate"); explicit "natural daily trigger independent of motivation" reasoning compressed |
| TL-23 `[recurring]` | Challenge platform = acquisition keep | Verbatim | Long-term action #1; exec summ. names it explicitly |
| TL-24 `[recurring]` | Coaching service = revenue keep; avoid marketplace | Paraphrased | Long-term action #1 names it; Peloton/Future/Ladder competitor anchors and 6-person/8-month runway constraint dropped |
| TL-25 `[recurring]` | One app = three businesses; pick a lane | Verbatim | Theme #5 + exec summ. paragraph 2 — terminal synthesis preserved as load-bearing diagnosis |

**Tally:** Verbatim 12, Paraphrased 8, Absorbed 2, Dropped 2. Survival (V+P) = 20/25 = **80%**.
**Absorption rate:** 8% (2/25)
**Drop rate:** 8% (2/25)
**`[recurring]` survival:** 13/13 = **100%** (all recurring TLs present as verbatim or paraphrased — TL-3, 5, 6, 7, 8, 10, 14, 16, 17[absorbed... wait recheck])

Recheck recurring: TL-3 V, TL-5 V, TL-6 P, TL-7 P, TL-8 P, TL-10 V, TL-14 P, TL-16 V, TL-17 Absorbed, TL-22 P, TL-23 V, TL-24 P, TL-25 V. Survival (V+P only) = 12/13 = **92%**. TL-17 absorbed counts as failure under strict "survival = V+P" semantic.

**`[recurring]` survival (strict):** 92% — fails the strict 100% target due to TL-17 (interviews-generate-hypotheses-then-analytics-confirms framework reduced to a trade-off bullet rather than a standalone framework).
**Survival-axis verdict:** **partial** — overall 80% hits the threshold, but strict recurring 92% misses the 100% target.

## Axis B — n/a (min)

## Axis C: Conspicuous-Absences Detection (min — APPLIES)

- **Section present:** Y ("Conspicuous absences" subsection in Key Considerations)
- **BL1 candidates:**
  1. No recommendation on which business lane to pick
  2. 47-second average session never developed as systemic diagnostic
  3. 180K downloads / 2% DAU/MAU ratio never interpreted as acquisition-vs-retention diagnosis
- **Output absences:**
  1. No competitive landscape (workout tracker / challenge platform vs entrenched alternatives)
  2. 6-person team's capacity / sequencing / staffing for parallel analyses within 8-month runway
  3. No benchmark for what "good" retention as a target would be
- **Match rate:** 0/3 — none of the output's three absences match BL1 candidates. The output's #3 (no retention benchmark) is loosely adjacent to BL1's #3 (DAU/MAU diagnosis) but the BL1 candidate is about *interpreting the existing 2% number*, not about *naming a target*.
- **Specificity:** specific (named — competitive landscape, team capacity, retention benchmark) but **mis-targeted**. They are real gaps; they're just not the gaps BL1 identified as the conspicuous-absence priorities a single-voice synthesis should surface.
- **Verdict:** **partial** — the section exists, is populated with three specific items (not generic), and represents real critique. But it misses all three BL1 priorities, and most importantly misses the cluster's most conspicuous gap: the brainstormer built TL-25 (three businesses, pick a lane) without recommending which lane — yet the summary not only fails to flag this absence, it actively recommends "Choose one business model lane" as a long-term action, papering over the gap.

## Phase-5 Signal Audit

- **Central Tension:** Not explicitly present as a labeled section (min has no Phase-5 affordance). The output's exec summary highlights TL-25 as the "load-bearing diagnostic" and reframes the decision as "business-model decision disguised as a feature decision" — this is BL1's secondary central-tension candidate (single-product focus vs multi-product reality), preserved at high fidelity. BL1's *primary* candidate (analytical rigor vs decision speed under runway pressure) is absent — runway/team-size constraints are flagged as a conspicuous absence (output's #2) rather than developed as the central tension. Verdict: **partial**.
- **Confidence tags:** Action items carry `[recurring]`/`[single]` tags as the prompt requires. Comparing against BL1 confidence-tag candidates:
  - Imm action #1 (TL-1) `[recurring]` — BL1 = `[single]`. **Mismatch.**
  - Imm action #2 (TL-2) `[recurring]` — BL1 = `[single]`. **Mismatch.**
  - Imm action #3 (TL-5) `[recurring]` — BL1 = `[recurring]`. Match.
  - Imm action #4 (TL-3) `[single]` — BL1 = `[recurring]`. **Mismatch.**
  - Imm action #5 (TL-4) `[recurring]` — BL1 = `[single]`. **Mismatch.**
  - Imm action #6 (TL-21) `[single]` — BL1 = `[single]`. Match.
  - Near-term #1 (TL-10) `[recurring]` — BL1 = `[recurring]`. Match.
  - Near-term #2 (TL-20) `[recurring]` — BL1 = `[single]`. **Mismatch.**
  - Near-term #3 (TL-11) `[single]` — BL1 = `[single]`. Match.
  - Near-term #4 (TL-12) `[single]` — BL1 = `[single]`. Match.
  - Long-term #1 (TL-22+23+24+25 conflated) `[recurring]` — BL1 all `[recurring]`. Match.
  - Long-term #2 (TL-13) `[single]` — BL1 = `[single]`. Match.
  - **Match rate: 7/12 = 58%**. The summary appears to apply the recurring tag to "ideas that feel central/foundational" (TL-1, TL-2, TL-4 are all centerpiece Q1 analyses) rather than ideas that *recur across questions*. This is a tag-semantic drift.
- **Conspicuous absences:** see Axis C above (partial).

## Sample Verdict

**Verdict:** **FAIL**

Two-regime semantics: pass requires A ≥ 80% AND C passes. Overall through-line survival hits 80% on the nose, but the strict `[recurring]` survival is 92% (target 100%) due to TL-17 absorption, and Axis C is partial (section present and specific but 0/3 match with BL1 candidates, plus the most important absence — "which lane to pick" — is actively contradicted by recommending "choose a lane"). Either failure alone would be sufficient; both together make this a clear fail.

**Failure modes:**
- **Tag-semantic drift on `[recurring]`/`[single]`** — 5/12 mismatches, with a systematic bias toward tagging "central/load-bearing" Q1 analyses as `[recurring]` even when they appear in only one question. The prompt's guidance treats internal convergence as the highest-confidence signal but does not define recurrence operationally (cross-question presence vs. centrality vs. conceptual-extension), letting subagents conflate the three.
- **Conspicuous absences mis-targeted** — section is populated with real but external gaps (competitive landscape, team capacity, retention benchmark) rather than the gaps internal to the brainstormer's own argument structure. The summary missed that the cluster's terminal synthesis (TL-25) explicitly stops short of prescribing a lane — yet then *recommended* picking a lane, eliding rather than surfacing the gap.
- **TL-17 framework absorbed into a trade-off bullet** — the analytics-set-baseline / interviews-generate-hypotheses / 2-week-experiment-confirms structure was a load-bearing methodological frame in Q4, recurring into Q5; reducing it to a one-line trade-off loses the operational sequencing. This is the main driver of the strict-recurring-survival miss.
- **TL-15 dropped** — the mono-user vs cross-user survey is one of the most practically actionable single recommendations and is absent from the summary entirely. Single-occurrence does not justify dropping; the prompt explicitly says "single-occurrence ideas can still be valuable" but provides no mechanism to ensure they survive when the synthesizer is compressing toward 500-800 words.

**Recommended prompt revision target:**

1. **Operationalize `[recurring]` vs `[single]` tagging.** Add explicit definition: "`[recurring]` = the brainstormer raised this idea in 2+ separate question responses, or directly extended a concept introduced in a prior question. `[single]` = idea appeared in one question only, regardless of how analytically central it felt." Without this, subagents conflate centrality with recurrence and the tags lose their downstream Phase-5 calibration value.

2. **Reframe Conspicuous Absences guidance to look inward, not outward.** Current prompt says "be specific to this cluster's substance; don't list generic gaps." But the failure mode here is *external-gap drift* (competitive landscape, team capacity) rather than generic-gap drift. Add: "Look first at gaps internal to the brainstormer's own argument: claims they built up to but stopped short of, numbers they used as inputs but never interpreted, conclusions whose prescriptive next step they declined to take. External gaps (competitive landscape, market sizing, team capacity) are valid but lower-priority than internal argument gaps the synthesis can uniquely surface."

3. **Add a recurrence-survival floor for action items.** Current prompt asks for 4-8 action items but does not require that every `[recurring]` BL-style theme survive into the action list or themes. Add: "Before finalizing action items, list every idea the brainstormer raised in 2+ questions; confirm each appears in either Themes or Recommended Actions. Compression should drop `[single]` items first, never `[recurring]`."
