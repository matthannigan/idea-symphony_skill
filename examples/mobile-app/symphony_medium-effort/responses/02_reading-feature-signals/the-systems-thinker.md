---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_reading-feature-signals"
persona: "The Systems Thinker"
---

# Reading Feature Signals - The Systems Thinker

---

## Signal vs. Noise in the Engagement Data

* **Discoverability as a reinforcing decay loop.** Each feature buried behind hamburger menus creates friction that suppresses discovery, which appears as low engagement, which justifies pushing it deeper into the UI, which suppresses it further. The data you're reading isn't feature value — it's visibility compounded over time. Audit by temporarily surfacing one suspect feature on the home tab for a week; if engagement spikes 2-3x with zero changes to the feature itself, you've measured UI debt, not feature demand. This reveals what *could* have been core if the product had been designed for access from day one.

* **Habit-loop inertia vs. value creation.** Users who open the app for a single beloved feature (say, a 90-second workout streak check) may activate 2-3 other features not out of love but out of muscle memory: "I always tap the feed next, then close the app." That sequential pattern appears as engagement breadth when it's actually single-feature stickiness wrapped in routine. Cross-check by looking at feature-sequence entropy: if 80% of users follow the same 4-tap path and 60% of those taps are the same feature, your "multi-feature retention" is actually habit reinforcement of one core. Users aren't choosing features; they're optimizing for the fastest exit.

* **Concentration of drop-off as the signal that matters most.** The question isn't "which feature is used most often" but "at which moment do 92% of users leave, and which feature preceded that moment?" If users consistently reach the meal planner, see empty nutrition data, then quit, the meal planner is a broken gateway, not a low-value feature. The 47-second average session suggests a sharp moment of failure: users have a goal, hit a wall, leave. Map the modal or error screen that appears before 90% of drop-offs. That failure point is often your only signal of latent demand.

* **Core vs. least-annoying requires cohort separation.** Users who complete a workout log have a different retention curve than users who browse the social feed. Segment the 8% who retained by first-session behavior: which feature did they engage first? High-value features show retention curves that *stabilize or improve* over weeks (day 7 retention > 10%, day 30 retention > 5%). Least-annoying features show *decay curves* that bottom out but don't vanish (users occasionally reactivate habit, but never compound). The core feature has a sigmoid adoption curve; noise has a flat or accelerating drop.

* **Directly ask the 8% what they would miss if it was gone.** No analytics can answer this question; their answer is worth more than ten metrics. Contact 20-30 of the 8% retained users with one question: "If we removed one feature next week, which would you least like to lose?" Their answer doesn't measure the feature's frequency or session depth — it measures intentionality and irreplaceability. Users often don't *use* features they'd miss, because they rely on them asynchronously (e.g., I log every workout but check my monthly calendar view twice a month; I'd miss the calendar view more than the log if I had to choose).

---

## Leading Indicators and the 8% Who Stayed

* **Day-one engagement velocity reveals difference between discovery fail and demand failure.** The 8% who retained can be split into two groups: those who accessed 3+ features on day one vs. those who used only 1 core feature repeatedly. The first group represents users exploring the product in hopes of finding value (eventual churn, because breadth confused them). The second group represents users who found their reason to return immediately. The metric: among day-1 multi-feature activators, what's the day-7 retention vs. day-1 single-feature activators? If single-feature is 40%+ vs. multi-feature at 5%, you've found your core audience — people who came for one reason and kept coming back.

* **Watch for the second-session activation gap.** Users who open the app twice in the first week have already crossed an inertia threshold; their day-30 retention is likely 10x higher than users with a single session. But *which features* do the returning 8% engage on session two? If they immediately go to the same feature as session one, you've found the core. If they try new features, they're still searching (and will likely quit when fatigue sets in). The leading indicator: second-session feature concentration. High concentration = core discovery. Low concentration = still drowning.

* **Identify the asymmetric value generator by looking at time-to-activation.** Some features reward users on day one (instant feedback loop: I log a workout, I see my streak). Others reward on day seven or day thirty (compound feedback: I log workouts for a week, *then* I see a weekly summary). The 8% who retained are probably using fast-feedback features on day one and slow-feedback features by week two. Measure time-to-first-meaningful-output for each feature: does the user see a reward in the same session they activate? Features with zero time-to-reward are pulling weight in session-one decisions; features with week-long feedback loops are dependency builders, not entry points.

* **Session-opening behavior is the oracle of feature value.** What's the first feature the 8% tap when they open the app? Not the most-used overall, but the first-tapped? That's the feature they came back *for*. Everything after that tap is supplementary or exploratory. Track "feature as app entry point" separately from "feature as in-session navigation." If 60% of the 8% enter via the workout tracker and 10% via the social feed, even if social feed has higher session depth, the workout tracker is the actual core — it's the reason they came back.

* **Behavioral signals in first-session flow matter more than DAU/MAU aggregates.** The 8% who retained did something materially different in session one compared to the 92% who quit. Find 5-10 of the 8% and map their exact first-session behavior as a flow diagram: which screens, in what order, with what time spent on each, and which notification or success message appeared? Compare to 5-10 users who quit after one session. The difference is *not* about feature count — it's about discovery path and reward timing. You're looking for a clear, short corridor to value; the early quitters never found it or got lost on the way.

---

## The Urban Planning "Desire Paths" Principle

* **The 47-second session average points to a single failure moment, not missing features.** Urban planners realize that a worn dirt path reveals where architects *got it wrong* — people are walking around the paved sidewalk because it doesn't go where they need. In your app, the 47-second session suggests users know where they want to go (they come back 180K times), but they hit a moment of friction that makes them leave without completing their intention. Map session length distribution: are 60% of sessions 10-30 seconds with a spike at 45 seconds? If so, there's a specific screen or error they're hitting. That screen is your desire path — it's showing you the exact corridor users are trying to reach.

* **Watch for the modal-trap or load-screen exit.** Users likely quit when they encounter: (a) a modal asking for permission or data they don't want to give, (b) a loading spinner lasting >10 seconds, (c) an empty state ("No workouts logged yet" — they came to check a streak, found nothing, left), or (d) a paywall or deep feature gate. The desire path isn't "remove the modal"; it's "users are trying to reach a specific feature, and something between the home screen and that feature is blocking them." Cross-check by looking at cohort session length: users of the meal planner may have 65-second sessions before the paywall, users of social feed 40 seconds (maybe the feed is broken?), users of workouts 35 seconds (loading issue?). Different failure points for different features.

* **The architecture of navigation is a feedback mechanism disguised as a UX choice.** The 6 tabs + hamburger menu create a self-reinforcing cycle: features in the hamburger are hard to find, so few people use them, so you assume they're low-value and keep them in the hamburger, so even fewer discover them. But the desire path asks a different question: if users could instantly tap their goal from the home screen, what would they tap? You don't need to redesign the whole app; you need to temporarily *remove the friction* for 1-2 suspect features (e.g., put "Workout Streak" as a card on the home screen for a week), measure if session length increases, and repeat for others. The desire path will become visible: users won't care about the missing 14 features if you unblock the path to the one they came for.

* **Second-order: removing friction on the wrong feature accelerates churn.** If you optimize the path to the meal planner (the least-loved feature), you're removing the only friction that was preventing worse retention. Users will now enter, spend time in a bad product, and leave faster. The desire path principle says: *identify which feature users want to reach, then remove friction*. But identifying requires looking at which feature users *try and fail* to reach in 47 seconds, not which feature they happen to use when forced to search. If users quit after 47 seconds without ever opening the meal planner, optimizing the path to it won't help.

* **Map session flows as a funnel, not a tree, and look for the abandoned branch.** Create a Sankey diagram of session paths: what % of sessions enter via Tab 1, then go to Tab 2, then exit vs. enter via Tab 3, then hit the hamburger, then exit? The desire path is the route where users get furthest into the product before quitting. If 40% of sessions follow Tab 1 → Tab 3 → Exit at 45 seconds, and only 5% follow Tab 2 → Tab 4 → Sustained engagement, you've found your retention loop. But if all paths lead to exits in the 40-60 second range, the failure is not a buried feature — it's something that blocks *all* users (onboarding confusion, a required permission, a permission error, a startup ad). That's a different diagnosis entirely.

---

**Question count**: 3  
**Responses per question**: 5 each  
**Total responses**: 15  
**Approach**: Systems loops and second-order dynamics (4/5 per question), straightforward observation (1/5 per question). Varied scope (day-one behavior, week-long patterns, session architecture, product mechanics, data structure) and stakeholder viewpoint (user cohorts, feature discovery, UX architecture, data interpretation).
