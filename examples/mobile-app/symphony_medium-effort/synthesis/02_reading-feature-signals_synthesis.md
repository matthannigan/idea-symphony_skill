---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "02_reading-feature-signals"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Reading Feature Signals

---

## Synthesized Insights by Question

### Question 7: Signal vs. Noise in the Engagement Data

**Full question**: Which of the 15 features show the highest frequency of use, the deepest engagement per session, the strongest 30-day retention by first-session activation cohort, and the most concentrated drop-off — and before reading any of that as feature value, how do you isolate genuine demand from a discoverability failure where users abandoned potentially valuable features simply because they were buried three taps deep behind a hamburger menu, and how do you tell a "core feature" from a "least-annoying feature" that users tolerate out of habit-loop inertia rather than love?

* **Run a discoverability experiment before trusting any usage number, because low engagement on a buried feature is unreadable.** Current usage data is confounded by the 6-tab-plus-hamburger navigation, so it cannot be read as feature value until visibility is held constant. The protocol is a surfacing test: temporarily promote one suspect feature to the home tab for one to two weeks and measure whether engagement jumps. A 2-3x spike with no change to the feature itself means you measured UI debt, not demand. Reshuffling tab order in an A/B test gives the same read. If engagement evaporates when a feature moves to Tab 4, the engagement was positional, not intrinsic.

* **Segment the retained 8% by first-session activation feature; that cohort split, not aggregate frequency, is where the core signal lives.** Cohort users by which feature they encountered or activated first, then compare 30-day retention across those cohorts. If "Workout Tracker first" retains at 15% while "Social Feed first" retains at 3%, that gap is the signal aggregate usage hides. A curve-shape test sharpens it: genuine core features show retention curves that stabilize or improve over weeks (sigmoid adoption), while least-annoying features decay and flatten without compounding.

* **Usage frequency is the wrong proxy for value; weight by impact, satisfaction, and irreplaceability instead.** Frequency biases you toward keeping notification badges and feed-scrolling over deep-value features used rarely but loved. A feature tapped 20 times a day for a 3-second glance can outscore a meal planner used once a week that saves two hours. Weight usage by user-reported satisfaction (a quick "which feature helped you most this week?" pulse) and by session-exit affect. People would miss a rarely-opened monthly calendar view more than a feature they touch daily.

* **The "least-annoying" trap is real: ask the retained users what they'd miss, not what they use.** Direct conversation is the only instrument that separates tolerated clutter from genuine value. The decisive question is counterfactual — "if this app or feature disappeared tomorrow, what would you miss?" — asked of 5 to 30 of the retained cohort, in interviews rather than surveys. Surveys measure usage; conversations measure intentionality and what users believe they came to do.

* **Validate the "habit-loop inertia" hypothesis by removing a feature and watching, not by reasoning about it.** Pull a medium-engagement feature (Sleep Tracker, for example) for a small cohort for two weeks, then restore it. If retention and session length don't move, it was dead weight. If retention drops sharply, the feature was a quiet retention engine that never looked like a hero. High feature-sequence entropy (where 80% of users repeat the same path) means apparent breadth is really single-feature stickiness wrapped in routine.

* **Beware survivor bias and false stickiness inside the retention data itself.** Features that look "sticky" may be sticky because they're the least broken, not because they create value. Compare a feature's presence among retained users against churned users; equal presence means default habit. Social features can show false stickiness driven by a handful of network-holding power users. Cutting such a feature could trigger amplified churn as those users leave with their networks. Calculate a per-feature churn coefficient weighted by each user's DAU contribution before cutting anything social.

---

### Question 8: Leading Indicators and the 8% Who Stayed

**Full question**: Retention and session length are lagging indicators — they reflect what has already happened — so what leading indicators (early behavioral signals in the first session, patterns among the 8% who do retain) would reveal which features are actually creating value, and within that 8% who are these users, what are they doing in the app that others aren't, and what does their behavior reveal about the app's latent core value?

* **Profile the retained 8% directly first; their day-one behavior is not a leading indicator to chase but the pattern itself.** Export the IDs of the 30-day-retained cohort, tag them, and compare their first-session behavior to churned users. Which feature did they open on day one, in what order, did they enable notifications, how long did they stay? This is available in days, not sprints. The answer often arrives as a concrete pattern (like "retained users opened Workout Tracker and skipped the feed on day one") that becomes the relaunch hypothesis.

* **The leading indicator is the first feature tapped and the activation sequence, not engagement depth.** The entry point — the first feature a retained user taps on opening — reveals the reason they came back, distinct from the most-used feature in aggregate or the deepest in-session feature. If 60% of the retained cohort enter via the workout tracker and 10% via the feed, the workout tracker is the core even if the feed has higher session depth. Sequence dependencies matter too: if retained users reliably follow Feature A → B → C while churners skip A, then A is a leading indicator and an onboarding-design input.

* **Look for the day-one "stickiness threshold" — a meaningful completion in the first session that predicts retention.** Define depth as reaching a completion state (logged a workout, posted, joined a challenge) rather than time spent, and measure what fraction of retained versus churned users hit it on day one. If 70% of retained users complete a meaningful action on day one against 5% of churners, that completion is an early-warning system worth instrumenting. A 47-second session that ends in one completed workout log is valuable. A three-minute session that opens eight features and closes them all is noise.

* **Distinguish fast-feedback entry features from slow-feedback dependency builders by time-to-reward.** Some features reward on day one (log a workout, see a streak), others reward on day seven or thirty (log for a week, then get a summary). The retained cohort likely uses fast-feedback features as session-one entry points and slow-feedback features as week-two retention glue. Measure time-to-first-meaningful-output per feature: zero-time-to-reward features drive the initial decision to stay, while week-long-loop features build dependency but cannot serve as entry points.

* **Treat the second session as its own threshold; what users return to on visit two confirms or denies the core.** Users who open the app twice in week one have crossed an inertia threshold and retain far better. The diagnostic value is in what they tap on session two. Returning to the same feature signals core discovery. Trying new features signals they're still searching and likely to quit when fatigue sets in. Second-session feature concentration is the leading indicator.

* **Caution: the retained minority may be trapped or unrepresentative, and the cohort may be too small to trust.** They may be locked in by data investment (200 logged meals) or social lock-in rather than love of the core, in which case they will steer you toward preserving complexity. The cohort is also small — roughly 14,400 users — so a signal can evaporate to seasonality or randomness once sliced by persona. Stratify by arrival date and adoption pattern (a shifting core means you may be chasing a ghost audience), and validate any signal across at least three historical cohorts or a forward-looking prediction before acting.

* **Pair behavioral signals with a lightweight in-app question, because identical behavior can hide opposite intent.** Broad day-one exploration can predict either retention (a power user finding value) or rapid churn (a confused user about to leave). A behavioral signal alone is ambiguous. Embed a single question at day 3 or 7 ("what brought you to this app?" or a "how lost did you feel?" 1-10 poll) and correlate with 30-day retention. Users who explore broadly and report low confusion are the true high-intent signal. Users who explore broadly but feel lost are exploring on their way out.

---

### Question 9: The Urban Planning "Desire Paths" Principle

**Full question**: City planners discovered that the most-used sidewalks aren't the ones architects designed — they're the worn dirt paths users created themselves. There's a parallel between those desire paths and the 47-second average session: users are telling you exactly where they're going by how little time they spend going everywhere else. What unexpected usage patterns emerge when you map session flows as desire paths — and which single corridor are users clearly trying to reach before giving up?

* **Read the 47-second session as an abandonment state, not as feature preference — users are trying to reach something and giving up before they arrive.** The brevity does not reveal a destination reached; it reveals a wall hit. Users return 180K times, so intent exists. A friction point between the home screen and the goal makes them leave without completing it. Measure what fraction of sessions end in a task-completion signal (workout logged, meal entered, message sent). If fewer than ~30% include completion, the 47 seconds is abandonment. Re-run the analysis on the longer-session, retained cohort to see where the path actually leads.

* **Find the corridor by isolating the last feature users touch before exiting and by segmenting fast-exits from task-completes.** Among sessions under 60 seconds, what was the final feature accessed? If one feature accounts for 35%+ of short-session endings, users are trying to reach it. Then split the short sessions by shape: one-feature paths (open Workout, view one workout, leave) versus 5+ feature bounces. A large one-feature share alongside a large bounce share means the desire path exists but the app buries it. This is a clarity problem, not a product problem.

* **Map session flows as explicit journeys (Sankey/funnel) and segment them, because aggregate heatmaps average over incompatible user types.** Plotting last-7-days sessions as flows reveals that a tight 50-60% corridor (Open → Workout → Browse → Exit) coexists with 40% random tab-bouncing. The corridor carrying >50% of sessions is load-bearing. Segmentation is essential. A morning jogger, a meal-prepper, and a social participant trace different paths. A single aggregate heatmap showing A→B as dominant may hide 60% of users going one way and 40% exiting. Generate per-cohort maps, especially separating the retained cohort from those who churn. Their primary corridors may differ (workout → community → progress versus workout → scroll → exit).

* **Validate the hypothesized corridor with a stripped-down navigation prototype before committing to cuts.** If you hypothesize the path is Workout → Profile → Feed with everything else hidden, build a low-fidelity clickable prototype of only those tabs and A/B-test it against 5% of new users for two weeks. If removing clutter lifts both session length and day-1-to-day-7 retention, the desire path is validated. If session length stays at 47 seconds, the problem is feature execution, not navigation — a clean way to separate the two diagnoses the rest of the cluster keeps colliding.

* **Before optimizing any corridor, confirm you are unblocking the right feature — removing friction on the wrong one accelerates churn.** The desire-path principle has two steps: identify, then unblock. Skipping the first inverts the result. If you optimize the path to the meal planner (the least-loved feature), you strip away the only friction that was slowing worse retention. Users now reach a bad product faster and leave faster. Identification requires watching which feature users try and fail to reach in 47 seconds, not which feature they happen to land on while searching. If users quit before ever opening the meal planner, optimizing its path cannot help.

* **The 6-tab navigation is a feedback mechanism, not just a UX choice; unblock one feature at a time rather than redesigning everything.** The architecture is self-reinforcing: hard-to-find features get little use, get assumed low-value, stay buried, get found less. The lighter-weight response is targeted friction removal. Put one suspect feature as a home-screen card for a week, measure whether session length rises, repeat. Users won't care about the missing 14 features if the path to the one they came for is unblocked.

* **Design for the impatient majority: cut anything that doesn't deliver tangible progress in the first 60 seconds.** The 47-second user is saying the app doesn't deliver value fast enough. The desire path is "in 60 seconds, I should have tangible proof the app works for me" (log a workout, see it tracked, feel progress), not account creation, preferences, and category browsing before the first logged action. Test every one of the 15 features: does it deliver measurable progress in the first 60 seconds?

---

**Questions addressed**: 3
**Synthesized insights**: 19
