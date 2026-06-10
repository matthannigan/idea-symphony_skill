---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "05_methodology-for-the-cut"
persona: "The Pragmatist"
---

# Methodology for the Cut - The Pragmatist

---

## Where the Line Falls / Three Decision Axes

* **Start with data to eliminate noise, not to choose winners.** Pull a 90-day cohort report: which features have less than 5% activation? Cut those without debate. Data's job here is to narrow the field quickly, not crown the survivors. You have 6 engineers and 8 months — spend interview time on the 4–6 features that actually cleared the activation bar.

* **When lenses disagree, let retention arbitrate.** Run a two-week SQL query: users who activated Feature A retained at what rate versus users who did not? If the data says workout tracking drives 30-day retention and the PM's strategic vision says "social" is the future, build the MVP around workout tracking first. Validate the vision later when you have runway to bet on it.

* **Strategic vision gets the final vote — but it must survive a falsifiability test.** A practical approach: before the decision meeting, ask each stakeholder to write one sentence predicting what will happen to retention if the strategic feature is kept. Document those predictions. If nobody can state a testable outcome, the vision is a preference masquerading as strategy. Defer it to a future bet once the core is stable.

* **Build a scoring rubric before you look at the data.** Assign weights to three criteria — usage breadth (what % of users touched it), retention correlation (do users who use it stay longer), and build cost to maintain — before anyone pulls the spreadsheet. Without pre-set weights, the team will unconsciously tilt the rubric toward the answer they already want. Timebox the rubric discussion to 90 minutes.

* **Accept that the lenses will partially disagree and plan for it.** Data may say meal planning drives retention among a small cohort; interviews may reveal those users are your most vocal advocates; the PM wants to be a workout app. A practical resolution: keep the feature but reduce its surface area to a single screen, committing to neither full investment nor full removal while you gather 60 more days of post-simplification data.

---

## The 3–4 Feature Assumption / Smallest Validating Experiment

* **Treat "3–4" as a team capacity constraint, not a product truth.** With 6 engineers maintaining 15 features, you're spreading roughly one engineer across every 2.5 features. Concentrating on 3–4 means roughly 1.5 engineers per feature — enough to actually execute. State this explicitly in the decision meeting so the number feels grounded rather than arbitrary.

* **Run a combination-retention query before locking in the number.** Pull cohorts of users who activated exactly one feature, exactly two in combination, exactly three. If single-feature users retain at 12% and two-feature combinations retain at 28%, your hypothesis is that the core needs at least two complementary features, not just one great one. This takes a data analyst two days — worth doing before a week of debate.

* **If data points to one feature, consider a ruthless MVP test first.** A practical approach: remove all but the top feature from the main nav for a fresh cohort of new installs (use a feature flag, not a full relaunch). Track 30-day retention for three weeks. If retention climbs from 8% to 18% even with one feature, you've learned something far more valuable than any workshop can produce. Scale back up from there.

* **Design the coherence test before you finalize your feature list.** Before shipping the simplified version, give five users a task: "Use the app to accomplish your main fitness goal this week." Observe where they get stuck. If they need a feature you cut to complete the natural user journey, you cut too far. This usability pass takes one designer three days and costs less than one sprint of development on the wrong bet.

* **If analysis points to six features, run a constraint negotiation.** A practical approach: rank the six by development maintenance cost. The two that are most expensive to keep but least correlated with retention are your cut candidates. This frames the "6 vs 4" conversation as a resource trade-off rather than a values argument, which is far easier to resolve in a team meeting.

---

## Activation Rate vs. Post-Activation Engagement

* **Build a two-row metrics table before any feature cuts.** For each of the 15 features, capture (a) % of all users who ever activated it and (b) 30-day retention rate among activated users. This takes a data analyst one day with standard event tracking. Features in the bottom-left quadrant (low activation, low post-activation retention) are clear cuts. Features in the top-right (high activation, high retention) are obvious keeps. The interesting decisions live in the other two quadrants — don't spend meeting time on the easy ones.

* **Low-discovery/high-value features are an onboarding problem, not a cut problem.** If challenge participation has 6% activation but 60% retention among users who find it, the issue is discoverability, not the feature's value. A practical approach: before cutting it, spend one sprint putting it in the onboarding flow for a test cohort. If activation triples, you've found a keeper that just needed visibility.

* **Set a minimum activation threshold to qualify for the keep list.** Features with under 3% activation over 90 days should require a human-generated explanation (not just a retention number) to survive. Someone on the team should be able to say: "Here is the specific user type who needs this and why they represent our target market." Without that narrative, a small but highly-engaged cohort is more likely a coincidence than a signal.

* **Disaggregate by acquisition channel before drawing conclusions.** If 40% of your 180K downloads came from a single campaign targeting meal-planning content, the meal planner's engagement numbers are inflated by a non-representative cohort. Filter your activation/retention analysis to organic users or users from your primary acquisition channel. Channel-mixed data can make a niche feature look core.

* **Flag the "hidden gem" features for a time-boxed retention experiment rather than an immediate decision.** A practical approach: for any feature with under 10% activation but over 40% post-activation retention, run a 30-day experiment where new users are nudged to that feature in week two. If activation lifts to 25%+ with no change in retention rate, it's a keep with an onboarding fix. If activation lifts but retention drops, the feature was only valuable to a specific sub-segment. Document the finding and make the call.

---

## The Keystone Species Problem

* **Map feature dependencies as a technical graph before the cut list is finalized.** Ask the engineering lead to spend four hours documenting which features share data models, auth flows, or backend services with other features. A feature like "progress journal" may seem minor by usage metrics but could be feeding data to "workout tracker," "challenge platform," and the social feed. Cutting it without understanding its downstream dependencies will create bugs that consume the sprint you just freed up.

* **Use a deletion dry-run sprint.** Before permanently removing any feature, have one engineer stub it out — comment out its nav entry, disable its API routes — and run it for two weeks. Monitor for error spikes, support tickets, and unexpected drops in engagement on features you planned to keep. This surfaces hidden dependencies in production without requiring a full technical audit. Low cost, high signal.

* **User journey mapping reveals keystone features that metrics miss.** A practical approach: take five real user session recordings (30 minutes total) and trace the path through the app. Which features appear in every session, even briefly? Which features appear to be the entry point that leads to other features? A feature like "friend finder" might have poor standalone retention but serve as the trigger that activates social accountability, which drives workout tracking consistency. Metrics measure nodes; journey maps reveal edges.

* **Distinguish "keystone by dependency" from "keystone by identity."** Some features are structurally necessary (remove them and the data model breaks); others are identity-defining (remove them and users feel the product has become something else). Both matter, but for different reasons. The structural keystones are an engineering constraint you must respect. The identity keystones are a positioning decision — be explicit about which ones you're choosing to abandon and what that signals to your existing user base.

* **Reframe the keystone question as: what does the app do on day one when nothing else has been built yet?** If you were launching from scratch with one engineer, which single feature would you ship? That feature is probably your keystone. Everything else should either accelerate its value or extend its use cases. Run the team through this thought experiment in a 30-minute session — it cuts through the rationalization that accumulates around features people have already built.
