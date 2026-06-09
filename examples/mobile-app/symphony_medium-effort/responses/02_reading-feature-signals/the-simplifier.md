---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_reading-feature-signals"
persona: "The Simplifier"
---

# Reading Feature Signals - The Simplifier

---

## Signal vs. Noise in the Engagement Data

* **Ignore navigation-confounded usage. The 47-second session screams that discoverability is the blocker, not feature quality.** Before you even look at frequency metrics, watch users trying to find features in your 6-tab maze. What if the "least-used" features are actually deeply valued but so buried that users give up? Cut the navigation structure first—one tab, one flow—and re-measure. The real signal is: do users *keep coming back* when the path is clear?

* **Usage frequency is the wrong proxy for value.** A heavily-used notification spam feature might drive "engagement" through habit-loop addiction while destroying retention. Instead, segment your 8% retained users—what features do *they* use most? Their behavior reveals value, not your aggregate logs. What if you ignored usage counts entirely and only asked: "Which feature can't our 8% live without?"

* **Look for the feature users bypass.** If users skip directly to feature X, ignoring features A–N to get there, X is the corridor. Map session flows as sequences: where do users reliably go? Not "what do they touch," but "what path does 80% of active users trace before they leave?" One dominant desire path is worth more than fifteen scattered taps.

* **Test the retention signal before trusting engagement.** Your 8% retained users are the control group. For each major feature, compare retention between users who activated it and users who didn't—controlling for total session time. A feature that correlates with 30-day retention is core; everything else is noise. This kills the "least-annoying feature" trap: users tolerate features in inert apps, but retained users seek *specific* ones.

* **Remove the assumption that you must understand features to cut them.** You have 8 months of runway and a burned-out team. What if you shipped a single-feature version—say, just the workout tracker—in week 2, measured retention for 2 weeks, then decided what to add back only if users explicitly demanded it? Skip the analysis paralysis and let user reactivation data guide cuts.

---

## Leading Indicators and the 8% Who Stayed

* **The 8% are telling you the app's true identity. Interview them directly (not surveys—conversations) and ask: "What were you trying to do when you opened the app for the first time?"** Their answer is the core feature. Everything else is clutter. Bonus: they'll naturally reveal the one mental model that made sense to them. What if your entire relaunch premise came from asking five retained users what problem they thought they were solving?

* **Find the feature-activation sequence that predicts retention.** Did retained users activate the workout tracker first, then the social feed, then challenges? Or did they jump straight to the feed? Early-session activation order is a leading indicator—users are signaling priority through their actions. What if you reversed the onboarding: instead of "sign up for everything," present only the feature the retained cohort activated first, and hide others until they ask?

* **Measure session depth, not session length.** A 47-second session where someone completes one meaningful workout log is valuable. A 3-minute session where someone opens eight features and closes all of them is noise. Define "depth" as reaching a meaningful completion state (logged a workout, posted to feed, joined a challenge) within the first session. Track: what % of users who reach depth in feature X still exist at day 30? That's your signal.

* **Use the 8% as a test cohort for simplifications.** Don't launch changes to 100K users. Test a single-feature version (workout tracker only) on 5% of the app, measure retention over 14 days, then decide if you're on the right track. The 8% proved they'll return under today's chaos—they'll definitely return if you simplify ruthlessly. What if you treated the simplification as a hypothesized fix and tested it like a scientist?

* **The absence of signal is a signal.** If 90% of your users never activate the marketplace, coaching, or meditation features, stop asking why—just kill them. The cost of maintaining features nobody uses is suffocating the app's identity. What if you shipped version 2.0 with only the top 3 features by retention correlation, and added nothing else unless retention tanked below 8%?

---

## The Urban Planning "Desire Paths" Principle

* **Map the 47-second journey as a failure state, not a feature popularity signal.** If users are clearing the app in under a minute, they're failing to find what they want, not finding it and leaving satisfied. Trace session flows: user enters → opens three tabs → closes app. That's not a feature preference—it's abandonment. What if the desire path is actually: "users want to do X and can't figure out how, so they leave"? Your job is finding X, not analyzing where they wandered.

* **The desire path is *out of the app*, not within it.** In urban planning, the worn dirt path connects two places that matter. In your app, the desire path is: open app → try to find one thing → give up → close app. That's the corridor your users are cutting through your navigation chaos. What if you redesigned the entire entry experience to surface that one feature immediately, and tested whether users stayed longer?

* **Identify the single feature users are reaching for when they have 47 seconds.** If users with minimal session time still tap the workout logger, that's the core. If they tap everything randomly before leaving, the taxonomy is broken. Split your user base: power users (retained) vs. one-time users (the 92% who churn). Do they follow the same desire path, or do retained users have a completely different entry pattern? What if the app actually *works* but is installed in the wrong mental model?

* **Build a feature by-feature abandonment curve.** Not "this feature gets X taps," but "users who open the workout tab stay 90 seconds; users who open the meal planner stay 30 seconds; users who open the marketplace leave immediately." That curve tells you the desire path. Which single feature, if it was the *only* thing in the app, would users spend the most time on? That's your rebuild nucleus. Everything else is weight.

* **Stop designing for power users and design for the impatient majority.** Your 47-second users are telling you the app doesn't deliver value fast enough. What if you ruthlessly cut all features that don't deliver measurable progress in the first 60 seconds? Users want to log a workout, see it tracked, feel progress—not create an account, set preferences, browse categories, and then finally log something. The desire path is: in 60 seconds, I should have tangible proof the app works for me. How many of your 15 features deliver that?

---

**Responses generated: 15** (3 questions × 5 responses per question)  
**Persona**: The Simplifier  
**Scope variations**: Data-driven cuts, user cohort analysis, feature activation sequencing, navigation-first diagnosis, competitive relaunch testing  
**Timeframes referenced**: 2 weeks, 14 days, 30-day retention windows, 8-month runway, 60-second entry experience
