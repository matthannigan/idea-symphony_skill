---
**Status:** Canonical
---

# Phase 2B Orchestrator Selection — Ground Truth Expected Assignments

**Date:** 2026-04-18
**Author:** GT1 subagent (Opus), scoped-revision subagent (Opus), human walkthrough review (Matt)
**Inputs:** `persona-selection-guide_Phase2B.md`, R6 (Tier 3), R7 (Connector/Analogist), REQUESTS_ALL.md (10 topics), methodology.md, discussion-questions-responses.md, `../GT1-review-notes.md` (Rev 2 calibration-principle decisions)
**Scope:** 10 topics x 2 effort levels = 20 cells for Tier 3 selection + 10 Connector/Analogist decisions

---

## Revision Log

**Reading order for cold readers:** Start here → `../findings/GT1_ground-truth-assignments.md` (Section 9 for a walkthrough-conclusion summary; Sections 1–8 for full analysis) → `../GT1-review-notes.md` (Rev 2 decision rationale) → `../../../idea-symphony/guidance/phase2A_question-gen-personas.md` (guide under pressure) → R6/R7 findings for background.

**Rev 3 — 2026-04-18 — Canonical. Walkthrough review pass complete.** Human walkthrough of `../findings/GT1_ground-truth-assignments.md` sections 1–9 generated 20+ named decisions (2A-8C, 9A-9D) covering confidence calibration, ambiguity scoring, threshold-sensitivity coverage, trap taxonomy, guide-gap framing, A1 handoff, and documentation polish. Status flipped Provisional → Canonical (Decision 9C). No cell-level answers changed in this pass; all flips happened in Rev 2. Rev 3 records the review outcome: 20 cells + 10 Connector/Analogist decisions are approved for downstream consumption by A1, O1, PR1, PI1. Detailed decision log in `../GT1-review-notes.md` (post-Rev 2 walkthrough retrospective).

**Rev 2 — 2026-04-17 — Calibration-principle pass.** Scoped revision from human review walkthrough. See `../GT1-review-notes.md` for full decision rationale. Cells changed:
- career-change high: None (alt: Accountant) → Accountant (moderate), definitive
- mobile-app high: None → Accountant (moderate)
- school-consolidation medium: Politician (single) → Politician (primary) with Accountant also strong, tiebreaker case

**Rev 1 — 2026-04-17 — Initial ground truth.** Authored from persona-selection-guide_Phase2B.md, R5/R6/R7 findings, and REQUESTS_ALL.md.

---

## Confidence Criteria

**High confidence:** The REQUEST contains explicit, unambiguous trigger content that matches the selection guide's strong-trigger definition for the persona (or lack thereof for "None"). R6/R7 findings converge on this call. A reasonable orchestrator applying the guide faithfully would not plausibly arrive at a different answer. Includes cases where the topic is an R6/R7-documented strong-trigger example (e.g., wearable-device → Technical Expert, school-consolidation → Politician) or a documented false-positive trap that a faithful rubric application would still reject (e.g., career-change → no Tier 3).

**Medium confidence:** The trigger is present but context softens it (e.g., financial mentions exist but are not the primary dimension; regulatory exposure exists but stops short of specific frameworks), OR the findings are silent on this specific edge case and the call rests on a guide-consistent interpretation. A careful orchestrator could arrive at the boundary between two answers but the weight of evidence favors the chosen one.

**Low confidence:** Reasonable experts applying the same guide could defensibly disagree. The call rests on interpretation of topic intent that is not explicit in the REQUEST, or on weighing two near-equivalent triggers against a strict count ceiling (medium = 0-1, high = 0-2). All Low-confidence cells are also flagged Ambiguous.

---

## Trigger-Strength Criteria

**Strong trigger:** The persona's domain is a primary dimension of the brainstorming need — the REQUEST explicitly names the kind of content the persona uniquely produces (specific regulatory frameworks for Lawyer; unit economics/revenue models for Accountant; governance/coalition/institutional change for Politician; genuine engineering tradeoffs for Technical Expert; inter-domain system reconciliation for Connector). The orchestrator can point to a specific phrase, stakeholder, or mechanism in the REQUEST that the persona would address and no Tier 1 persona would address at equivalent depth. Passes the "R6 strong-trigger topic quality profile" bar (0-5% filler, ~60%+ unique contribution).

**Moderate trigger:** The persona's domain is a meaningful secondary dimension — present in the REQUEST but not primary. The orchestrator could justify including the persona without fabricating relevance, but the brainstorming need does not center on this persona's domain. Corresponds to R6's "weak-trigger but not false-positive" quality profile (~40-50% useful, some filler). Qualifies for inclusion at high effort; does NOT qualify at medium.

**None:** The persona's domain is absent from the REQUEST, OR the keyword presence is a documented false-positive trap (career-change's "lawyer"/"Technical Expert" coaching trap), OR the inclusion would duplicate Tier 1 coverage without adding distinctive territory. Should not be selected at either effort level.

---

## Per-Topic Assignments

### habit-tracker

**Topic characteristics:** Solo/small-team modern habit-tracker web app, MVP in 3 months, crowded market (Habitica, Streaks, HabitBull). Concerns center on differentiation, behavioral science, UX, data privacy/user trust, and monetization without undermining UX. Single primary domain (consumer web app).

**Connector/Analogist decision:** Analogist (default)
**Swap rationale:** Single clear primary domain (the web app). The REQUEST names differentiation and behavioral-science-informed UX as the value path — classic metaphorical reframing territory. R7 head-to-head labels this a tie with "default Analogist (the app is the primary domain)." No explicit bridging/merging of distinct systems that constrain each other.

**Tier 3 at medium effort (0-1, strong triggers only):**
- None — No Tier 3 persona has a strong trigger. "Monetization without undermining user experience" is a financial consideration but not financial-structure-central (no business model detail, no funding mechanism, no budgeting). "Data privacy and user trust" is mentioned but without specific regulatory frameworks (no GDPR/HIPAA/COPPA named, no data-handling regime specified). No governance/coalition. Technical Expert would be a false positive — "web app with modern JS framework" is conventional engineering, not the ML/hardware-software co-design R6 flags as the Technical Expert's strong-trigger bar.

**Tier 3 at high effort (0-2, moderate+ triggers):**
- None — Same analysis. Monetization and privacy are genuinely present but do not reach moderate threshold on their own: Analyst already covers monetization framing at Tier 1; privacy without named regulatory frameworks stays within Devil's Advocate territory. Including any Tier 3 here would be a false positive.

**Confidence:** High
**Ambiguous?** No
**Known false-positive trap:** Technical Expert — "modern JS framework + cloud backend" could bait a keyword-matching orchestrator into including Technical Expert despite no genuine engineering tradeoffs. Per R6, Technical Expert on non-architectural topics produces 17-25% filler with paradigm-reinforcement cage. The rubric requires "genuine technical architecture: engineering tradeoffs, hardware-software co-design, ML/AI systems" — web-app convention does not qualify.

---

### space-party

**Topic characteristics:** 5th birthday party for 11 children with space theme. Concerns: age-appropriate activities, manageable logistics, budget-friendly, safety for young children. Concrete, bounded, single-event planning.

**Connector/Analogist decision:** Analogist (default)
**Swap rationale:** R7 explicitly names space-party as the canonical keep-Analogist case — the Connector produces 100% import-mode output (complete mode collapse) on this topic and provides zero distinctive value over the Analogist. Single bounded event, single primary domain (children's party planning). No inter-system reconciliation. "Swap criteria not met" is as clear here as anywhere in the 10-topic set.

**Tier 3 at medium effort (0-1, strong triggers only):**
- None — No financial structure (not "budget-friendly" in the unit-economics sense — it's a consumer spending consideration). No regulatory/compliance exposure. No governance/stakeholder politics. No technical architecture. "Safety considerations" for young children is a Devil's Advocate concern, not a Lawyer trigger (no liability framework, no specific regulatory regime).

**Tier 3 at high effort (0-2, moderate+ triggers):**
- None — No moderate triggers either. This is a deliberate negative-control topic where any Tier 3 inclusion is a false positive. The orchestrator correctly selecting "None" here is a primary discriminator between variants.

**Confidence:** High
**Ambiguous?** No
**Known false-positive trap:** None specific, but any Tier 3 selection is a false positive.

---

### tool-library

**Topic characteristics:** Neighborhood nonprofit launching a community tool-lending library with a donated 500 sq ft storefront, modest budget, 8-10 committed volunteers, ~2,000 diverse households within walking distance. Concerns: sustainability beyond initial enthusiasm, equitable access for all community members, tool maintenance/replacement costs, liability and safety, building community buy-in. Single community-organization domain with multi-stakeholder community politics.

**Connector/Analogist decision:** Analogist (default)
**Swap rationale:** R7 head-to-head: Analogist wins (Connector is 63% import, only 2 recombination questions add distinctive value). Single-domain community initiative; swap criteria ("bridging, merging, or reconciling distinct systems that constrain each other") not met — the tool library is not reconciling multiple institutional systems, it is building a single community program.

**Tier 3 at medium effort (0-1, strong triggers only):**
- Politician — REQUEST surfaces multi-stakeholder community dynamics ("diverse neighborhood" mix of homeowners and renters, "building community buy-in and participation," "equitable access for all community members," "sustainability beyond initial enthusiasm" implies volunteer-base politics). Per R6, Politician produces genuinely useful organizational-political analysis "for any topic with stakeholder complexity" and the nonprofit-governance/community-coalition dimension is explicit. This is the user-framed pilot anchor (per discussion Q5: "Politician expected strong at both effort levels; unambiguous enough that a failing variant is clearly broken"). Note: confidence on the *strong* label is lower than the selection itself — see guide-gap flag below.

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Politician — Same rationale, now on moderate-or-better threshold (easier to justify).
- Accountant — Moderate trigger. "Modest budget," "tool maintenance and replacement costs," "sustainability" implies financial runway planning and unit economics of a lending-library operation. Not strong (no revenue model, no pricing — it's a nonprofit not a business) but meaningful secondary financial dimension that Accountant would fill in beyond Analyst's framework-level coverage. Per R6, Accountant is "not a false positive" on community-budget topics even without strong triggers.

**Confidence:** Medium (Politician strength label); High (Accountant at high effort as moderate)
**Ambiguous?** Yes — Politician-at-medium rests on reading "stakeholder complexity" as a strong trigger. A strict-rubric orchestrator could reasonably rate this moderate (stakeholder politics are present but not central — there is no governance structure to design, no coalition to assemble for a vote, no institutional change). In that reading, medium = None and high = Politician (moderate) + Accountant (moderate). Both readings are acceptable per Q2 scoring rule.
**Known false-positive trap:** Lawyer — "liability and safety concerns" is explicit but at the Devil's Advocate level; there is no specific regulatory framework (no licensing regime, no tool-lending statute named). A keyword-matching orchestrator could over-select Lawyer here. Per R6, Lawyer requires "regulatory exposure, not legal domain keywords."

---

### food-truck

**Topic characteristics:** Solo founder with culinary background launching a Filipino-Mexican fusion food truck in a mid-size city with ~30 active competitors, planning fleet/brick-and-mortar growth over 3 years. $60K savings + potential $40K SBA microloan. City requires permits/commissary/vending zones; pending ordinance changes would restrict downtown hours and add licensing fees. Single-business entrepreneurial challenge with pricing, unit economics, regulatory process engagement.

**Connector/Analogist decision:** Analogist (default)
**Swap rationale:** R7: Analogist wins. Despite moderate multi-domain surface (culinary + business + regulation), the domains are "all subordinate to a single entrepreneurial challenge" (per R7 summary). Single-business strategy is the canonical keep-Analogist pattern.

**Tier 3 at medium effort (0-1, strong triggers only):**
- Accountant — Strong trigger. REQUEST explicitly names "pricing strategy and unit economics (food cost ratios, break-even analysis)," "revenue diversification: daily vending vs. catering vs. event bookings," "cash flow management through seasonal fluctuations," "equipment financing vs. leasing tradeoffs," "SBA loan vs. bootstrap" — this is the R6 strong-trigger quality profile verbatim (dollar ranges, unit economics chains, cash flow modeling). R6 lists food-truck as one of the three Accountant strong-trigger topics (0-5% filler, ~60% unique).

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Accountant — Same (now meets the easier threshold a fortiori).
- Politician — Moderate trigger. REQUEST names "engaging with the regulatory process," "building relationships with city officials and the local food truck association," "pending city ordinance changes." This is small-scale political navigation (not institutional change or governance design), but it is an explicit secondary dimension. Per R6, Politician activates on any topic with stakeholder complexity and would produce useful organizational-political analysis here.

**Confidence:** High (Accountant at both levels); Medium (Politician at high)
**Ambiguous?** No for medium (Accountant is unambiguous strong); mild for high effort — Politician-as-moderate rests on the regulatory-process-engagement language. A strict reading could say high = Accountant only (Politician is weak, not moderate). Noted but not flagged as full ambiguity.
**Known false-positive trap:** Lawyer — "regulations, permits, licensing fees" is keyword-adjacent to Lawyer but the REQUEST frames this as political engagement (ordinance advocacy) not regulatory compliance architecture. Per R6, "trigger on need, not keywords." A faithful rubric application keeps Lawyer at None.

---

### property-management

**Topic characteristics:** Two-partner short-term rental management startup in a coastal city with ~800 active STR listings. New STR ordinance (permits, occupancy tax, noise monitoring, 30-min response contact), state preemption pending, HOA restrictions. Significant community tension between STR advocates and opponents; city council election in 6 months with STR regulation as a key issue. Concerns span liability structure, owner contract design, tax compliance (municipal/state/federal), insurance, financial modeling, political engagement, community positioning. Highest concentration of explicit Tier 3 triggers of any topic.

**Connector/Analogist decision:** Analogist (default)
**Swap rationale:** R7 head-to-head: tie, with "default Analogist, unless the user emphasizes the regulatory/community tension as a multi-system reconciliation challenge." The REQUEST does frame regulatory and community dimensions as interacting, but R7's judgment is that "the domains are all facets of one business operation rather than genuinely distinct systems" — it's a hospitality business navigating its operating environment, not a reconciliation of fundamentally distinct systems. Keep Analogist per default.

**Tier 3 at medium effort (0-1, strong triggers only):**
- Lawyer — Strong trigger. REQUEST names specific regulatory frameworks (city STR ordinance with permits/occupancy tax/noise monitoring/response-time requirements, state preemption, HOA restrictions), explicit liability structure ("guest injuries, property damage, contractor negligence"), contract design ("liability allocation, termination clauses, insurance requirements"), multi-jurisdictional tax compliance, insurance categories (general liability, property damage, E&O), zoning compliance. This is the R6 strong-trigger profile for Lawyer (property-management is one of R6's three named Lawyer strong-trigger topics with 80-95% useful output). The medium effort 0-1 ceiling forces a choice among three plausible strong triggers (Lawyer, Accountant, Politician); Lawyer is the sharpest match because the regulatory/liability density is highest and most Lawyer-specific.

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Lawyer — Same rationale.
- Accountant — Strong trigger. "Management fee structure, break-even per property, seasonal cash flow," "tax compliance," "financial modeling" — unit economics and modeling are explicit. Per R6, property-management is a named Accountant strong-trigger topic. Competes closely with Politician for the second slot.

**Confidence:** High (Lawyer at both); Medium (Accountant vs Politician for second high slot)
**Ambiguous?** Yes (high effort) — Accountant vs Politician for the second slot is genuinely close. Politician also has a strong trigger here: "engaging with the political process (city council, HOA boards)," "city council election in 6 months with STR regulation as a key issue," "significant tension between STR advocates and opponents," "positioning as a 'good neighbor' operation." Under strict rubric, three strong triggers exist but the ceiling is 2. The choice rests on which is more central to the brainstorming need. Accountant is selected here because (a) the REQUEST goal explicitly calls for "building a profitable, scalable operation" and (b) the 2-partner startup needs financial structure as a foundational deliverable. However, Politician is an acceptable alternative per Q2 scoring. Both (Lawyer + Accountant) and (Lawyer + Politician) are acceptable at high effort.
**Known false-positive trap:** None — all three plausible picks (Lawyer, Accountant, Politician) are genuine strong triggers, not keyword-bait. The challenge is not false positives but forcing the orchestrator to prune from 3 strong triggers to 2.

---

### youth-mentorship

**Topic characteristics:** Faith-based community organization launching one-on-one mentorship pairing adult volunteers with at-risk teens (13-17) referred by school counselors and juvenile justice. $15K seed grant, 40 interested volunteers, year-long commitments. Heavy legal/compliance layer: background checks, mandatory reporting, liability insurance, parental consent, one-on-one minor-interaction safety protocols, data privacy for juvenile-justice-referred minors. Multi-institutional (faith org + schools + juvenile justice + volunteer management).

**Connector/Analogist decision:** Connector (swap)
**Swap rationale:** R7 names youth-mentorship as a Connector-wins topic (5 of 7 questions are isomorphism mode — "social-systems topics activate isomorphism preferentially"). The REQUEST implicates multiple social systems (faith organization, school system, juvenile justice, volunteer management, child-safety frameworks) that must interoperate — the referral pipeline, safety protocols, and consent frameworks span these systems. This meets the swap criterion "multiple social systems... whose referral and safety structures must interoperate." The Connector's structural-isomorphism mode (e.g., crisis-hotline reciprocity parallels, wilderness-therapy safety paradox, food-bank referral dependencies) produces distinctive value over the Analogist's metaphorical reframing.

**Tier 3 at medium effort (0-1, strong triggers only):**
- Lawyer — Strong trigger. REQUEST names specific frameworks: "background check requirements and disqualifying criteria," "mandatory reporting obligations," "liability insurance and organizational legal protections," "parental/guardian consent frameworks," "data privacy for minors, especially those referred through juvenile justice," "boundaries and safety protocols for one-on-one interactions with minors." This matches R6's Lawyer strong-trigger profile (youth-mentorship is one of R6's three named Lawyer strong-trigger topics, 80-95% useful). Pairing adult volunteers with minors is a liability-dense operation with named regulatory domains (mandatory reporting, juvenile data privacy).

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Lawyer — Same rationale.
- Politician — Moderate trigger. Multi-institutional coordination (faith org + schools + juvenile justice + regional foundation) and stakeholder alignment across these bodies is secondary but real. Not strong (no governance structure to design, no coalition vote), but meets moderate threshold as a meaningful secondary dimension. Alternative acceptable choice: no second Tier 3 (stay at 1) — the REQUEST's other concerns (mentor training, matching, outcome measurement) are well within Tier 1 coverage.

**Confidence:** High (Lawyer at both levels); Medium (Politician as second high-effort slot)
**Ambiguous?** Yes (high effort second slot) — Politician-moderate is defensible but a strict-rubric orchestrator could legitimately pick "Lawyer only" at high effort, treating the multi-institutional layer as insufficient to reach moderate threshold. Both "Lawyer + Politician" and "Lawyer only" are acceptable per Q2.
**Known false-positive trap:** None identified — Simplifier would be a safety concern per R6 ("Simplifier's 'subtract everything possible' mode does not calibrate well to contexts where safeguards exist for good reason"), but Simplifier is fully excluded from Phase 2B and thus not on the orchestrator's Tier 3 menu.

---

### school-consolidation

**Topic characteristics:** Rural county evaluating consolidation of three K-12 districts (~1,800 students, 22% decade decline) into one unified district. $28M combined budgets with $4.2M deferred maintenance, structural deficits (smallest district has 2-year fund balance), state formula would boost per-pupil allocation 12%. Three teachers' union contracts to reconcile, 7 buildings to rationalize, voter approval required in all three districts, county board of ed commissioned feasibility study. Stakeholders include teachers' unions, parent groups, "our school IS our town" identity advocates, fiscal conservatives, state ed officials. Classic multi-institutional governance/coalition/change topic.

**Connector/Analogist decision:** Connector (swap)
**Swap rationale:** R7 names school-consolidation as a Connector-wins topic and its strongest recombination topic (4 of 8 questions). Three distinct institutional systems (districts, unions, communities) must be merged; multiple stakeholder systems must interoperate in a new governance structure. This is the canonical swap case per R7: "multiple institutional systems (districts, unions, communities, state) that must be merged."

**Tier 3 at medium effort (0-1, strong triggers only):**
- Politician (primary strong) — with Accountant also qualifying as strong; tiebreaker case. Both triggers are genuinely strong on this REQUEST:
  - **Politician side:** "any consolidation requires voter approval in all three districts," "building a coalition that can win voter approval," "governance structure for the new unified board," "managing the politics of facility closures (which towns lose 'their' school?)," "our school IS our town" identity advocates, stakeholder map spanning unions, parent groups, identity advocates, fiscal conservatives, state officials. Per R6, school-consolidation is the exemplar Politician strong-trigger topic.
  - **Accountant side:** $28M combined annual operating budgets with $4.2M deferred building maintenance, structural deficits in all three districts, smallest district 2 years from insolvency, state per-pupil funding formula penalty (consolidation would boost per-pupil allocation ~12%), $1.2M/year administrative-duplication savings, "true cost savings vs. transition costs," "budget modeling for the consolidated entity," "long-term fiscal sustainability under continued enrollment decline." Per R6, school-consolidation is a named Accountant strong-trigger topic.
  - **Tiebreaker call:** Medium's 0-1 ceiling forces a single pick. Politician wins on **decision-process centrality** — voter approval required in all three districts, coalition assembly for the vote, and the "our school IS our town" resistance make the decision mechanism itself a political one. Finance is the *cause* of why consolidation is on the table; politics is the *mechanism* by which it can actually happen. The REQUEST goal explicitly frames the analysis around "whether a consolidation vote can succeed."

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Politician — Same rationale.
- Accountant — Strong trigger (see medium row for specifics). Per R6, school-consolidation is a named Accountant strong-trigger topic (self-limits to 12 on this topic even at higher volume requests). At high effort the 0-2 ceiling accommodates both.

**Confidence:** Medium (medium-effort tiebreaker); High (high-effort)
**Ambiguous?** Yes (medium) — Politician-only vs. Accountant-only are both defensible strong single picks under the calibration principle; primary call is Politician on decision-process-centrality grounds but a strict orchestrator could land on either. Both are acceptable per Q2 scoring at medium. No (high) — both fit within the 0-2 ceiling.
**Known false-positive trap:** Lawyer — union contract reconciliation and bond obligations are mentioned, which could bait Lawyer selection. However, these are not regulatory-compliance-central; they are negotiation/finance tasks. Per the rubric, Lawyer at moderate would be a stretch here; the Politician selection subsumes the strategic-stakeholder dimension.

---

### mobile-app

**Topic characteristics:** Feature-bloated social fitness app (15 features, 6 nav tabs, 180K downloads, 8% 30-day retention, 2% DAU/MAU), 8 months of funding, 6 engineers + 1 designer + 1 PM burned out. Goal: strip to 3-4 core features and relaunch. Concerns: identifying which features matter (data vs. interviews vs. vision), handling passionate-minority user bases, communicating simplification to users, technical debt of removing integrated features, team morale ("killing your darlings"), incremental vs. clean relaunch, redefining success metrics.

**Connector/Analogist decision:** Connector (swap)
**Swap rationale:** R7 names mobile-app as a Connector-wins topic — the Connector's isomorphism mode identifies structural patterns across user needs, team capacity, business runway, and technical debt ("retention and burnout as one problem in two stakeholder groups"). Multiple stakeholder systems (users, team, investors, codebase) with structurally linked problems. Meets swap criterion "systems that constrain each other."

**Tier 3 at medium effort (0-1, strong triggers only):**
- None — The framing at medium is **product/UX-center**, not financial-decision-center. At the strong-trigger bar, no Tier 3 persona fires: there is no business-model redesign, no pricing question, no revenue-model-central framing. Regulatory: none. Political: "team morale" and "user communication" are not stakeholder-politics-central. Technical Expert: "technical debt implications of removing deeply integrated features" is conventional product/engineering management, not "genuine technical architecture: engineering tradeoffs, hardware-software co-design, ML/AI systems" per the rubric. Per R6, Technical Expert on non-architectural product topics produces filler and paradigm-reinforcement.

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Accountant (moderate) — Under the calibration principle, the Accountant fires on a moderate trigger here because economic content is a **core decision dimension** even though the topic isn't financial-structure-central. The REQUEST's central directive — "Identify the 3-4 features that represent the app's true core value, cut everything else" under "8 months of funding remaining" — is a resource-allocation decision: runway is the hard constraint that forces the feature cut, and the feature cut is what determines whether the runway is enough. The product's unit economics are also explicit in the REQUEST: 180K downloads, 8% 30-day retention, 2% DAU/MAU ratio, 47-second average session length. These are the numbers the Accountant would convert into cost-per-retained-user and runway-per-feature-kept calculations to inform which 3-4 features to keep. Per the persona text's calibration principle ("calibrate your financial depth to the economic complexity of the context… commercial or organizational ventures warrant deeper modeling of revenue streams, operating costs, and financial sustainability"), this fires at moderate depth — runway math and unit-economics analysis, not full business-model redesign.

**Confidence:** High (None at medium — product/UX framing is unambiguous at the strong bar); High (Accountant moderate at high — runway + unit-economics is textbook calibration-principle territory)
**Ambiguous?** No — medium is unambiguously None (no strong trigger fires). High is unambiguously Accountant (moderate) under the calibration principle; the medium-vs-high distinction is structurally clean (strong bar vs. moderate-or-better bar).
**Known false-positive trap:** Technical Expert — "mobile app" + "technical debt" + "6 engineers" is keyword-dense for Technical Expert but this is a product-strategy topic (feature pruning, team morale, user communication), not hardware/ML/system-architecture. Per R6, Technical Expert requires "genuine technical architecture" and flags product-topic inclusion as engineering-metaphor cage risk. Still a trap at both effort levels.

---

### wearable-device

**Topic characteristics:** Wrist-worn health monitor with on-device ML for cardiac arrhythmia and sleep apnea detection, 7-day battery target. PPG/accelerometer/skin-temp/microphone sensors, low-power MCU with NPU, 12-engineer hardware startup, Series A, 18-month runway. Explicit: HIPAA-compliance architecture for clinical partnerships; initial consumer-wellness launch with FDA 510(k) pathway later. The REQUEST's technical considerations list is a Technical Expert rubric item by item ("model architecture tradeoffs," "on-device training vs. federated learning," "sensor fusion," "battery budget allocation," "hardware-software co-design for the NPU"). Highest-density Technical Expert strong-trigger case in the set.

**Connector/Analogist decision:** Connector (swap)
**Swap rationale:** R7 names wearable-device as the cleanest Connector-wins topic ("cluster-mode alignment is cleanest in the dataset"). Multiple technical systems (hardware, ML, privacy, regulatory pathway) whose constraints interact — the Connector's Q4 "privacy = power constraint" isomorphism is cited in R7 as "the single most architecturally significant question across either persona for this topic." Meets swap criterion "multiple technical systems whose constraints interact."

**Tier 3 at medium effort (0-1, strong triggers only):**
- Technical Expert — Strong trigger. The REQUEST is the exemplar Technical Expert strong-trigger topic per R6 (wearable-device is the named benchmark: 0% filler, 50-60% distinctive contribution, genuine engineering tradeoffs with model quantization, sensor fusion at specific sampling rates, sub-5mW power budgets). Forced choice between Technical Expert and Lawyer at medium; Technical Expert wins because the architectural depth is the REQUEST's stated goal ("Architect the on-device ML pipeline and overall system design").

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Technical Expert — Same rationale.
- Lawyer — Strong trigger. "HIPAA compliance architecture for clinical partnership scenarios," "FDA regulatory strategy: consumer wellness now vs. 510(k) later," "false positive/negative tradeoffs for health alerts (liability implications)." Per R6, wearable-device is one of the three Lawyer strong-trigger topics alongside property-management and youth-mentorship.

**Confidence:** High (both)
**Ambiguous?** No — this is the clearest 2-slot high-effort case in the set.
**Known false-positive trap:** None — both picks are genuine strong triggers well-supported by R6.

---

### career-change

**Topic characteristics:** 32-year-old ICU nurse considering leaving bedside nursing (8 years) to become a public-interest attorney helping immigrants/refugees. BSN currently, would need LSAT + 3-year JD + bar. $22K nursing loans, $45K savings, $82K/year current salary. Unmarried, no children. Core questions are personal/decisional: genuine calling vs. burnout escape, financial reality, whether nursing is an asset in immigration law, LRAP programs, opportunity cost at 32, hybrid paths, emotional sustainability. Designed as a negative-control/false-positive-trap topic per R6.

**Connector/Analogist decision:** Connector (swap)
**Swap rationale:** R7 names career-change as a Connector-wins topic ("two career systems (nursing, law) that must be bridged by a single person"). Strong recombination mode activation (hybrid career paths — medical-legal partnerships, medical evidence in immigration cases). Meets swap criterion "bridging... distinct systems that constrain each other." Note: the recombination/isomorphism output is explicitly valuable here per R7 ("more directly useful for the actual career decision — they help the user see how their two worlds connect structurally").

**Tier 3 at medium effort (0-1, strong triggers only):**
- None — R6 explicitly identifies career-change as a designed false-positive trap at the strong-trigger bar. (a) Lawyer: the keyword "lawyer"/"attorney" is present but per R6 "responds to the keyword 'lawyer' and produces a regulatory implementation guide rather than decision-exploration questions (~20-25% useful)" — partial false positive. The brainstorming need is personal-decision, not regulatory compliance. (b) Technical Expert: clear false positive per R6 (engineering metaphors "legacy code" for nursing experience are counterproductive). (c) Accountant: financial content is a core decision dimension, but medium requires a *strong* trigger (financial-structure-central, per the current guide language) and this is personal-decision finance, not organizational/business financial structure. Below the strong bar. (d) Politician: career-change is a personal decision without governance/coalition/institutional-change — below strong threshold.

**Tier 3 at high effort (0-2, moderate+ triggers):**
- Accountant (moderate) — definitive. Under the calibration principle, the Accountant fires on a moderate trigger here because economic content is a **core decision dimension** even though the domain is personal rather than organizational. The REQUEST's stated goal explicitly names finance as one of three decision axes ("think through whether this career transition makes sense — financially, professionally, and personally"). The financial content is specific and weight-bearing: $22K in remaining nursing school loans, $45K in savings, $82K/year current salary dropped to zero for ~3 years of law school, loan-repayment-assistance-program (LRAP) tradeoffs for public-interest attorneys, and the explicit opportunity-cost question at age 32. Per the persona text's calibration principle ("calibrate your financial depth to the economic complexity of the context — personal or informal projects… need simple budget math and cost-per-unit thinking"), this fires at moderate depth — runway analysis, LRAP modeling, opportunity-cost quantification — not full business-model work. R6's "not a false positive" finding for Accountant on this topic aligns: Accountant produces genuinely useful decision-exploration content here, it just does so at calibrated depth. Lawyer and Technical Expert remain false positives regardless of threshold.

**Confidence:** High (None at medium — the strong-trigger bar is unambiguous here even under the calibration principle); High (Accountant moderate at high — LRAP/loans/savings/income-gap/opportunity-cost makes finance a first-class decision axis, definitively moderate)
**Ambiguous?** No — medium is unambiguously None (no strong trigger fires); high is unambiguously Accountant (moderate) under the calibration principle. The previous Rev 1 ambiguity is resolved — the calibration-principle walkthrough showed the Accountant trigger fires cleanly at moderate, making this a definitive call rather than a None-vs-Accountant toss-up.
**Known false-positive trap:** Lawyer (keyword trap — "attorney"/"lawyer"/"law school") and Technical Expert (less direct, but R6 flags the engineering-metaphor cage). These are the two primary traps the orchestrator must reject. Selecting either is a hard error regardless of effort — this remains true even after the Accountant promotion.

---

## Summary Table

| # | Topic | Connector/Analogist | Tier 3 (Medium) | Tier 3 (High) | Confidence | Ambiguous |
|---|---|---|---|---|---|---|
| 1 | habit-tracker | Analogist | None | None | High | No |
| 2 | space-party | Analogist | None | None | High | No |
| 3 | tool-library | Analogist | Politician | Politician + Accountant | Medium | Yes |
| 4 | food-truck | Analogist | Accountant | Accountant + Politician | High/Medium | Mild (high) |
| 5 | property-management | Analogist | Lawyer | Lawyer + Accountant (alt: Politician) | High/Medium | Yes (high) |
| 6 | youth-mentorship | Connector | Lawyer | Lawyer + Politician (alt: Lawyer only) | High/Medium | Yes (high) |
| 7 | school-consolidation | Connector | Politician (primary; Accountant also strong — tiebreaker) | Politician + Accountant | Medium/High | Yes (med) |
| 8 | mobile-app | Connector | None | Accountant (moderate) | High/High | No |
| 9 | wearable-device | Connector | Technical Expert | Technical Expert + Lawyer | High | No |
| 10 | career-change | Connector | None | Accountant (moderate) | High/High | No |

---

**Last Updated:** 2026-04-17
**Review Status:** Provisional (Rev 2) — calibration-principle pass applied from human review walkthrough. Downstream A1 assembly may proceed; cells flagged Ambiguous (particularly property-management high, tool-library medium, school-consolidation medium) are highest-risk for post-review rebuild.
