# GT1: Ground Truth Expected Assignments — Analysis Companion

**Date:** 2026-04-18
**Companion to:** `../ground-truth/expected-assignments.md` (Canonical as of Rev 3)
**Inputs:** persona-selection-guide_Phase2B.md, R6 (Tier 3), R7 (Connector/Analogist), REQUESTS_ALL.md, methodology.md, discussion-questions-responses.md, `../GT1-review-notes.md`
**Scope:** 20 cells (10 topics x 2 effort levels) + 10 Connector/Analogist decisions

---

## Revision Log

**Reading order for cold readers:** Start at the ground-truth file (`../ground-truth/expected-assignments.md`) → return here and read Section 9 (walkthrough-conclusion summary) → Sections 1–8 for detail → `../GT1-review-notes.md` (Rev 2 decision rationale and walkthrough retrospective) → `../../../idea-symphony/references/persona-selection-guide_Phase2B.md` (guide under pressure) → R6/R7 findings for background.

**Rev 3 — 2026-04-18 — Canonical. Walkthrough review pass complete.** Human walkthrough of Sections 1–9 generated 20+ named decisions across 9 sections. Section-level changes in Rev 3 (no cell-level answers flipped — all cell flips happened in Rev 2):
- Section 2: table arithmetic corrected (14H/6M → 15H/5M — underlying counts were always 15/5; Rev 1 table was mis-labeled).
- Section 3: "Mildly Ambiguous Cells" renamed to "Scoring-Vigilance Cells" and split into soft-boundary and trap-adjacent subcategories (Decision 3C); tool-library high's Answer B clarified to exclude Lawyer (Decision 6C).
- Section 4: effort-level-split reporting note added for O1/PR1 (Decision 4A); scoring rule for soft-boundary alts clarified (Decision 4C).
- Section 5: false-positive-rejection priority emphasis added for habit-tracker and space-party (Decision 5C); None→Single coverage limit documented (Decision 5A).
- Section 6: habit-tracker Accountant trap added (Decision 6A); youth-mentorship Politician at medium added then dissolved (Decisions 6B then 7A); mobile-app Technical Expert entry updated for Rev 2 primary answer (Decision 6D); tool-library Lawyer explicitly scoped to both efforts (Decision 6C); trap-class taxonomy added.
- Section 7: Gap 1 direction committed to widen (Decision 7A); Gap 4 added for second-slot moderate-threshold discipline (Decision 3B); Technical Expert "engineering tradeoffs" minor ambiguity noted but not flagged as Gap (Decision 7D).
- Section 8: Gap-2-rejection dependency callout added (Decision 8B); A1 handoff timing deferred until walkthrough complete (Decision 8C); walkthrough-state pointer added (Decision 8A).
- Section 9: full rewrite as walkthrough-conclusion summary (Decision 9A); reading-order pointer added to this Revision Log (Decision 9B); Status flip to Canonical (Decision 9C); retrospective notes moved to `../GT1-review-notes.md` (Decision 9D).

**Rev 2 — 2026-04-17 — Calibration-principle pass.** Scoped revision mirroring the ground-truth file's Rev 2. See `../GT1-review-notes.md` for full decision rationale. Sections recomputed: 1 (Summary Table), 2 (Confidence Distribution), 3 (Ambiguous Cases), 4 (Ambiguity Rate), 5 (Threshold Sensitivity), 7 Gap 2 and Gap 3, 8 (A1 Handoff risk tiering), 9 (Overall Assessment). Section 6 (False-Positive Traps) unchanged at Rev 2 (Rev 3 walkthrough added traps subsequently). Cell-level changes:
- career-change high: Medium confidence None (alt: Accountant) → High confidence Accountant (moderate), definitive
- mobile-app high: High confidence None → High confidence Accountant (moderate)
- school-consolidation medium: High confidence Politician (single strong) → Medium confidence Politician (primary; Accountant also strong — tiebreaker)

**Rev 1 — 2026-04-17 — Initial analysis.** Authored alongside the initial ground-truth file.

---

## 1. Summary Table

| # | Topic | Connector/Analogist | Tier 3 Medium | Tier 3 High | Confidence (Med / High) |
|---|---|---|---|---|---|
| 1 | habit-tracker | Analogist | None | None | H / H |
| 2 | space-party | Analogist | None | None | H / H |
| 3 | tool-library | Analogist | Politician | Politician + Accountant | M / H |
| 4 | food-truck | Analogist | Accountant | Accountant + Politician | H / M |
| 5 | property-management | Analogist | Lawyer | Lawyer + Accountant (alt: Politician) | H / M |
| 6 | youth-mentorship | Connector | Lawyer | Lawyer + Politician (alt: Lawyer only) | H / M |
| 7 | school-consolidation | Connector | Politician (primary; Accountant also strong) | Politician + Accountant | M / H |
| 8 | mobile-app | Connector | None | Accountant (moderate) | H / H |
| 9 | wearable-device | Connector | Technical Expert | Technical Expert + Lawyer | H / H |
| 10 | career-change | Connector | None | Accountant (moderate) | H / H |

**Connector/Analogist split:** 5 Analogist (default) / 5 Connector (swap) — perfectly balanced, consistent with R7's per-topic findings.

**Tier 3 None/Selection split (medium):** 4 None, 6 with-selection. (high): 2 None, 8 with-selection (with 4 of 8 expanding from 1 to 2; 2 of 8 promoting from None→Single). The None→Single coverage is the Rev 2 addition — previously 0 topics tested this promotion pattern; now 2 do (mobile-app, career-change).

---

## 2. Confidence Distribution

| Confidence | Cells | % of 20 |
|---|---|---|
| High | 15 | 75% |
| Medium | 5 | 25% |
| Low | 0 | 0% |

**Rev 2 net delta:** career-change high moved Medium → High (Accountant-moderate is now definitive under the calibration principle, no longer a None-vs-Accountant toss-up). school-consolidation medium moved High → Medium (new tiebreaker character — Politician and Accountant are both strong, but medium's 0-1 ceiling forces a single pick). mobile-app high remained High (was High at None, now High at Accountant-moderate — the cell's confidence doesn't change, only its answer). Net: one M→H and one H→M; total counts unchanged.

**Table correction (Rev 2):** Rev 1's table reported 14H/6M but its bullet breakdown enumerated 15H/5M. The bullet list was correct; this Rev 2 table reflects the true counts (15H/5M/0L).

**Breakdown by cell:**

- **High (14):** habit-tracker M/H, space-party M/H, tool-library H (Accountant moderate is clean), food-truck M, school-consolidation H, mobile-app M/H, wearable-device M/H, career-change M/H (both now High post-Rev 2), property-management M, youth-mentorship M.
- **Medium (6):** tool-library M (Politician-strength label), food-truck H (Politician-moderate), property-management H (Accountant-vs-Politician for second slot), youth-mentorship H (Politician-moderate), school-consolidation M (new — Politician-vs-Accountant tiebreaker under calibration principle).
- **Low (0):** No cells rose to Low. Ambiguity exists but all calls are defensible on the written rubric.

**Lower-confidence clustering (updated Rev 2):** The Medium-confidence cells now cluster on three patterns:

1. **Second-slot choice at high effort** (property-management, youth-mentorship, food-truck): the 0-2 ceiling forces a choice among moderate triggers when 2+ moderates exist. Scoring is designed to treat these as acceptable-either via the ambiguity flag.
2. **Strong-vs-moderate boundary** on stakeholder-politics topics (tool-library medium): the selection guide's strong-trigger language for Politician ("governance, coalition, regulatory dynamics, institutional change") is not a clean fit for community-organization topics with stakeholder complexity but no governance-structure or coalition-vote dimension. R6 simultaneously notes Politician produces useful output "for any topic with stakeholder complexity" — creating genuine calibration tension.
3. **Tiebreaker at a ceiling** (school-consolidation medium, new Rev 2): two strong triggers (Politician, Accountant) contend for one slot at medium. Both fit the strong-trigger bar on this REQUEST; the call rests on weighing decision-process-centrality (vote, coalition, identity resistance) against decision-cause-centrality ($28M budgets, structural deficits, 2-year-to-insolvency smallest district, per-pupil formula). This is the same structural pattern as property-management high, just at a tighter ceiling.

**Persona judgments with lower confidence:**
- **Politician-at-strong** (tool-library medium): the weakest strong-trigger call in the set.
- **Accountant-at-strong-tied-with-Politician** (school-consolidation medium, new Rev 2): both triggers are strong; the tiebreaker is interpretive.
- **Accountant-at-moderate** (tool-library high): financial complexity without financial-structure-central framing. (career-change high, previously on this list, has moved off — Rev 2 calibration-principle clarified that this fires definitively at moderate.)

---

## 3. Ambiguous Cases

Per Q2 (discussion-questions-responses.md), ambiguous cells are scored as "acceptable either way." **Scoring rule is fixed — not a GT1 recommendation.** This section only identifies and justifies the ambiguity.

### Fully Ambiguous Cells (5)

| Cell | Plausible Answer A | Plausible Answer B | Basis for Ambiguity |
|---|---|---|---|
| **tool-library medium** | Politician (strong) | None | Politician's "stakeholder politics" trigger maps to tool-library's community-buy-in dimension, but REQUEST lacks the guide's strong-trigger markers (governance structure, coalition-for-vote, institutional change). Matt's pilot framing (Q5) anchors it as strong; a strict rubric reading could land on None. Both defensible. |
| **tool-library high** | Politician + Accountant | Politician only; or Accountant only; or None | If medium=Politician strong, high adds Accountant-moderate (nonprofit budget, maintenance, sustainability). If medium=None, high could be any of the three single-persona reads or still None. Acceptable set is broad here. **Lawyer is NOT in the acceptable set at either effort** — per Section 6, Lawyer is a trap for tool-library regardless of effort level, not a defensible alt. |
| **property-management high** | Lawyer + Accountant | Lawyer + Politician | Three strong triggers (Lawyer, Accountant, Politician) contend for two slots. Accountant edges out because REQUEST goal cites "profitable, scalable operation"; Politician argument is equally strong on "city council election" / "political process" / "community tension." Both pairs are acceptable. |
| **youth-mentorship high** | Lawyer + Politician | Lawyer only | Politician-moderate on multi-institutional coordination is defensible; an orchestrator could reasonably judge the multi-institution layer below moderate threshold and stay at 1 selection. |
| **school-consolidation medium** (Rev 2 — new) | Politician (strong) | Accountant (strong) | Two strong triggers on this REQUEST: Politician on voter approval / coalition / "our school IS our town" resistance / governance-for-unified-board; Accountant on $28M combined budgets / $4.2M deferred maintenance / smallest district 2-year-to-insolvency / state per-pupil formula penalty / structural deficits. Medium's 0-1 ceiling forces a single pick. Primary call is Politician on decision-process-centrality (the vote is the mechanism); Accountant-only is equally defensible on decision-cause-centrality (finance is why consolidation is on the table at all). Both acceptable per Q2 scoring. |

**Rev 2 delta:** career-change high removed from this list (now definitive under calibration principle — Accountant moderate is unambiguously the right answer, no longer a None-vs-Accountant toss-up). school-consolidation medium added in its place (new tiebreaker ambiguity — previously listed only as mildly ambiguous). Net: still 5 fully ambiguous cells.

### Scoring-Vigilance Cells (Rev 2 — renamed from "Mildly Ambiguous") — NOT Counted in Ambiguity Rate

These cells have an unambiguous primary answer but warrant extra attention during scoring. Rev 2 splits the former "mildly ambiguous" category into two functionally distinct subcategories:

**Soft-boundary cells** — primary answer holds, but a defensible secondary answer exists that downstream scoring should *not* reward as correct. The alt is *noted for diagnostic attention*, not accepted as correct (distinguishes these from fully-ambiguous cells where either answer scores correct).

- **food-truck high** (primary: Accountant + Politician; alt: Accountant only) — regulatory-process-engagement reads as moderate at most; a variant that produces Accountant-only is wrong under scoring but the miss is understandable. Scoring rule: Accountant-only counts as incorrect, not ambiguous-acceptable.

**Trap-adjacent cells** — primary answer holds, but a documented false-positive trap sits next to it; the risk is not "wrong-but-defensible" but "wrong-and-exhibiting-a-known-failure-mode."

- **mobile-app high** (primary: Accountant moderate; trap: Technical Expert) — under Rev 2 calibration principle, Accountant moderate is the definitive call. Technical Expert remains a documented false-positive trap (R6: "6 engineers, technical debt" reads as architectural but is product-strategy). A variant that selects Technical Expert here is exhibiting the exact failure mode R6 documented and should be scored as a specific failure class, not just a wrong answer.

**Rev 2 deltas:**
- school-consolidation medium promoted OUT of this section and INTO fully-ambiguous (tiebreaker character under calibration principle).
- mobile-app high moved from the former "mildly ambiguous" list to the new "trap-adjacent" subcategory — its distinguishing feature is the Technical Expert trap, not alternative-answer defensibility.
- food-truck high stays as a soft-boundary cell.
- Net count in this section drops from 3 to 2 but now carries two functionally distinct flags.

---

## 4. Ambiguity Rate Check

**Fully ambiguous cells:** 5 of 20 = **25%**

**Threshold:** >30% would trip the "Test set too soft — too many ambiguous cells for reliable variant discrimination" finding.

**Result:** PASS (25% < 30%). Test set has 15 unambiguous cells (75%) that support reliable variant discrimination. The 5 ambiguous cells are clustered on defensible edge-of-rubric judgments, not on weak test design.

**Note on distribution (updated Rev 2):** 3 of 5 ambiguous cells are at high effort; 2 are at medium effort. This means:
- **Medium-effort cells (10):** 2 ambiguous (tool-library medium, school-consolidation medium) = 20% ambiguity rate — still clean, but the Rev 1 characterization of medium-effort as "very clean / high-discrimination with only 1 ambiguous cell" is now weakened. Both medium-effort ambiguities stem from Politician/Accountant strong-trigger boundary cases.
- **High-effort cells (10):** 3 ambiguous (tool-library high, property-management high, youth-mentorship high) = 30% ambiguity rate — softer than medium but still reflects the genuine difficulty of the 0-2 ceiling on topics with multiple moderate/strong triggers.

The med-vs-high asymmetry has narrowed under Rev 2: previously 10% vs. 40%, now 20% vs. 30%. The school-consolidation medium tiebreaker shows that medium effort is not structurally immune to ambiguity when two strong triggers fit the topic at a 1-slot ceiling. PR1 should pay attention to both medium-effort strong-trigger *arbitration* (not just detection) and high-effort ceiling discipline.

---

## 5. Threshold-Sensitive Cells

Cells where the correct Tier 3 selection differs between medium and high effort for the same topic:

| Topic | Medium | High | Nature of Shift |
|---|---|---|---|
| tool-library | Politician | Politician + Accountant | Add Accountant at moderate (Single → Pair) |
| food-truck | Accountant | Accountant + Politician | Add Politician at moderate (Single → Pair) |
| property-management | Lawyer | Lawyer + Accountant (or Politician) | Add second strong-trigger persona (Single → Pair) |
| youth-mentorship | Lawyer | Lawyer + Politician (or Lawyer only) | Add Politician at moderate (Single → Pair) |
| school-consolidation | Politician | Politician + Accountant | Add Accountant (both strong; high's 0-2 ceiling accommodates both) (Single → Pair) |
| wearable-device | Technical Expert | Technical Expert + Lawyer | Add Lawyer (both strong) (Single → Pair) |
| **mobile-app** (Rev 2 — new) | None | Accountant (moderate) | Promote from None to Single under calibration principle (None → Single) |
| **career-change** (Rev 2 — new) | None | Accountant (moderate) | Promote from None to Single under calibration principle (None → Single) |

**Count: 8 threshold-sensitive topics** (out of 10) — well above the minimum-3 flag threshold; up from 6 pre-Rev 2.

**Threshold-insensitive cells (Tier 3 same at medium and high):**
- habit-tracker: None → None
- space-party: None → None

**Result:** PASS (8 >= 3). Test set has strong threshold-discipline validation support. O1/PR1 can validate whether variants correctly:
- Promote from None to a single moderate-trigger selection at high effort when economic content is a core decision dimension but not financial-structure-central (2 cells test this: mobile-app, career-change — Rev 2 addition).
- Add a second persona when topic has 2+ strong or strong+moderate triggers (6 cells test this).
- Correctly stay at None across both effort levels when no triggers fire (2 cells test this: habit-tracker, space-party).

**False-positive-rejection priority (Rev 2, Decision 5C):** habit-tracker and space-party are the only topics that test pure Tier 3 rejection across both effort levels — 4 of 20 cells, clustered on 2 topics. These cells are the primary discriminators for false-positive behavior: if an O1 variant produces a non-None roster for habit-tracker or space-party at either effort, it is exhibiting a **high-severity failure** (over-selection / lowered trigger bars / keyword-driven false positives). PR1 design priority: ensure the prompt's rejection discipline is calibrated such that these cells are robustly None across plausible orchestrator readings. A variant that misses on these cells has failed the test regardless of its performance elsewhere.

**Known coverage limit (Rev 2, Decision 5A):** The None→Single pattern is tested on 2 cells but both resolve to **Accountant** (via the calibration-principle path). Politician-moderate, Lawyer-moderate, and Technical-Expert-moderate at high effort from a None medium starting point are not currently tested. A variant that handles Accountant calibration correctly but fails the analogous moderate-trigger discipline for other Tier 3 personas would not be caught by GT1's 10-topic set. This is documented as a known coverage limit; PR1's iteration test suite is the natural place to add moderate-trigger cells for the other three personas if broader None→Single persona coverage becomes a priority. Not flagged as a GT1 defect because the hard minimum (3 threshold-sensitive cells) is well-cleared.

**Split (updated Rev 2):** 2 None→Single cells (mobile-app, career-change) + 6 Single→Pair cells. The Rev 1 gap — "the test set does not strongly test the None→Single promotion pattern, because all threshold-sensitive cases went Single→Pair" — is **resolved under Rev 2**. Applying the calibration principle to Accountant's moderate-trigger bar promoted mobile-app high and career-change high from None to Accountant (moderate), which makes them the first test cells to exercise the "moderate-trigger single persona that shouldn't be selected at medium but should at high" pattern. This is the exact threshold behavior a well-calibrated orchestrator at high effort must get right, and PR1 can now validate it. Closed gap — state explicitly.

---

## 6. False-Positive Traps Identified

| Topic | Persona Trap | Trap Mechanism | PR1 Prompt-Design Implication |
|---|---|---|---|
| **career-change** | **Lawyer** | Keyword "lawyer"/"attorney"/"law school" appears throughout REQUEST; R6 documents partial false positive (~20-25% useful, produces regulatory implementation guide instead of decision-exploration). | Prompt must instruct orchestrator to trigger on "regulatory/compliance exposure in the brainstorming need," not legal-domain vocabulary. Consider an explicit negative-example callout: "career-change is NOT a Lawyer trigger despite containing 'lawyer.'" |
| **career-change** | **Technical Expert** | Less keyword-driven but R6 documents clear false positive (engineering metaphors like "legacy code" for nursing experience are counterproductive). | Prompt must require "genuine technical architecture: engineering tradeoffs, hardware-software co-design, ML/AI systems" — NOT metaphorical technical-sounding language. |
| **habit-tracker** | **Technical Expert** | "Modern JS framework + cloud backend" is engineering vocabulary but conventional product-engineering, not architectural. | Same anti-keyword principle — filter on genuine architectural depth, not tech-stack mentions. |
| **habit-tracker** (Rev 2 — new) | **Accountant** | "Monetization without undermining user experience" appears as one of five key-considerations bullets; under Rev 2's calibration principle, Accountant's moderate surface widened. A weak-rubric orchestrator could fire Accountant on the word "monetization" despite the bullet being a background concern rather than a core decision dimension for a 3-month MVP. | Prompt must require economic content to be a *core decision dimension* (a gating axis of the brainstorm), not merely a mentioned concern. Calibration principle expanded the trigger; this trap is the counter-guardrail. |
| **mobile-app** (Rev 2 — updated) | **Technical Expert** | Most dangerous product-topic false positive: 6 engineers, technical debt, feature architecture — sounds architectural but is product-strategy. Under Rev 2, the correct primary answer at high is Accountant-moderate (not None as Rev 1 held), which raises the stakes: a variant could (wrongly) select Technical Expert *instead of* Accountant, or (correctly) select Accountant *and then also* wrongly add Technical Expert. | Prompt should distinguish product-engineering management from system architecture. Explicit anti-pattern: "mobile app feature pruning is not Technical Expert territory." PR1 should test variants on both the miss-the-Accountant and the spuriously-add-Technical-Expert failure modes. |
| **tool-library** | **Lawyer** | "Liability and safety concerns" is explicit in REQUEST but at Devil's Advocate depth with no specific regulatory framework. **Trap applies at both medium AND high effort** — Section 3's broad acceptable set for tool-library high ("Politician only / Accountant only / None" plus Politician+Accountant) explicitly *excludes* Lawyer; Lawyer is a shallow-keyword false positive at any effort level, not a defensible alt. | Prompt must require named frameworks (HIPAA, FERPA, specific statutes) or liability-architecture-central framing — not generic safety mentions. PR1 scoring: Lawyer's presence in tool-library's roster at either effort is a trap hit, regardless of effort level or other roster members. |
| **food-truck** | **Lawyer** | "Permits, licensing fees, regulations" read as regulatory-compliance keywords but REQUEST frames these as political-engagement topics. | Same rubric: need, not keywords. Distinguish "regulatory compliance architecture" from "political engagement with regulators." |
| ~~**youth-mentorship** Politician at medium~~ (Rev 2 — DISSOLVED under Decision 7A widen) | ~~Politician (at medium, strong bar)~~ | Previously flagged as a rubric-reading trap (mis-interpreting stakeholder complexity as stakeholder politics central). **Dissolves under Decision 7A (widen):** Politician's strong-trigger bar now explicitly includes community-stakeholder-heavy topics with meaningful stakeholder politics. Youth-mentorship M's multi-institutional coordination (faith org, schools, juvenile justice referrals) qualifies as strong under the widened bar. Firing Politician at youth-mentorship medium is no longer a trap — it's a defensible secondary call (primary remains Lawyer under current ground truth because Lawyer-strong on background checks / mandatory reporting / liability / data privacy for minors has the tighter fit). | No prompt-design work needed on this trap. Note that youth-mentorship medium may itself become a *tiebreaker* case under the widened Politician bar (Politician-strong vs. Lawyer-strong for the single medium slot) — an addition to Gap 3's downstream impact list if PR1's widening proposal is accepted. |

**PR1 design priority (updated Rev 2, post-Decision 7A):** The career-change Lawyer trap remains the single most important false-positive to defuse. Secondary priorities:
1. mobile-app Technical Expert — elevated risk under Rev 2 (two failure modes now possible).
2. habit-tracker Accountant — counter-guardrail for the Rev 2 calibration-principle expansion.

(youth-mentorship Politician at medium — previously flagged as a rubric-reading trap — dissolved under Decision 7A's widen direction for Gap 1.)

**Trap class taxonomy (Rev 2, post-Decision 7A):**
- **Keyword traps** (career-change Lawyer, habit-tracker Technical Expert, mobile-app Technical Expert, tool-library Lawyer, food-truck Lawyer, habit-tracker Accountant) — triggered by surface-level keyword matches that bypass context reading.
- **Metaphor traps** (career-change Technical Expert) — triggered by metaphorical technical-sounding language that sounds architectural but isn't.
- **Rubric-reading traps** — none currently (the only candidate, youth-mentorship Politician at medium, dissolved under Decision 7A). This trap class may re-emerge if Gap 1's widening proposal is not accepted by PR1 review.

PR1 prompt design should address keyword and metaphor traps separately; a single "be careful with keywords" instruction won't defuse metaphor traps.

---

## 7. Guide Gaps Flagged

Candidates for PR1 proposals (via `findings/PR1_proposed-guide-edits.md` per Q10 — proposals only, not silent edits).

### Gap 1: Politician "stakeholder politics" strong-trigger definition

**Location:** Selection guide Tier 3 Politician row / Topic Affinity Hints "Stakeholder politics, governance."

**Problem:** The strong-trigger language "stakeholder politics central: governance, coalition, regulatory dynamics, institutional change" is tight for cases like school-consolidation but loose for community-organization topics (tool-library, youth-mentorship) that have stakeholder complexity without governance-structure or coalition-vote dimensions. R6 notes Politician "produces genuinely useful organizational-political analysis for any topic with stakeholder complexity" — which conflicts with the narrower guide language.

**Downstream impact:** tool-library medium is the most ambiguous cell in the set specifically because of this gap. Property-management high's Accountant-vs-Politician choice also depends on how the orchestrator reads Politician's threshold.

**Direction chosen (Rev 2, Decision 7A):** **(b) Widen.** Matt's review pre-committed to widening Politician's strong-trigger bar to include community-stakeholder-heavy topics, matching R6's finding. Rationale: R6's empirical finding — Politician produces useful organizational-political analysis for any topic with stakeholder complexity — is stronger evidence than the guide's narrower written language, which was authored before R6's data existed.

**Proposal direction for PR1:** Rewrite Politician's strong-trigger bar to include "stakeholder complexity that must be navigated to achieve the brainstorm's goal" as a qualifying case alongside the existing "governance, coalition, regulatory dynamics, institutional change." Name community-organization topics explicitly (tool libraries, mentorship programs, community nonprofits with meaningful stakeholder politics) as in-scope at strong. The widened bar preserves school-consolidation-style cases as strong and adds community-stakeholder topics without requiring the orchestrator to find a governance-structure or coalition-vote hook that isn't in the REQUEST.

**Scope note:** GT1 ground truth stays unchanged under Rev 2 — tool-library M remains ambiguous (Politician-strong vs. None) because the current written guide still supports both readings; the widening is a *proposal* (Q10), not a silent edit. Once PR1's widening proposal is accepted and the guide is updated, tool-library M's ambiguity resolves to definitive Politician-strong and GT1 can be refreshed. Until then, the cell stays ambiguous and Q2 scoring (acceptable either way) applies.

### Gap 2 (Rev 2 — ELEVATED): Guide language contradicts the persona's own calibration instruction

**Status change:** Previously flagged as "ambiguous guide language" — a candidate for orchestrator-prompt clarification. Rev 2 walkthrough reclassifies this as **guide text directly contradicting the persona text**, which is stronger grounds for a guide edit proposal.

**Location:** Selection guide Tier 3 Accountant row — "Include only for topics where financial structure is central (business models, funding mechanisms, community budgeting). Topic keywords that increase selection priority: 'business,' 'nonprofit,' 'budget,' 'startup,' 'pricing,' 'revenue.'" — also mirrored in the "Selection Trigger" column of the Tier 3 effort table: "Financial structure central: 'business,' 'nonprofit,' 'budget,' 'startup,' 'pricing,' 'revenue.'"

**Problem:** The Accountant persona file (`idea-symphony/references/personas/the-accountant.md`) instructs the persona to engage at *calibrated depth* across personal, commercial, and organizational contexts:

> "Calibrate your financial depth to the economic complexity of the context — personal or informal projects (a birthday party, a hobby project) need simple budget math and cost-per-unit thinking; commercial or organizational ventures (a SaaS product, a nonprofit, a community service) warrant deeper modeling of revenue streams, operating costs, and financial sustainability. Match the formality of your financial language to the stakes of the decision — a parent choosing between glow sticks and LED lights needs a price comparison, not an ROI calculation"

This language encodes calibration as **depth of engagement**, not **threshold of engagement**. The persona's own operating instruction treats personal/resource-allocation financial content as in-scope — just at lighter depth than organizational content. The selection guide's strong-trigger language, by contrast, restricts the Accountant to topics where financial structure is central in the business/nonprofit/revenue-model sense, effectively refusing selection for personal or resource-allocation contexts even when economic content is a core decision dimension. The guide and the persona actively contradict each other.

**Downstream impact:** This contradiction is the root cause of the Rev 2 cell flips:
- career-change high (genuine financial decision: $22K loans, $45K savings, 3-year income gap, LRAP, opportunity cost at 32) — the guide's strict reading would reject Accountant; the persona's calibration instruction welcomes it at moderate depth.
- mobile-app high (runway-driven feature-cut decision: 8-month runway, 180K downloads / 8% 30-day retention / 2% DAU/MAU / 47s session as unit economics) — same pattern.
- Two Rev 2 threshold-sensitive test cells now exercise this gap directly.

**Proposal direction for PR1:** Rewrite the Accountant's moderate-trigger bar to encode calibration — e.g., "economic content is a core decision dimension, even in personal/resource-allocation contexts (career-path finance, runway-constrained product decisions, household-scale capital allocation)." Explicitly name personal-finance life decisions and runway-constrained product decisions as in-scope at moderate. Keep the strong-trigger bar tight (business/nonprofit/financial-structure-central) to preserve medium-effort discrimination, but close the contradiction at the moderate threshold. This is a guide edit, not just an orchestrator-prompt clarification.

### Gap 3 (Rev 2 — SECOND LIVE CASE): No explicit ceiling-tiebreaker guidance

**Location:** Effort Level Mapping — both the "Medium | Strong trigger only | 0-1" row and the "High | Moderate+ trigger | 0-2" row.

**Problem:** When a topic has more strong triggers than the effort ceiling allows, the guide does not specify how the orchestrator should choose which to include. This is a *tiebreaker* problem — multiple triggers all unambiguously fire, but the seat count forces a forced-choice.

**Ambiguity type:** "Pick N of >N qualifying strong triggers."

**Downstream impact:**
- **property-management high** — 3 strong triggers (Lawyer, Accountant, Politician) contend for 2 slots.
- **school-consolidation medium** (Rev 2 — new) — 2 strong triggers (Politician, Accountant) contend for 1 slot under the calibration-principle-aware read. Politician wins on decision-process-centrality (voter approval in all three districts, coalition for the vote, "our school IS our town" resistance), Accountant is genuinely strong on the decision-cause side ($28M budgets, $4.2M deferred maintenance, structural deficits, 2-year-to-insolvency smallest district, state per-pupil formula penalty). Either is defensible.

**Two cells now depend on how the orchestrator resolves ties.** This elevates the gap from "one cell, one ceiling" to "two cells across both ceilings" — the tiebreaker problem is structural, not an edge case.

**Proposal direction for PR1:** Add tiebreaker guidance, e.g., "when more strong triggers exist than the effort ceiling allows, select the N most central to the REQUEST's stated goal and decision process." For property-management high, the stated goal of "profitable, scalable operation" tilts toward Lawyer + Accountant; for school-consolidation medium, the stated goal of determining "whether a consolidation vote can succeed" tilts toward Politician. Both cells would convert from ambiguous to unambiguous under this guidance.

### Gap 4 (Rev 2 — NEW): No explicit second-slot moderate-threshold discipline

**Location:** Effort Level Mapping — the "High | Moderate+ trigger | 0-2" row, and the moderate-trigger language in each Tier 3 persona's selection-criteria row.

**Problem:** When a high-effort topic has one clear strong trigger and a candidate second persona whose signal sits at or near the moderate threshold, the guide does not specify how firmly the orchestrator should resolve the question "does this rise to moderate, or does it stay below?" This is structurally *different* from the tiebreaker problem (Gap 3) — here, the question is *whether a second trigger fires at all*, not *which of several firing triggers to pick*.

**Ambiguity type:** "Does this candidate second persona meet the moderate bar, or fall short?"

**Downstream impact:**
- **youth-mentorship high** — multi-institutional coordination (faith org, schools, juvenile justice referrals) is the Politician-moderate candidate. A variant could reasonably judge this above or below the moderate threshold. Fully ambiguous cell.
- **tool-library high** — Accountant-moderate (nonprofit budget, maintenance, sustainability) is plausibly above moderate, but contingent on the tool-library-medium Politician-strong question. Compound ambiguity: contributes to the unusually broad acceptable set on this cell.
- **food-truck high** (mildly ambiguous) — Politician-moderate on regulatory-process engagement sits close to the boundary. Primary holds, but a reasonable variant could stay at Accountant-only.

**Three cells now depend on moderate-threshold discipline at the second slot.** The structural pattern is "orchestrator confident about the primary Tier 3 pick, uncertain about whether to add a second."

**Proposal direction for PR1:** Sharpen the moderate-trigger language per persona to give the orchestrator clearer yes/no tests. For example, Politician moderate could be defined as "multiple institutional stakeholders must be *reconciled* to produce the brainstorm's output (not merely *mentioned* as context)." For Accountant moderate, the Rev 2 calibration-principle language (Gap 2) handles part of this but does not specifically address the "second-slot addition" case. PR1 should produce persona-specific moderate-bar tests that an orchestrator can mechanically apply.

**Note:** Gap 3 and Gap 4 both reduce high-effort ambiguity, but they address different failure modes. A prompt fix for Gap 3 would not resolve Gap 4 cells, and vice versa. Keeping them distinct prevents PR1 from shipping a single "just be more careful" clarification that fails to address either root cause.

### Observed but not flagged (Rev 2, Decision 7D)

**Technical Expert "engineering tradeoffs" phrasing (minor).** Sanity-check scan during Rev 2 noted that the guide's Technical Expert trigger — *"Genuine technical architecture: engineering tradeoffs, hardware-software co-design, ML/AI systems"* — leads with "engineering tradeoffs," which is broad enough to catch product-engineering-management scenarios that aren't system architecture. A weak-rubric orchestrator could latch onto the phrase and miss the "genuine architecture" framing. The two observed failure cases (mobile-app Technical Expert trap, habit-tracker Technical Expert trap) are already captured in Section 6's trap list, so the practical impact is covered without a guide edit. A possible tightening (reorder examples to lead with "hardware-software co-design" or qualify as "engineering tradeoffs *in system architecture*") is noted here for PR1 to consider if it encounters variants that miss the trap despite prompt-level guidance. Not escalated to formal Gap status because the trap list already does the work.

**Lawyer guide language was also checked (Decision 7C) and is clean.** "Trigger on need, not keywords" is explicit, the career-change false-positive is documented inline, and the R6 finding aligns with the guide's current phrasing.

---

## 8. Handoff Notes for A1 (Phase 2C Data Assembly)

Per methodology.md Parallelism note, A1 is authorized to begin assembly against this Provisional ground truth. Cells most at risk of flipping during human review:

### Highest-risk cells (rebuild likely if review flips) — updated Rev 2

1. **tool-library medium (Politician vs. None)** — The Politician-strong-trigger call rests on Matt's pilot framing. Human review could downgrade to moderate (making medium = None). If flipped, both tool-library test files (medium + high) need rebuild — high effort would likely drop to just Accountant or both-present depending on review.

2. **property-management high (Lawyer + Accountant vs. Lawyer + Politician)** — Review could substitute Politician for Accountant in the second slot. Test file rebuild for high effort only.

3. **youth-mentorship high (Lawyer + Politician vs. Lawyer only)** — Review could strip Politician. Test file rebuild for high effort only.

**Rev 2 removals from highest-risk:**
- career-change high — moved OUT. Now definitive Accountant (moderate) under the calibration principle; the Rev 1 ambiguity is resolved. Low rebuild risk.
- (mobile-app high was not previously on this list; it remains low-risk post-Rev 2 despite changing answer, because confidence stays High at both efforts.)

### Medium-risk cells (updated Rev 2)

4. **food-truck high (Politician as second)** — Review could strip Politician back to Accountant-only.

5. **school-consolidation medium (Rev 2 — new)** — now a tiebreaker case between Politician and Accountant as the single strong pick. Moved INTO medium-risk because the Rev 2 calibration-principle walkthrough showed both triggers are genuinely strong and either single-pick answer is defensible. Primary call is Politician on decision-process-centrality, but human review could substitute Accountant. Test file rebuild for medium effort only (high is unchanged).

### Low-risk cells (stable)

- habit-tracker M/H, space-party M/H, mobile-app M/H (Rev 2: both efforts High confidence — medium=None, high=Accountant moderate, both definitive), wearable-device M/H, food-truck M, property-management M, youth-mentorship M, school-consolidation H, career-change M/H (Rev 2: both efforts now High confidence, definitive calls).

### Connector/Analogist decisions — all stable

All 10 Connector/Analogist calls align with R7's explicit head-to-head findings (or follow the Analogist-default when R7 is silent). No rebuild risk from human review on swap decisions. Rev 2 did not touch any Connector/Analogist call.

### Recommended A1 assembly order (updated Rev 2)

To minimize rebuild churn:
1. **Start** with the 10 Connector/Analogist assignments and the 15 High-confidence Tier 3 cells (across both efforts).
2. **Defer** the 5 Medium-confidence cells (listed in section 2: tool-library medium, food-truck high, property-management high, youth-mentorship high, school-consolidation medium) until either (a) human review confirms them, or (b) A1's schedule forces a decision — at which point A1 assembles against Provisional and accepts targeted rebuild risk.
3. The 15-cell high-confidence core gives A1 ~25 of the 30 test files stable-on-arrival (10 Connector/Analogist calls + 15 Tier 3 cells).

**Dependency note (Rev 2, Decision 8B):** mobile-app high and career-change high are "low-risk / stable" in Section 8 contingent on the Gap 2 PR1 proposal (the Accountant calibration-principle guide edit) being accepted in PR1 review. If that proposal is rejected, both cells flip back to None and A1's rebuild count increases by 2 files. The calibration principle is treated as a pre-committed ground-truth decision in Rev 2, but its provenance rests on a PR1 proposal that hasn't been formally ratified yet.

**Handoff timing (Rev 2, Decision 8C):** A1 should **not** start assembly until this GT1 walkthrough is complete and GT1 is re-snapshot at its walkthrough-refined state. The walkthrough has already generated 3 cell flips and 4 guide-gap resolutions; starting A1 mid-walkthrough risks churn on cells that may still shift before the walkthrough ends. Once the walkthrough concludes, Matt decides whether to flip Status to Canonical or hand off the walkthrough-refined Provisional state to A1.

**Walkthrough-state pointer (Rev 2, Decision 8A):** Section 8 is preserved as a point-in-time handoff contract at Rev 2 as-written. Subsequent walkthrough decisions (6A-7D and anything after) may further reduce A1's rebuild exposure — see the Revision Log at the top of this file for any post-Rev 2 changes. A1 should re-read Section 8 immediately before starting assembly to pick up any walkthrough-driven updates.

---

## 9. Overall Assessment (Rev 3 — walkthrough-conclusion summary)

### Test set validity

All hard-flag checks pass:

| Metric | Result | Flag Threshold | Status |
|---|---|---|---|
| Ambiguity rate | 25% (5 / 20 cells) | > 30% | PASS |
| Threshold-sensitive topics | 8 of 10 | < 3 | PASS |
| Confidence distribution | 15 H / 5 M / 0 L | — | Clean, no Low cells |
| Connector/Analogist balance | 5 / 5 | — | Balanced |
| None/Selection balance (medium) | 4 / 6 | — | Provides false-positive-rejection coverage |
| None/Selection balance (high) | 2 / 8 | — | High effort leans toward selection post-Rev 2 |

### What changed across revisions

**Rev 1 → Rev 2 (calibration-principle pass).** Three cells flipped on Accountant's moderate-trigger bar:
- career-change high: None (ambiguous alt) → Accountant moderate (definitive)
- mobile-app high: None → Accountant moderate
- school-consolidation medium: Politician single → Politician primary with Accountant also strong (tiebreaker)

Rev 2 resolved the None→Single coverage gap surfaced during the walkthrough and elevated Guide Gap 2 from "ambiguous guide language" to "guide contradicts the persona's own calibration instruction."

**Rev 2 → Rev 3 (walkthrough review pass).** No cell-level answers changed. Section-level refinements across all 9 sections (see Revision Log for decision-by-decision index). Notable structural improvements:
- Trap taxonomy introduced (keyword / metaphor / rubric-reading) in Section 6.
- Guide Gap 4 added (second-slot moderate-threshold discipline) in Section 7, distinct from Gap 3's tiebreaker discipline.
- Gap 1 direction committed to "widen" — Politician's strong-trigger bar should include community-stakeholder-heavy topics per R6's empirical finding.
- A1 handoff timing deferred until post-walkthrough to avoid mid-review churn.

### State of open items for downstream tasks

**Ready for downstream consumption:**
- **A1 (Phase 2C data assembly):** 25 of 30 test files stable-on-arrival (10 Connector/Analogist + 15 High-confidence Tier 3 cells). Per Decision 8C, A1 starts after Rev 3 Canonical flip, not mid-walkthrough.
- **O1 (orchestrator prompt variant testing):** 15 unambiguous cells carry discrimination; 5 ambiguous cells score acceptable-either-way per Q2. Effort-level-split reporting required per Decision 4A.
- **PR1 (prompt refinement):** Four guide gaps queued as proposals (per Q10), with Gap 1 direction pre-committed to "widen" per Decision 7A. Trap taxonomy in Section 6 provides prompt-design targets.
- **PI1 (prompt iteration):** Requires Canonical GT1 — now unblocked.

**Carry-forward constraints:**
- mobile-app H and career-change H's Accountant-moderate status is contingent on PR1's Gap 2 proposal (calibration-principle guide edit) being accepted (Decision 8B). Rejection would flip both cells back to None.
- tool-library M stays ambiguous in Rev 3 despite Gap 1's widen commitment (the commitment is a PR1 proposal, not a silent guide edit — scope note in Gap 1).

**Known coverage limits (not flagged as defects):**
- None→Single threshold pattern tested only on Accountant (Decision 5A). Politician/Lawyer/Technical-Expert moderate-only-at-high coverage deferred to PR1's iteration test suite if needed.
- Effort-level ambiguity asymmetry (20% medium / 30% high) not captured by methodology's overall 30% flag (Decision 4A). O1/PR1 must split reporting.

### Priority guidance for PR1

The career-change Lawyer trap remains the single most important false-positive to defuse (unchanged from Rev 1). Secondary priorities updated Rev 2/3:
1. mobile-app Technical Expert — elevated risk under Rev 2 (two failure modes: miss-Accountant and spuriously-add-Technical-Expert).
2. habit-tracker Accountant — counter-guardrail for the Rev 2 calibration-principle expansion (Decision 6A).
3. Gap 1 widening proposal — resolve tool-library medium's ambiguity and youth-mentorship medium's potential rubric-reading trap.
4. Gaps 3 + 4 together — resolving both would drop high-effort ambiguity to 0%.

PR1 priority ordering among the four gaps is deferred to PR1 per Decision 7B.

### Recommendation

Rev 3 Canonical: approved for downstream consumption. The test set is suitable for O1, PR1, PI1. Guide gaps are legitimate PR1 proposal candidates (per Q10), not test-set weaknesses. Rev 2's calibration-principle pass and Rev 3's walkthrough-driven refinements together produced a test set that discriminates orchestrator-prompt variants across three distinct threshold behaviors and two distinct moderate-discipline patterns, with a 75% unambiguous bulk supporting variant comparison.

---

**Status:** Canonical (Rev 3). Approved for downstream consumption by A1, O1, PR1, PI1. Walkthrough retrospective archived in `../GT1-review-notes.md`.
