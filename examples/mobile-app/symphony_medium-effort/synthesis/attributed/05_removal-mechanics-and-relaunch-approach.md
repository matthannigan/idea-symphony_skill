---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_removal-mechanics-and-relaunch-approach"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: Removal Mechanics and Relaunch Approach - With Attribution

---

## Synthesized Insights by Question

### Question 20: Mapping the load-bearing walls

**Full question**: Which features are structurally entangled in the codebase such that removing one would require significant rework to others, where are the hidden load-bearing walls — secondary effects rippling through the codebase, team identity, and remaining features that implicitly relied on the removed ones — and at what concrete debt level does "simplify" stop being a subtractive operation and become a full rearchitecting exercise that consumes the majority of runway before a single user sees a simpler app?

* **Run a dependency audit before touching any code; this is the unanimous first move.** All four perspectives open with the same instruction: map data flows, API calls, shared databases, notification systems, and authentication gates across all 15 features before committing to any removal or timeline. The audit costs roughly 2 to 3 person-weeks (one to two engineers, two to three weeks) and exists to surface hidden coupling now rather than discover it mid-relaunch. The shared fear is concrete: you yank "meal planner" and find the notification system, user profiles, and analytics pipeline were all wired through it, turning a "simple removal" into a multi-month rewrite.
  * **Map data flows and API calls first; document orphaned code paths.** A three-day internal sprint with two engineers tracing each feature's tendrils, costing ~2 person-weeks, prevents surprise rework that burns another month later. *—The Pragmatist*
  * **Mandatory 2-week codebase audit with D3 dependency visualization before cutting.** Assign one engineer to trace every feature-to-feature integration and surface hidden coupling before committing to the relaunch timeline. *—The Devil's Advocate*
  * **A rough dependency audit surfaces 2–3 isolated features that can vanish in a sprint.** Start there to prove removal is possible, then fund a deeper 2–3 week archaeology phase. *—The Momentum Builder*
  * **Use the dependency graph as a value map.** Spend a week mapping before touching code; every tangled connection highlights a real user behavior. *—The Constraint Flipper*

* **Make the debt level an explicit decision point, not a surprise.** Several perspectives agree that the audit's real output is a clear rearchitect-or-accept fork: once you have real numbers (for example, "30% of removal cost is rearchitecting shared utilities" or "12 weeks of rework"), you decide deliberately whether to do the deep work once with clear runway or accept messiness in specific modules and move faster. Working with real numbers accelerates decisions because you are negotiating with data, not fear.
  * **Archaeology revealing 30% rearchitecting cost is clarity, not a setback.** Make the trade explicitly: extract and simplify the whole stack, or accept debt in specific modules and move faster. *—The Momentum Builder*
  * **Set a "debt ceiling" of 2–3 known rough edges, then move on.** Keep analytics and stub out meditation endpoints; unfinished deletion is faster than perfect cleanup. You need users opening the app, not perfect architecture. *—The Pragmatist*

* **Sequence removals to bank an early win before tackling entanglement.** The audit will reveal a few genuinely isolated features. Remove those first to prove to the team that removal is possible and to fund the deeper archaeology, rather than trying to map everything before any visible progress.
  * **Prove removal is possible with 2–3 isolated features first.** That momentum matters more than mapping everything; use the first clean removal to fund deeper codebase archaeology. *—The Momentum Builder*

* **Decouple before deleting, and prototype the lean target.** A lower-risk variant: extract entangled features into separate services and test that remaining features still work after each extraction (about one week per major feature), then rebuild the strongest remaining feature's data model from scratch as a proof-of-concept template for the lean codebase.
  * **Incremental extraction plus parallel testing; ~1 week per major feature.** Move marketplace notifications to a separate service, isolate the coaching data model, test after each extraction to catch broken dependencies before users do. *—The Pragmatist*
  * **Rebuild workout tracking's data model from scratch as a ~2-week proof-of-concept.** Gives a template for the lean codebase and clarifies what debt you are accepting elsewhere. *—The Pragmatist*

* **Treat team identity as a load-bearing wall and reframe deletion as graduation.** A distinct angle: the deepest entanglement is psychological, not architectural. Engineers who built the sleep tracker or recipe library may resist on the grounds that "my work mattered," and that resistance can mask real technical concerns. Involve them in the audit so they own the decision, and use language that frames removal as progress rather than failure.
  * **Frame the first removed feature as "graduating it."** It worked, served its purpose, and now we evolve; that language shift turns deletion into momentum. *—The Momentum Builder*
  * **Involve engineers in the dependency audit so they own the cuts.** Resistance can disguise real technical concerns; frame cuts as "doubling down on what worked," not "your features failed." *—The Devil's Advocate*

* **Invert entanglement into a retention and market signal.** A single-persona reframe worth holding alongside the audit: deeply woven features may be the ones users depend on most, and high entanglement means few users have migrated off them, making them sticky. Survey power users ("If we remove X, would you stay?") to learn which integrations are load-in (real lock-in) versus ornamental.
  * **Entanglement as a clarity signal; technical debt as a retention asset.** Grandfather power users via a parallel "advanced" mode and convert sticky debt into a loyalty program; dependency analysis doubles as market research. *—The Constraint Flipper*

---

### Question 21: Incremental sunset, clean break, or parallel legacy

**Full question**: What is the estimated engineering cost difference (in person-weeks) between an incremental feature sunset and a clean relaunch, and how does that interact with the 8-month runway and the partial-simplification trap where you cut enough to alienate existing users without cutting enough to feel meaningfully simpler to new users — and have we considered a third path of maintaining a "legacy" version for existing users while building the stripped MVP in parallel, or designing the relaunch narrative so simplification feels like a bold upgrade rather than a retreat or a public admission of having "built the wrong thing for two years"?

* **Prefer a clean break over incremental sunset; three of four perspectives converge here.** The shared logic: a gradual sunset leaves features in a half-deprecated state (warnings, inconsistency, broken-feeling UI) that often feels worse to users than a single decisive change, while also splitting testing effort and keeping UI sprawl alive. A clean rebuild ships faster (roughly 6 to 8 weeks for the core) because it eliminates code-review overhead on a legacy codebase and lets removal work be parallelized. The Devil's Advocate is the partial dissenter, accepting a clean break only with a 2-month buffer and warning the 8-month runway is optimistic for one.
  * **Clean break ~6–8 weeks; incremental 12+ and fails.** Pick a hard date 12 weeks out: weeks 1–6 build the core in a new branch, 7–10 migrate user data and test, 11 comms, 12 switch. *—The Pragmatist*
  * **Clean break is jarring once, then you rebuild goodwill; incremental feels worse.** A 4-week parallel relaunch as a new version creates narrative momentum; new users aren't fighting "why did you take away X?" *—The Momentum Builder*
  * **Clean break as cost-saver and forcing function.** If maintaining both paths exceeds one clean rebuild, the clean break is cheaper; the speed becomes a feature. *—The Constraint Flipper*
  * **A clean break that "should" take 4 months often takes 6.** Add a 2-month buffer for app-store review, QA, repositioning, and production bugs; if you're not shipping by month 6, you're out of room to course-correct. *—The Devil's Advocate*

* **Quantify the cost difference and decide convert-versus-replace first.** A load-bearing framing: the incremental-versus-clean choice is downstream of a strategic bet. Incremental sunset runs roughly 50–60% of a fresh build but only makes sense if you are converting existing users; a clean break is 100% of a build plus legacy support but fits a decision to replace them and accept 30–40% churn. Decide which population you are betting on before estimating, because feature coupling routinely inflates "incremental" estimates (a planned 3-month sunset becomes 5 months of surgical removal if 40% of features are entangled), sometimes making the clean build the cheaper option.
  * **Incremental is 50–60% of a fresh build; clean break is 100% plus legacy support.** Decide first whether you're converting existing users or replacing them and accepting 30–40% churn; the cost difference is massive. *—The Devil's Advocate*
  * **"Incremental" estimates underestimate coupling.** A 3-month plan becomes 5 months if 40% of features are entangled; sometimes a clean break is cheaper because you build once instead of rebuilding-while-maintaining. *—The Devil's Advocate*

* **The "evolution, not retreat" narrative is unanimous.** All four agree the relaunch should be positioned as a deliberate response to users who said they were overwhelmed, foregrounding the three core features and framing simplification as a competitive advantage against bloated rivals. The strongest version shows a concrete before-and-after of a single feature moving from buried-under-14-options to the main event.
  * **"We listened to overwhelmed users and built the focused product they wanted."** Highlight the three core features, emphasize speed and clarity; this 1–2 week messaging work offsets churn psychology. *—The Pragmatist*
  * **"We're rebuilding to do three things perfectly" — a rebirth, not a retreat.** Show before-and-after of the core workout tracker; that's upgrade energy. *—The Momentum Builder*
  * **Weaponize the simplification: frame each removal as a "focus upgrade."** "We're removing X to get better at Y"; users respect product decisiveness. *—The Constraint Flipper*
  * **Invite existing users to shape v2.0.** A lightweight "which of these 3–4 features matter most?" survey gives users agency and makes them part of the relaunch. *—The Constraint Flipper*

* **Reduce launch risk with a feature-flag soft cutover rather than parallel infrastructure.** A pragmatic middle path between clean break and parallel legacy: deploy the simplified build to a ~20% beta ring for two weeks, monitor crash rates and engagement, then flip to 100%. This buys a safety net without maintaining two codebases.
  * **Soft cutover with feature flags; 20% beta ring for 2 weeks, then flip to 100%.** Costs one engineer's flag-wiring time and radically reduces launch risk without parallel infrastructure. *—The Pragmatist*

* **The parallel-legacy path is genuinely contested, and the disagreement is the signal.** This is the cluster's sharpest divergence. The Devil's Advocate argues for taking parallel legacy more seriously as a way to test whether the simplified product actually retains better before sunset-dating the full version. The Constraint Flipper and Momentum Builder endorse a time-boxed legacy sidecar for deeply invested minorities. The Pragmatist rejects an ongoing parallel mobile version outright as a double-QA, double-support, confusing-messaging drain, recommending a lightweight companion web app instead.
  * **Take parallel legacy more seriously: ship "Full" and "Lite" and let users choose.** Costs more short-term but tests whether the simplified product retains better before you commit to a sunset date. *—The Devil's Advocate*
  * **A 6-month "legacy build" sidecar proves you're deliberate, not callous.** Buys runway while invested users migrate; after 6 months the data may show the feature is tiny, and you sunset it with proof. *—The Momentum Builder*
  * **"Legacy + new MVP" is a beachhead, not overhead.** Existing users migrate naturally as the new version gains traction, avoiding the public-retreat narrative. *—The Constraint Flipper*
  * **Parallel legacy is expensive and risky; do a web companion instead.** Two QA cycles, two support streams, and users resent being on "old" software; for a 200-user passion base, a 2-person-week companion web app beats a parallel mobile version. *—The Pragmatist*

---

### Question 22: The eight-month countdown and the recovery dip

**Full question**: An 8-month runway may be insufficient to absorb the relaunch dip — the period between cutting features and regaining retention momentum could itself consume 3–5 months — so what specific retention recovery timeline is baked into this plan, what is the rate-limiting step in the reinforcing dynamic that determines whether the simplified product attracts a new user base fast enough to compensate for churned users, and what is the contingency if the focused product takes 10 months to prove itself?

* **Accept and budget for early churn; you are trading total users for stickier ones.** Strong convergence: expect 20–30% of active users to uninstall in week one over lost features, and treat that loss as a filter rather than a failure, because users who leave during a relaunch were half-engaged anyway. Plan for retention of remaining users to climb from 8% toward 20–25% within three months if the core three features are right, and budget explicitly for a flat period before recovery.
  * **Expect 20–30% week-one uninstalls; remaining-user retention jumps 8% → 20–25% by month 3.** You're trading total users for stickier users; new acquisition accelerates by month 4 once the app stops overwhelming. *—The Pragmatist*
  * **Churn is a filter, not a loss.** Budget 2 months of growth flatness, then expect recovery stronger than the original baseline; the post-launch cohort is higher-quality. *—The Constraint Flipper*
  * **Watch the net composition, not the gross number.** "Held the core, +500 new, net −1,500, but the 500 are more engaged" is the signal you're hunting, not a failure. *—The Momentum Builder*

* **Redefine success metrics before relaunch so the dip is legible.** Several perspectives agree the old signals (DAU, raw session length) rewarded bloat and will make a healthy simplification look like failure. Switch to feature depth, habit formation (daily openers), onboarding completion, time-to-habit-moment, and core-feature satisfaction before launch, so you can read the dip rather than panic over it.
  * **Replace bloat-era metrics with feature depth, habit formation, and core-feature NPS.** Measuring engagement differently makes the dip look less scary; old-metric "failure" can be new-metric success. *—The Constraint Flipper*
  * **Instrument the dip into a roadmap.** Track onboarding drop-off and time-to-habit-moment; within 2–3 weeks you'll know whether the issue is "feels empty," "value not understood," or "cut something critical." *—The Momentum Builder*

* **Set a hard recovery target and a no-go date to force a clean decision.** Convergence on decision discipline: name a numeric retention checkpoint (for example, 10% 30-day retention by end of month 3) and a no-go date (month 5) so a miss triggers an immediate pivot rather than a sunk-cost descent. The reinforcing dynamic cuts both ways: if retention does not visibly improve by month 3, team morale tanks, marketing loses its story, and the company spirals toward fundraising desperation.
  * **Define a month-3 recovery target; miss it and trigger a pivot immediately.** The reinforcing dynamic works both ways and can spiral into sunk-cost descent without a hard checkpoint. *—The Devil's Advocate*
  * **Allocate the 8 months explicitly: 2 pre-launch, 1 launch, 3 stabilization, 2 buffer.** This assumes recovery starts month 2 post-launch and accelerates through month 5. *—The Pragmatist*

* **Validate the bloat thesis before cutting; the core itself may be the real problem.** The cluster's load-bearing reframe, surfaced by one perspective and quietly consistent with the metrics others cite: removing features will not fix a weak core. If workout tracking is no better than Strava, Apple Fitness, or Peloton, new users will not adopt and churned users will not return regardless of how clean the UI is. The recommended de-risking move is a hide-don't-remove experiment (hide 12 of 15 features for a new-user cohort, or run a beta with 500 new and 500 existing power users) and to gate the full relaunch on the beta clearing a retention bar (for example, 15% at 30 days); if it stalls near 6%, the problem is the core product, and you fix that before cutting anything.
  * **Run a month-long hide-don't-remove experiment before committing.** If a simplified UI plus core features alone lifts retention, cut; if retention is unchanged, the problem is the core, not bloat — don't relaunch until it's fixed. *—The Devil's Advocate*
  * **Beta with 500 new + 500 power users before full relaunch.** 15% 30-day retention → launch; stall at 6% → kill the relaunch and fix the core feature instead of cutting others. *—The Devil's Advocate*

* **Name the rate-limiting step explicitly, and treat word-of-mouth as the growth engine.** A complementary pair of diagnoses. One view holds that the binding constraint is word-of-mouth from early converters: in fitness and wellness, if even ~20% of new users become vocal champions, that becomes the growth engine, so the play is to find the single feature that earns "I tell my friends" and make it incredible. Another holds the rate-limiter is user education and app-store momentum, since sudden churn and one-star reviews trigger negative store-algorithm effects.
  * **Rate-limiter is word-of-mouth from early converters.** Measure which features drive deepest engagement, then double down; one "I tell my friends" feature beats five "meh" features. *—The Momentum Builder*
  * **Rate-limiter is user education and app-store momentum.** Pre-announce 4 weeks early, ensure the three core features beat competitors, and budget ~$100–150K for paid acquisition to offset organic decline. *—The Pragmatist*
  * **Lock in early adopters within week one.** Give power users public wins so the recovery narrative is "look what this focused version unlocked." *—The Constraint Flipper*

* **Have a real contingency for a 10-month proof timeline; runway is the hard wall.** All perspectives engage the over-runway scenario but split on response. The financially grounded view is blunt: a 10-month timeline against 8 months of runway means insolvency, so secure a bridge round or investor commitment before relaunch and define a no-go date. The pragmatic alternative is a partnership or acquisition path (wearables, gyms, insurers) if standalone traction stalls by mid-month 6. The optimistic-but-disciplined view treats the runway question as a data-driven raise-or-sustain decision made at week 6, not a panic.
  * **A 10-month proof against 8-month runway means insolvency.** Secure a bridge round before relaunch and set a no-go date (month 5) to force discipline over hope. *—The Devil's Advocate*
  * **If adoption stalls at month 6, pivot to partnerships or acquisition.** Integrate into wearables, gyms, or insurers (3–4 months) or find an acquirer for the focused feature set plus user base. *—The Pragmatist*
  * **Don't revert if month 10 arrives flat — pivot deeper, not wider.** Refine a specific core use case; build fast feedback loops so you know by month 5 whether to adjust. *—The Constraint Flipper*
  * **Soft-launch a freemium/premium tier to fund the runway gap.** Early adopters fund the gap so revenue flows before the user base fully recovers. *—The Constraint Flipper*

---

**Questions addressed**: 3
**Personas contributing**: The Constraint Flipper, The Devil's Advocate, The Momentum Builder, The Pragmatist
**Total synthesized insights**: 18
</content>
</invoke>
