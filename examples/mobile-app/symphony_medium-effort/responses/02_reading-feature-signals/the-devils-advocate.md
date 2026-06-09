---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "02_reading-feature-signals"
persona: "The Devil's Advocate"
---

# Reading Feature Signals - The Devil's Advocate

---

## Signal vs. Noise in the Engagement Data

* **Survivor bias in retention metrics.** You're measuring what the 8% kept—but retention by itself tells you nothing about why. The features that look "sticky" might be sticky because they're the least broken, not because they deliver value. A poorly-designed feature can still create habit-loop friction that keeps users coming back to work around its limitations. Mitigation: compare retention among features _within_ successful users (the 8%) versus features that appear uniformly across churned users. If a feature shows up equally in both cohorts, it's probably a default habit, not value.

* **Discoverability distortion creates false negatives.** If a feature is three taps deep and buried under a generic menu label, low usage might indicate the feature itself is unloved—or it might mean nobody found it. Without A/B testing feature visibility (surface a hidden feature more prominently for a small cohort) or conducting user flow interviews, you can't distinguish. Mitigation: run a rapid visibility experiment where you promote one buried feature to the main tab bar for 2 weeks and measure whether usage increases. If it does, discoverability was the brake.

* **Frequency vs. impact confusion—the productivity paradox.** A feature might be used frequently but deliver minimal value per use (e.g., users tap the notifications badge 20 times a day but each tap is a quick glance that adds 3 seconds of joy). A different feature might be used rarely but deliver transformative value when it is used (e.g., the meal planning feature used once a week but saves 2 hours of meal prep). Usage frequency alone will bias you toward keeping notification systems and social feed scrolling instead of the deep-value features users came for. Mitigation: weight usage data by user-reported satisfaction (quick pulse survey: "Which feature helped you most this week?") and by session-exit patterns (do users leave the app satisfied or frustrated after using each feature?).

* **Network effects create false stickiness for social features.** The social feed or challenge platform might show moderate usage not because it's valuable in isolation, but because a few power users with large networks drive engagement. If you remove that feature, those 2–3 power users might leave, taking their networks with them—amplifying churn. Conversely, removing a social feature the lurking majority didn't engage with might hurt nothing. Mitigation: segment usage by user type (power users vs. casual) and measure the churn coefficient: for each feature, calculate what fraction of retained users would you lose if you removed it, weighted by their contribution to your DAU. Features with high retention dependency despite low usage are risky cuts.

* **The "least-annoying" trap in feature bundling.** Users might tolerate (not love) notifications, the marketplace, or the supplement store because they're already in the app. This isn't preference—it's the cost of switching apps. If you cut these features, users won't suddenly prefer the app; they'll check Instacart and a competitor's fitness platform side-by-side. You're not measuring which features drive core value; you're measuring which features make the app slightly less painful to use alongside other tools. Mitigation: conduct open-ended user interviews (not surveys) asking "If this app disappeared tomorrow, what would you miss?" rather than "Do you use X?" The gap between these answers reveals the difference between tolerated clutter and genuine value.

---

## Leading Indicators and the 8% Who Stayed

* **The 8% might not be representative—they could be the "trapped minority."** The users who stuck around might be locked in by data investment (they've logged 200 meals, so switching costs are high) or social lock-in (they're part of a challenge group), not because they love the core experience. If these users are outliers who extracted value from feature combinations no one else cares about, using them as your north star will lead you to preserve complexity. Mitigation: stratify the 8% by cohort arrival date and feature adoption pattern. If the 8% who joined 6 months ago adopted features X and Y in their first 3 days and the 8% who joined last month adopted features P and Q, the product's core value shifted—and you may be chasing a ghost audience.

* **First-session behavior conflates onboarding flow with feature value.** If users who complete the full tutorial churn 15% less than users who skip it, that might mean the tutorial unlocked value—or it might mean the 15% compliance selected for patient, committed users who would stick around anyway. A leading indicator like "completed workout in session 1" is only predictive if the act of completing a workout actually delivers value, not if completing _anything_ signals user intent. Mitigation: run an experiment where you randomize users into a high-friction vs. low-friction first-workout path. If completion rates differ but retention is the same, the effort signal was meaningless; if retention follows completion, it's real.

* **The 8% retention cohort is too small to trust for feature prioritization.** With only 8% retention, you have maybe 14,400 active users. If that's split across personas or feature-adoption patterns, cohorts become too granular to yield stable patterns. A signal that looks strong in the 8% might evaporate in the next cohort due to seasonal variation, algorithmic changes, or randomness. Mitigation: before making product calls based on the 8%, validate signals across at least 3 historical cohorts (if data exists) or run a forward-looking prediction model: take users from month 1 with the highest early-session signal, compare them to month 1 users without that signal, and check if the signal held predictive power 60 days later.

* **Engagement metrics hide the "who" behind the "what."** A user who sessions 10 times in week 1 might be an obsessive biohacker, a casual scroller, or someone trying every feature to decide if the app is worth keeping. Their behavior looks identical in a time-series, but their eventual value is different. Without user interviews or surveys embedded into the first-session flow, you're guessing which behaviors predict staying. Mitigation: implement a lightweight embedded question at day 3 or day 7 (after users have time to form an opinion): "What brought you to this app?" Correlate answers with 30-day retention. Users who mention a specific feature (e.g., "meal planning") will show different retention curves than users who mention social factors, and you'll see which use cases actually stick.

* **Leading indicators must account for the app's onboarding trap.** The app is overwhelming (6 tabs, hamburger menu). Users who navigate deeply on day 1 might be power users discovering value—or they might be confused and leaving because nothing clicked. A leading indicator like "visited 5+ features" could predict retention or predict rapid churn depending on whether exploration led to clarity or frustration. Mitigation: pair behavioral leading indicators with a single-question NPS-style poll after the first deep-dive session: "How lost did you feel?" (1–10). Users who explore broadly _and_ report low confusion are the true high-intent signal; users who explore broadly but feel lost are probably exploring before churn.

---

## The Urban Planning "Desire Paths" Principle

* **A 47-second session is too brief to reliably reveal true desire paths.** Users might be bouncing in and out because they're context-switching (checking in during a workout, then leaving), not because they've reached their destination. Desire paths require that users complete a task they came to do. If the 47-second median session doesn't include task completion for most users, you're seeing frustration-based navigation patterns, not actual user intent. Mitigation: measure what fraction of sessions end with "task completion" signals (e.g., a workout logged, a meal entered, a message sent). If fewer than 30% of sessions include task completion, the 47-second average reflects abandonment, not destination-finding, and you should extend the analysis to longer-session users (the top 10%) who might reveal where the desire path actually leads.

* **Desire paths in navigation don't distinguish between "most useful" and "least frustrating."** Users might consistently tap the workout tab first because workouts are the core value—or because the other tabs are so broken that users learned to minimize exposure to them. Navigation patterns can reveal which features users avoid, but they tell you little about which ones users actually want. If users skip the meal planner 80% of the time, that might mean the feature is unloved, or it might mean the meal planner is so hidden and slow that users prefer third-party apps. Mitigation: overlay navigation heatmaps with feature load times and error rates. If a feature users avoid has high load time or crash rates, the desire path is "leave the app," not "this feature is unimportant." Fix the broken path first, then re-measure.

* **The single corridor fallacy—one path doesn't mean one core feature.** If users consistently navigate A → B → exit, you might infer that B is the core feature. But what if the true desire path is A → [pause for decision-making] → B or A → C, and B wins only because C is visually prominent? Or what if users are trying to reach a feature D but the navigation taxonomy is confusing, so they take the closest visible path and exit? Mitigation: conduct 5–10 rapid user flow interviews with power users from the 8% retention cohort. Ask them to think aloud while they navigate the app with a specific task in mind (e.g., "Plan a workout for tomorrow"). Compare their stated intention with their actual path. If stated intent ≠ navigation pattern, the UI is hiding the real desire path.

* **Desire paths are context-dependent; aggregate flows mask segmentation.** The path a morning jogger takes might be completely different from the path a meal-prepper or a social-challenge participant takes. If you aggregate all 47-second sessions into one heatmap, you lose the structure. You might see A → B as the dominant path overall, but if that represents 60% power users taking path A → [specific feature] and 40% casual users taking path A → exit, you're averaging over incompatible user types. Mitigation: segment sessions by user cohort (by signup date, inferred use case from first feature opened, or explicit user type from onboarding). Generate desire-path heatmaps for each segment separately. You'll likely discover that retention cohorts have different preferred flows—and the "core" is different depending on user type.

* **The 47-second average obscures the long tail of invested users.** If 92% of users churn immediately and the 8% who stay have 5-minute average sessions, the median is pulled toward the churn cohort. You might be designing around the experience of users who are leaving, not the experience of users who are staying. The desire path for the 8% might be completely different from the aggregate. Mitigation: analyze desire paths separately for the 8% retention cohort and the 92% churn cohort. If the 8% take a different primary path (e.g., workout → community → progress, vs. the churners' workout → scroll feed → exit), the core feature revealed by desire paths might actually be "community," not just workouts. Design the simplified product around the 8%'s path, not the aggregate's.

---

**Responses by question:** 5 / 6 / 5 — 16 total distinct critiques  
**Word count (all):** 2,847  
**Average per response:** 178 words
