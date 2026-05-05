---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-05-05
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
synthesis-type: "summary"
---

# Summary: Feature-Selection Methodology and Decision Bias

**Central Tension**: With 8 months of runway, the right methodology is load-bearing — choose features through a process biased by ownership, growth-chasing, or confounded analytics, and any cut list is rearranging deck chairs; choose through methodology that surfaces real user dependency and team enthusiasm, and the choice falls out almost mechanically.

---

## Reframing the Question

This cluster is not really about *which* 3-4 features to keep. It is about how to design a selection process whose outputs are not pre-baked into its inputs. The 15-feature spread is a symptom of three upstream conditions — an unclear value proposition, an ownership-biased decision process, and structurally distorted data inputs — and the methodology, not the choice, is the load-bearing artefact.

---

## Executive Summary

The team is not yet ready to choose 3-4 features, because the precondition has not been met: no one has named, in a single sentence under 15 words, what this app is for. All seven personas converge on this — the disease is incoherent identity, not feature count. Until the team can complete "this app is the best choice for users who want to [one clear thing]" with conviction, any cut list rearranges deck chairs. The first action is not feature triage; it is asking each of the 8 team members, separately, "what does this app do?" If you get 8 different answers, that fragmentation is the diagnosis.

The current data is structurally untrustworthy. With 47-second sessions across 6 navigation tabs and a hamburger menu, "low engagement" cannot be distinguished from "navigation buried it" without a controlled test. Six personas independently propose the same intervention: rotate each candidate core feature, in turn, into the full hero slot of the home screen for two weeks — premium UX, no friction, no competing tabs — and measure the engagement lift. A 3x lift means architecture was the bottleneck; flat means demand was already absent. There is also a closing diagnostic window: because *no* feature is well-executed today, the quality-vs-demand confound is temporarily neutralized; that parity ends the moment polish begins on any feature, so the diagnostic experiments must be run now.

The methodology must defend against ownership bias at the decision point, not just at the data point. Six personas independently propose blind, anonymized voting — strip the author names from each feature, vote on metrics alone, then reveal identities and inspect the gap. Four personas argue defense itself should be structurally forbidden during the vote: a 72-hour moratorium on advocacy, delegated critique by someone with no attachment, or the harder inversion of having builders argue *for* removal. Three personas reframe sunk cost as future cost — "if we had zero code, would we build this next?" — which is a different question that makes vision and data answer the same prompt rather than pulling in opposite directions.

The 8-month runway changes which type of error is recoverable. Three personas converge sharply on an asymmetric error budget: cutting the right features kills the product instantly with no recovery; shipping the wrong features kills it slowly, with course-correction available mid-runway. Vision errors are catastrophic at this runway; data errors are recoverable. That asymmetry should be named explicitly before any vote — not as abstract risk, but as the actual structure of the decision: which direction (overstretching on vision or playing it too safe on data) is more likely to burn the runway before the team knows whether the choice was right? In parallel, all seven personas converge on the depth-vs-growth reversal: do not chase 15% retention; first benchmark 3-5 comparable apps to see whether 8% is structural to the category, and if it is, optimize for the depth and unit economics of the 14.4K engaged users rather than for growth that the category will not allow.

The team itself is part of the decision function, not a downstream consequence of it. All seven personas treat the 6 engineers, 1 designer, and 1 PM as a leading indicator: an excited team owning fewer features will polish, defend, and improve them; a burned-out team maintaining features it resents will produce mediocre outputs that compound the burnout. Pair the user-data signal with a 1-10 enthusiasm score, and where they conflict sharply, take the conflict as a flag rather than a tiebreaker. The same seven-persona convergence holds for handing real decision authority — not consultation, not surveys — to 8-40 retained users through a feature council, a co-design Slack, or a generative roadmap-proposal sprint; the shift from "users consuming" to "users shaping" generates retention by itself.

---

## Key Themes

### Diagnose Before Cutting
A seven-persona convergence: any feature decision applied before the value proposition is named will produce a smaller incoherent product, not a focused one. The diagnostic protocol is operational — under 15 words, eight team members asked separately, alignment failure if eight answers diverge. The Pragmatist's "single north star" and the rejection of multi-part value propositions are two faces of the same diagnostic gate.

### Architecture vs. Scope is the First Question
Six personas converge on hero-slot rotation as the structural test that resolves the quality-vs-demand confound. The diagnostic window is open *now* because no feature has been well-executed — universal poor execution temporarily neutralizes the confound — and that window closes the moment polish begins. The same logic supports complementary signals beyond engagement counts: re-engagement on day 2 / day 7, switching cost (would users seek another app or just stop caring?), task-completion rate, and entry-point analysis.

### Build for Survivors, Not Strangers
Seven personas converge on designing exclusively for the 8% who stay. The 92% who left are not coming back; chasing them produces feature bloat. The operational target: find the moment users feel genuinely *capable* (not satisfied) within 20 seconds of opening the app, pull session replays from users returning 5+ times in a month, pair with sentiment analysis of App Store reviews mentioning specific features by name, and rebuild the navigation around amplifying that capability moment.

### Triage by Breakage, Not Click-Counts
Six personas converge on a triage reframe: replace "which features are most used?" with "which features, if they broke at midnight, would generate support tickets by breakfast?" Vital features generate 50+ tickets in 24 hours; vanity features generate fewer than 5. The most useful refinement is the high-vital, low-usage cell — features users depend on but cannot find or use; those need fixing or surfacing, not cutting. The complementary churn-cohort analysis (features churned users *never* used = they didn't come for them) sharpens the cut list.

### Decouple Judgment from Ownership
Six personas converge on blind anonymized voting as the cleanest mechanism to surface ownership bias; four go further and propose structurally forbidding defense during the vote (72-hour advocacy moratoria, delegated critique, or paying builders to argue against their own work). Three add an external check: a strategist or peer with zero stake. The shared insight is that internal alignment may be social pressure, not genuine consensus, and the methodology must be built to surface the difference. A complementary inversion: reframe sunk cost as future cost — "if we had zero code, would we build this next?" — which forces vision and data to answer the same question.

### The Asymmetric Error Budget
Three personas converge sharply on the runway-asymmetry analysis: vision errors are unrecoverable in 8 months; data errors buy mid-runway course corrections. This does not dictate the choice but reframes the conversation: name the actual risk trade-off out loud before the vote — which direction (overstretching on vision or playing it too safe on data) is more likely to burn the runway before the team knows whether the choice was right?

### Test the Ceiling Before Trying to Break It
Seven personas agree: do not argue about whether 8% is the structural ceiling — measure. Benchmark Strava, Nike Training Club, and 2-3 other social fitness apps on 30-day retention. Industry baselines from the responses suggest meditation apps cluster at 5-8%, workout trackers at 8-12%, social platforms at 40-60%. If comparables cluster at 5-15%, the ceiling is category-structural and the optimization function flips from "raise retention" to "deepen the value of the cohort that does retain." If comparables are at 25%+, execution is the constraint, not the market.

### Team Health Is the Product
A seven-persona convergence: team enthusiasm is a leading indicator of execution quality, not a downstream consequence of feature choice. A 1-10 enthusiasm score per feature, a "feature you'd put on your resume" question, or a feature draft all surface the same signal: features the team is excited to own get polished and defended; features the team resents rot. Where the data and the enthusiasm signal disagree sharply, that's a flag for further investigation, not a tiebreaker either way.

### Users Co-Design with Real Authority
A seven-persona convergence on participatory user co-design: 8-40 retained users with binding decision authority — feature council with 3 votes/month, 100-point bidding budget, confidential Slack co-creation sprint, design advisors with consequence ownership, or a feature marketplace with weekly user voting. The methodology distinction matters: pair *generative* research ("what would you build?") with the binding authority, not *evaluative* research ("rate these"); the latter constrains users to the current feature menu and cannot surface what's missing.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run the value-proposition diagnostic in week one: each of 8 team members writes, separately, a single sentence under 15 words for "what does this app do?" — if you get 8 different answers, freeze feature decisions until the team can converge on one.
- Run a hero-slot rotation experiment in parallel for the top 3 candidate features for two weeks each — do this *now*, before any polish work starts, while the universal-poor-execution parity still neutralizes the quality-vs-demand confound.
- Benchmark 30-day retention for Strava, Nike Training Club, and 2-3 other social fitness apps before any retention strategy debate; settle the structural-ceiling question with data, not opinion. Run the LTV math on the 8-10% retained cohort with aggressive monetization in parallel.
- Run the blind, anonymized feature vote — strip author names from each feature; vote on metrics alone; reveal identities and inspect the gap. Pair with a 72-hour moratorium on advocacy during the vote.
- Pre-commit kill criteria with an outsider holding the kill switch: "If 7-day retention for Feature X stays below 5% by [date], we cut it." Hand the authority to someone outside the feature team — they cut unilaterally if criterion is met.
- Name the asymmetric error budget out loud at the start of the cut-list meeting: vision errors are unrecoverable at 8 months; data errors are recoverable. Weight the conversation accordingly.

### Near-term (3-12 months)
- Pair the user-data signal with a 1-10 team-enthusiasm score per feature; where they disagree sharply, treat as a flag, not a tiebreaker — test the feature with a different team or contractor before deciding.
- Recruit 8-40 retained users into a binding-authority feature council (3 votes/month, or a 100-point bidding budget, or a confidential co-design Slack); pair with generative-not-evaluative research.
- Ship the radical-MVP experiment ("Version 2.0: Focused") with a single feature and public framing: "We're testing radical simplicity, tell us what you need." Watch the temporal pattern of complaints — 24-48 hour complaints = vital; week-old complaints = nice-to-have; silence at 30 days = decorative.
- Run the controlled-degradation experiment (polish 3, deliberately degrade 12) for 1-2 weeks with retained users — surface what users dig for despite wreckage. Pair with the inverse experiment (break one feature, leave the rest pristine) to separate "easy to find" from "actually wanted."
- Triage by breakage: rank each feature by projected support-ticket volume in the first 24 hours if it broke at midnight tonight. Score 50+ = vital; <5 = vanity.
- Operationalize the delight-moment instrumentation: pull session replays from users returning 5+ times in a month, run sentiment analysis on App Store reviews mentioning features by name, and identify the under-20-second sequence that converts users to retention.
- Map feature dependencies and technical debt before final cuts: if 12 of 15 features share authentication or social-graph infrastructure, "fewer features" doesn't mean "simpler app." Run an engineer-by-engineer technical-debt vote — "which 3 features would you remove to cut your technical debt in half?" — and distinguish bad code from interconnected code.

### Long-term (1+ years)
- If 30-day retention for comparable apps clusters at 5-15%, treat 8% as the floor, not the ceiling: shift the optimization function to depth and unit economics — premium pricing, evangelist features, possibly a seasonal/cyclical engagement model rather than a daily app.
- If users participating in a binding-authority co-design process surface a different product (e.g., team challenges rather than solo tracking), consider sliding under the ceiling — relaunch as a different category with different retention expectations.
- Define success in team-health terms first, product metrics second: zero unplanned time off due to burnout, 100% of team delivers at least one feature built from scratch, daily standup under 15 minutes. Use leading indicators (calendar focus blocks, productive code reviews) to catch burnout before it gets catastrophic.
- Write the behavioral assumption underlying each retained feature in a single sentence (e.g., "this feature assumes users want X and will Y if delivered well"); audit it against current data quarterly. Trace each assumption forward as a consequence chain and check whether each link is supported.

---

## Key Considerations

**Opportunities**:
- The closing diagnostic window: universal-poor-execution parity *temporarily* neutralizes the quality-vs-demand confound. Run hero-slot rotation experiments now, before polish work starts, or the diagnostic vanishes.
- The 180K downloads as a revealed-preference signal: people tried the product for a reason; the question is what made the 8% return. The retained cohort can name it in one word — "workout" / "community" / "progress" — and that word should drive the cut list.
- The narrative-control reversal in destruction-as-research: shipping a single-feature "Version 2.0: Focused" reframes the relaunch from "we're killing features" to "we're asking you what you actually need" — the agency shift is itself part of the retention mechanism.
- The team-bandwidth math: 8 months × 7 people = 2,800 engineer-hours. Five well-built features at 4x polish per feature beats fifteen half-built ones; the constraint is real and forces quality.

**Risks & Challenges**:
- Cutting the right features kills the product instantly with no recovery. Vision errors are catastrophic at 8-month runway in a way data errors are not — this asymmetry must be named before the cut-list vote, not after.
- Internal alignment that looks like consensus may be social pressure. Six-persona convergence on blind anonymized voting and three-persona convergence on external-check are responses to this risk, not redundancies.
- "Fewer features" doesn't mean "simpler app" if 12 of 15 share underlying infrastructure. The dependency audit must precede the cut decision; otherwise the team retains the same complexity with fewer feature surface areas to amortize it across.
- A simplification that cuts a feature with good metrics because the team hates maintaining it can be the right call (morale compounds) or wrong call (target customers loved it). Where data and team enthusiasm misalign sharply, test the feature with a different team or contractor before deciding.
- Friction-as-filter and surface-errors-for-3-days experiments are aggressive; users may treat them as actual product failures rather than diagnostics. Bound them to retained users and 1-2 week timeboxes with explicit messaging.

**Trade-offs**:
- Vision vs. data: vision errors are unrecoverable; data errors are recoverable. With 8 months of runway, the burden of proof should sit heavier on vision-driven keeps than on data-driven cuts. Three personas converge on this asymmetry, and it should structure the conversation.
- Team excitement vs. user demand: where they conflict, treat the conflict as information about the product-market fit rather than a binary choice. The Devil's Advocate's heretical extension — build a different team around the simplified product — is the limit case of taking team enthusiasm seriously.
- Growth vs. depth: optimizing for 15% retention when the category caps at 8% wastes runway; optimizing for the depth and unit economics of 14.4K engaged users may produce a $500K/year sustainable niche product. Speed-vs-retention also enters the math: 13% retention over 18 months may be worse than 8% retention over a focused 4-month sprint that captures the niche first.
- User agency vs. founder vision: the seven-persona convergence on binding user authority is real, but ceding strategic control is psychologically difficult. There is no safe choice here, only different risks — and the trade-off should be named explicitly rather than papered over.
- Speed vs. clarity in destruction-as-research: 4-6 weeks of single-feature operation gives clarity plus user buy-in, but costs runway compared to a 1-week data audit. The trade-off is real; pick deliberately.

---

**Questions addressed**: 11
**Key insights synthesized**: 56

<!-- self-check -->
(a) **Targeted axis**: C-summary (Mode 2B — undercount-when-persona-reframes). The risk being tested is whether the regenerated summary undercounts convergence when one or more personas reframe the same underlying claim with different language.

(b) **BL1 expected counts**:
- TL-19 (asymmetric error budget — vision errors catastrophic, data errors recoverable): **3/7** (Analogist, Provocateur, Systems Thinker)
- TL-20 (participatory user co-design with binding decision authority): **7/7** (all seven personas)
- TL-22 (test the 8% retention ceiling empirically; optimize for depth if structural): **7/7** (all seven personas)

(c) **Regenerated summary counts**:
- TL-19: "**Three personas** converge sharply on an asymmetric error budget" (Executive Summary, paragraph 4) and "**Three personas** converge sharply on the runway-asymmetry analysis" (Key Theme: The Asymmetric Error Budget) — **3/7** ✓
- TL-20: "**all seven personas** converge on the depth-vs-growth reversal" — wait, that's TL-22; for TL-20: "**The same seven-persona convergence** holds for handing real decision authority… to 8-40 retained users" (Executive Summary, paragraph 5) and "**A seven-persona convergence** on participatory user co-design" (Key Theme: Users Co-Design with Real Authority) — **7/7** ✓
- TL-22: "**all seven personas** converge on the depth-vs-growth reversal" (Executive Summary, paragraph 4) and "**Seven personas agree**: do not argue about whether 8% is the structural ceiling — measure" (Key Theme: Test the Ceiling Before Trying to Break It) — **7/7** ✓

(d) **Verdict**: **PASS** — All three convergence counts (TL-19=3/7, TL-20=7/7, TL-22=7/7) match BL1 expected counts; broad-inclusion convergence-count discipline successfully recognized that personas with reframed language (Constraint Flipper's "accept the ceiling and optimize for depth," Pragmatist's "what if we never grow beyond 15K MAU," First Principles' "optimize for unit economics" — all of which BL1 counts under TL-22 even though their framings differ) belong in the same convergence count as personas using the canonical "8% ceiling" framing.
