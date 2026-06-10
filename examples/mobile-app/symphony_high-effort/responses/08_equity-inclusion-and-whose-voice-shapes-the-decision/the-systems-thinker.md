---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
persona: "The Systems Thinker"
---

# Equity, Inclusion, and Whose Voice Shapes the Decision - The Systems Thinker

---

## Accessibility Across User Circumstances

* **Core features need accessibility mapping before any cuts.** Build a three-layer accessibility audit: (1) which current features serve users with mobility limits, irregular schedules, or spotty internet?; (2) if stripped to 3-4 features, which user populations disappear entirely?; (3) what low-effort design tweaks could make the remaining core inclusive (async workout logging, airplane-mode persistence, descriptions without video)? Without this map, "core" will quietly become "core for users with time, ability, and stable internet."

* **Watch for the "Success to the Successful" pattern.** Stripping to "core" features based on engagement metrics creates a self-reinforcing cycle: you keep the features that engaged users adopted, which further attracts users similar to those early adopters, which biases future data toward those demographics, which narrows your definition of "core" further. In three relaunch cycles, you've accidentally built the app exclusively for able-bodied, employed, gym-going users. To break this loop, explicitly measure *reach* (what % of each user segment can use the feature?) before measuring *engagement*.

* **Asynchronous, constraint-friendly alternatives exist for social features.** Instead of real-time group challenges or live class streams, offer forms that don't require simultaneous availability: delayed-feedback leaderboards, 72-hour time windows for challenges, recorded tutorials that work offline. These cost less to maintain than synchronous features and serve users with irregular schedules. The systems insight: you don't need *fewer* social features — you need social features designed around *time flexibility*.

* **Start with the 8% retention cohort, not the average.** Users who returned multiple times already know the app works for them and their constraints. Analyze that 8% segmented by accessibility: what features did users with mobility challenges, non-English speakers, or older ages actually engage with? That's real signal about "core" features that prove inclusive from day one. The team will learn more from 200 focused interviews with that 8% than from generic "accessibility considerations" on a feature checklist.

---

## Design With vs. Design For, and Power Dynamics in Feedback

* **Underrepresentation creates a cascading feedback bias.** Data-driven feature prioritization typically reaches articulate, employed, tech-confident respondents — and this shapes which voices are heard. Over time, feedback mechanisms that don't actively reach quieter segments create a self-reinforcing selection: features are built for vocal users, which attracts more vocal users, which the next round of feedback mechanisms reach first, which compounds the original bias. To interrupt this, identify the three user segments most underrepresented in current feedback channels and run separate, format-specific outreach: younger users via TikTok/Discord, non-English speakers via community groups, lower-tech-literacy users via phone interviews, not surveys. Feed their priorities *equally* into the prioritization conversation, not as a separate "accessibility" bucket.

* **Co-decision-making requires structural power-sharing, not just input-gathering.** Inviting 10 underserved users to a focus group and then having the PM decide the priorities anyway is still design *for*. Real co-decision means: users vote on feature tradeoffs alongside the PM and designers; when user votes conflict with the PM's strategic vision, that conflict is *surfaced and resolved together*, not resolved privately and announced later. It's messier, slower, but it shifts power. Start with a small pilot: 8-10 users from underserved segments co-attend one feature-prioritization sprint as equal participants. Pay them. Track what changes when they're in the room (faster decisions? different priorities? team resistance?).

* **"Design with" creates accountability that changes risk assessment.** When underserved users are co-decision-makers on feature cuts, the team can no longer abstract away the impact ("we're optimizing for retention"). Instead, someone has to look at Maria, a 16-year-old who used the habit-tracking feature, and say "we're removing this." That accountability often uncovers solutions: instead of killing the habit tracker, the team might partner it with workout tracking. The systems insight is that *who is in the room shapes not just what gets decided, but how consequences are weighed*.

* **Multi-channel feedback intake costs little but breaks single-bias feedback.** Set up parallel intake streams: SMS-based feedback for low-tech-literacy or age 65+ users, Discord for younger users, weekly WhatsApp audio voice messages for non-English speakers, in-person community center sessions for users without phone data plans. Each channel hears different priorities. Aggregate across channels, don't average them — map which feature suggestions come from which segments, so the team sees *who* wants what. This surfaces hidden user clusters (e.g., the outdoor-runner cohort cuts differently than the gym-goer cohort) that homogenized surveys completely miss.

---

## Who Is Not in the Data — the 92% and Beyond

* **The 92% who didn't stay are not a homogeneous "churn" cohort.** Run a **post-download funnel analysis** segmented by hypothesis: of the 165K who deleted the app, split the exit points: (1) never opened it (marketing/icon problem); (2) opened once, closed immediately (first-open UX problem); (3) used for 2–3 sessions then stopped (tried it, didn't fit); (4) used for weeks then dropped (loss of habit or loss of relevance). Each segment suggests different "who is not in the data." A/B test re-engagement outreach targeted at each cohort: send segment 1 a 20-second demo video, segment 2 a "skip the tour, get to your first workout" link, segment 3 a "users like you love X feature" nudge. Their responses reveal which user populations the current app architecture is failing to serve.

* **Non-user listening requires reaching where they naturally congregate.** You can't survey people who never downloaded the app — but you can reach them: post in r/fitness with "what workout apps do you avoid and why?", ask gym community managers or accessibility advocates what their members mention. Run 5–10 semi-structured interviews with people who *could* use the app but chose not to. You'll hear consistent reasons: "no gym access so nothing applied to me," "I don't want my fitness public," "too many notifications," "the interface felt corporate and unwelcoming." These reasons don't live in your retention data because those people never generated data. But they're the boundaries of your addressable market.

* **Hidden assumptions in the analytics create blind spots.** The team's framing — "retention is success" — assumes users want daily app engagement. But what if a user *intended* to use the app once a week and succeeded? Current metrics would mark that as churn. Redefine success metrics for the *actual* intended behavior of different user segments: a weekly logger who hits their one workout per week is a success, even if DAU/MAU is low. This requires asking: "What was each user trying to do, and did they achieve it?" instead of "Did they open the app today?" Segment your analytics this way: your 8% retention cohort probably includes 2–3 distinct usage patterns that the average masks.

* **Start with user intent interviews before feature choices.** Before deciding what stays, conduct 15–20 interviews with the 165K who deleted, asking specifically: "What did you download this app to solve?" not "Why did you leave?" You'll discover that users were reaching for different solutions: some wanted accountability (social feature), some wanted optimization (meal planner), some wanted simplicity (just count reps). The current app tries to be all three. Your "core" shouldn't be what your engaged users use — it should be *what problem are we solving, and for whom*. That reframes everything.

---

## The First-Open Moment, Navigation Burden, and the Shame Underneath "Overwhelming"

* **Emotional state at first-open is shaped by promise-reality gap.** Users download fitness apps during a moment of resolve and hope. Six tabs and a hamburger menu signal "this will take work to navigate" — and that promise-reality collision happens before they can log a single workout. Track *user behavior film* not survey responses: record 10 new users opening the app for the first time and watch exactly where they pause, tap wrong buttons, abandon attempts, or just close it. That's the cascade point. Most likely: they'll try one tab, not find what they're looking for, try another, hit information overload at tab 3, and close it. The emotional state underneath "overwhelming" is often *I'm already failing at this app*. To reset: one tab at first-open, one clear action ("Log workout" or "Start a challenge"), everything else hidden until they've succeeded once.

* **Navigation design reflects hidden assumptions about user confidence.** A 6-tab design assumes users are confident enough to explore and find what they need. But "overwhelmed" often means *I'm embarrassed I don't understand what this app is for*. Watch for shame-driven abandonment: users who tap, retract, avoid touching again. One fix: a **2-minute guided first workout** that bypasses all navigation — literally hands users a workout to complete before showing them the menu. Once they've succeeded once, the navigation becomes context-setting, not obstacle.

* **Behavior data reveals priority hierarchy more than survey feedback.** Of the 8% who stayed, which single tab do they use 70% of the time? That's the core feature for *engaged users specifically*. Now cross-check: of users who tried the app once and left, which tab did their session logs show they opened? If they mostly stayed on the Workout tab and didn't return, it's not that workouts aren't core — it's that the workout experience itself was broken. If they bounced between tabs, the app failed to orient them. These are different problems with different solutions.

* **Cognitive load before benefit creates the collapse point.** Six tabs means users must invest cognitive effort *before* they can see any value. Swap the architecture: make the first-time experience a **value-first, explore-later** funnel. New users log one workout (the core value) before they ever see the full menu. Returning users see personalized context (your streak, your next challenge) before navigation options. This isn't fewer features — it's *progressive disclosure*. Users discover complexity only after they've experienced payoff. The system shift is from "show everything" to "show what you need right now."

---

## Feature-Dependent Acquisition Channels

* **Feature-acquisition coupling creates invisible dependencies that cuts will break.** If the meal-planner drives 30% of App Store keyword installs ("recipe app for fitness"), cutting it without replacement will kill that acquisition channel. But this coupling is usually invisible — nobody tracks "which features drove which install channels" because PMs and growth teams operate in separate analytical silos. First step: audit the feature-to-acquisition map. Run store-analytics backward: what keywords have high install-to-download velocity? Cross-reference with session logs: which features do users who arrived via those keywords use? You'll discover that 4 features might drive 70% of installs but contribute 20% of retained users. That's the real tension.

* **Acquisition-retention mismatch reveals unsustainable growth patterns.** If users arrive for the meal-planner but stay for the workout tracker, you're acquiring the wrong users at scale. That's a long-term stability problem: you're paying to acquire users who churn fast. The fix isn't to keep the meal-planner — it's to shift acquisition messaging. Instead of "complete fitness platform" in app store keywords, shift to "simple workout tracker for busy people." You'll get fewer installs but higher-match users. This takes 4–6 weeks to test (new app store listing, keyword bids). But you'll know before the relaunch whether your core feature can actually sustain acquisition.

* **Some features are acquisition *liabilities* worth cutting despite loyal user segments.** If the supplement store has 500 passionate users but kills your app store ratings (returns, negative reviews), it's dragging down your acquisition funnel. Even though those 500 users will churn when you cut it, removing it might increase your install-to-download conversion by 2–3%, which replaces the 500 users in ~30 days and improves long-term trajectory. Use a **feature ROI matrix**: for each feature, calculate (user_count) × (engagement_rate) vs. (acquisition_cost_to_replace) + (retention_impact). Features that are high-maintenance, low-engagement acquisitions are good candidates even if they have loyal users.

* **Test the relaunch acquisition hypothesis before full commit.** Don't cut all 12 features at once and hope acquisition survives. Instead, run a **parallel acquisition test**: create a simplified version of the app and run it as a second store listing or a web landing page, drive 10% of acquisition traffic to it for 30 days. Measure: install-to-3rd-session conversion, 30-day retention, cohort quality. If the simplified version outperforms on both metrics, you have confidence that the full relaunch won't crater acquisition. If it underperforms, you discover which features are actually acquisition-critical *before* you cut them.
