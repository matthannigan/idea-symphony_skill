---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_removal-mechanics-and-relaunch-approach"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Removal Mechanics and Relaunch Approach

---

## Synthesized Insights by Question

### Question 20: Mapping the load-bearing walls

**Full question**: Which features are structurally entangled in the codebase such that removing one would require significant rework to others, where are the hidden load-bearing walls — secondary effects rippling through the codebase, team identity, and remaining features that implicitly relied on the removed ones — and at what concrete debt level does "simplify" stop being a subtractive operation and become a full rearchitecting exercise that consumes the majority of runway before a single user sees a simpler app?

* **Run a dependency audit before touching any code; this is the unanimous first move.** Map data flows, API calls, shared databases, notification systems, and authentication gates across all 15 features before committing to any removal or timeline. The audit costs roughly 2 to 3 person-weeks (one to two engineers, two to three weeks) and surfaces hidden coupling now rather than during the relaunch. The concrete risk is real: you remove "meal planner" and discover the notification system, user profiles, and analytics pipeline depend on it, turning a simple removal into months of rework.

* **Make the debt level an explicit decision point, not a surprise.** The audit's real output is a rearchitect-or-accept fork: once you have real numbers (for example, "30% of removal cost is rearchitecting shared utilities" or "12 weeks of rework"), decide whether to do the deep work once with clear runway or accept messiness in specific modules and move faster. Setting a debt ceiling of two to three known rough edges keeps cleanup from consuming the runway; real numbers accelerate decisions because you negotiate with data, not fear.

* **Sequence removals to bank an early win before tackling entanglement.** The audit will reveal a few genuinely isolated features. Remove those first to prove to the team that removal is possible and to fund the deeper archaeology, rather than trying to map everything before any visible progress.

* **Decouple before deleting, and prototype the lean target.** A lower-risk variant: extract entangled features into separate services and test that remaining features still work after each extraction (about one week per major feature). Then rebuild the strongest remaining feature's data model from scratch as a two-week proof-of-concept template for the lean codebase.

* **Treat team identity as a load-bearing wall and reframe deletion as graduation.** The deepest entanglement is psychological, not architectural. Engineers who built the sleep tracker or recipe library may resist because they believe "my work mattered," and that resistance can hide real technical concerns. Involve them in the audit so they own the decision, and use language that frames removal as a feature graduating rather than failing.

* **Invert entanglement into a retention and market signal.** Deeply woven features may be the ones users depend on most. High entanglement means few users have migrated off them, making them sticky. Survey power users ("If we remove X, would you stay?") to learn which integrations are real lock-in versus ornamental, and consider grandfathering the most engaged cohort via a parallel "advanced" mode.

---

### Question 21: Incremental sunset, clean break, or parallel legacy

**Full question**: What is the estimated engineering cost difference (in person-weeks) between an incremental feature sunset and a clean relaunch, and how does that interact with the 8-month runway and the partial-simplification trap where you cut enough to alienate existing users without cutting enough to feel meaningfully simpler to new users — and have we considered a third path of maintaining a "legacy" version for existing users while building the stripped MVP in parallel, or designing the relaunch narrative so simplification feels like a bold upgrade rather than a retreat or a public admission of having "built the wrong thing for two years"?

* **Prefer a clean break over incremental sunset.** A gradual sunset leaves features in a half-deprecated state (warnings, inconsistency, broken UI) that often feels worse to users than a single decisive change, while also splitting testing effort and keeping UI sprawl alive. A clean rebuild ships faster, roughly 6 to 8 weeks for the core, because it eliminates code-review overhead on a legacy codebase and lets removal work be parallelized. A typical plan picks a hard date about 12 weeks out: build the core in a new branch, migrate user data, test, communicate, and then switch.

* **Quantify the cost difference and decide convert-versus-replace first.** The incremental-versus-clean choice is downstream of a strategic bet. Incremental sunset runs roughly 50 to 60% of a fresh build but only makes sense if you are converting existing users. A clean break is 100% of a build plus legacy support but fits a decision to replace them and accept 30 to 40% churn. Feature coupling routinely inflates "incremental" estimates (a planned 3-month sunset becomes 5 months of surgical removal if 40% of features are entangled). This sometimes makes the clean build cheaper because you build once instead of rebuilding while maintaining.

* **Budget a 2-month buffer; the 8-month runway is optimistic for a clean break.** A clean break that "should" take 4 months often takes 6 once app-store review delays, QA, repositioning, and inevitable production bugs are counted. If the simplified product is not shipping by month 6, there is no room left to course-correct.

* **Position the relaunch as "evolution, not retreat."** Frame the relaunch as a deliberate response to users who said they were overwhelmed. Foreground the three core features and present simplification as a competitive advantage against bloated rivals. The strongest version shows a concrete before-and-after of a single feature moving from buried-under-14-options to the main event, and invites existing users to help shape the new version through a lightweight "which features matter most?" survey.

* **Reduce launch risk with a feature-flag soft cutover rather than parallel infrastructure.** Deploy the simplified build to a roughly 20% beta ring for two weeks, monitor crash rates and engagement, and then flip to 100%. This buys a safety net without maintaining two codebases.

* **The parallel-legacy path is genuinely contested, and the disagreement is the signal.** One view argues for taking parallel legacy seriously, shipping a "Full" and a "Lite" version so you can test whether the simplified product actually retains better before sunsetting the full one. A middle position endorses a time-boxed (around 6-month) legacy sidecar for a deeply invested minority, proving deliberateness and buying migration runway before sunsetting with data. The opposing view rejects an ongoing parallel mobile version outright as a double-QA, double-support, confusing-messaging drain, recommending a lightweight companion web app for small passion bases instead. The unresolved trade-off is short-term cost and complexity versus a cleaner retention experiment.

---

### Question 22: The eight-month countdown and the recovery dip

**Full question**: An 8-month runway may be insufficient to absorb the relaunch dip — the period between cutting features and regaining retention momentum could itself consume 3–5 months — so what specific retention recovery timeline is baked into this plan, what is the rate-limiting step in the reinforcing dynamic that determines whether the simplified product attracts a new user base fast enough to compensate for churned users, and what is the contingency if the focused product takes 10 months to prove itself?

* **Accept and budget for early churn; you are trading total users for stickier ones.** Expect 20 to 30% of active users to uninstall in week one over lost features, and treat that loss as a filter rather than a failure because users who leave during a relaunch were half-engaged anyway. Plan for retention of remaining users to climb from 8% toward 20 to 25% within three months if the core three features are right. Budget explicitly for a flat period before recovery. Watch the net composition of the user base, not the gross headcount.

* **Redefine success metrics before relaunch so the dip is legible.** The old signals (DAU, raw session length) rewarded bloat and will make a healthy simplification look like failure. Switch to feature depth, habit formation (daily openers), onboarding completion, time-to-habit-moment, and core-feature satisfaction before launch. This way the dip can be read and acted on rather than feared.

* **Set a hard recovery target and a no-go date to force a clean decision.** Name a numeric retention checkpoint (for example, 10% 30-day retention by end of month 3) and a no-go date (around month 5) so a miss triggers an immediate pivot rather than a sunk-cost descent. The reinforcing dynamic cuts both ways: if retention does not visibly improve by month 3, team morale tanks, marketing loses its story, and the company spirals toward fundraising desperation. A workable runway allocation is roughly 2 months pre-launch, 1 month launch, 3 months stabilization, and 2 months buffer for contingencies.

* **Validate the bloat thesis before cutting; the core itself may be the real problem.** Removing features will not fix a weak core. If workout tracking is no better than Strava, Apple Fitness, or Peloton, new users will not adopt and churned users will not return regardless of UI simplicity. De-risk with a hide-don't-remove experiment (hide 12 of 15 features for a new-user cohort, or run a beta with 500 new and 500 existing power users). Gate the full relaunch on the beta clearing a retention bar of 15% at 30 days; if it stalls near 6%, the problem is the core product and should be fixed before cutting anything.

* **Name the rate-limiting step explicitly, and treat word-of-mouth as a growth engine.** Two complementary diagnoses of the binding constraint. One holds it is word-of-mouth from early converters: in fitness and wellness, if even ~20% of new users become vocal champions, that becomes the growth engine. The play is to find the single feature that earns "I tell my friends" and make it incredible, locking in early adopters with public wins in week one. The other holds it is user education and app-store momentum, since sudden churn and one-star reviews trigger negative store-algorithm effects. Mitigate by pre-announcing four weeks early, ensuring the core features beat competitors, and budgeting roughly $100 to $150K for paid acquisition.

* **Have a real contingency for a 10-month proof timeline; runway is the hard wall.** A 10-month timeline against 8 months of runway means insolvency, so secure a bridge round or investor commitment before relaunch and define a no-go date. If standalone traction stalls by mid-month 6, a partnership or acquisition path (wearables, gyms, insurers) is a viable fallback. If month 10 arrives flat, the move is to pivot deeper on a specific core use case rather than wider, supported by fast feedback loops built early. A freemium or premium tier can be soft-launched to fund the runway gap.

---

**Questions addressed**: 3
**Synthesized insights**: 18
</content>
