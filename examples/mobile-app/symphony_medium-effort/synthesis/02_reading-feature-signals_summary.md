---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "02_reading-feature-signals"
synthesis-type: "summary"
central-tension: "The usage data cannot be read as feature value until the navigation confound is removed, so the cut decision hinges on reconstructing demand from the retained minority rather than measuring it from aggregate engagement."
---

# Summary: Reading Feature Signals

## Executive Summary

The organizing finding of this cluster is that the current engagement data cannot be read as feature value, and acting on it as-is would cut the wrong features. Every metric the team has (frequency, session depth, the 47-second average) is confounded by a 6-tab-plus-hamburger navigation that suppresses some features and inflates others, and by habit-loop inertia that makes the least-broken features look beloved. The work of this cluster is not to rank the 15 features by usage but to reconstruct genuine demand before trusting any number.

The strongest convergence is procedural: hold visibility constant before reading value. The recommended first move is a surfacing experiment. Promote one buried feature to the home tab for one to two weeks and watch whether engagement jumps 2-3x. A spike with no change to the feature itself measures UI debt, not demand. The parallel move is to stop reading aggregate logs and instead segment the retained 8% by the feature they activated first, comparing 30-day retention across those cohorts. A 15%-versus-3% gap between "Workout Tracker first" and "Social Feed first" is the signal aggregate usage hides.

Two reframes sharpen what "signal" even means. First, frequency is the wrong proxy. A notification badge tapped 20 times a day can outscore a meal planner used weekly that delivers real value, so usage must be weighted by satisfaction and irreplaceability. The only instrument for irreplaceability is a counterfactual interview ("if this disappeared tomorrow, what would you miss?"), not a usage survey. Second, the 47-second session is an abandonment state, not a preference. Users return 180K times, so they have intent, but they hit a wall before completing it. The corridor they're cutting is "find the one thing I came for and prove it works in 60 seconds."

The central risk is moving too fast on a confounded read. The retained minority may be trapped by data or social lock-in rather than love. The cohort is small enough (around 14,400) that signals can be noise. Most consequentially, optimizing the path to the wrong feature accelerates churn rather than fixing it. The cluster's payoff is a validated relaunch hypothesis tested on a 5% prototype before any feature is cut, not a faster march to the same bad data.

---

## Key Themes

**Categorical reframe: the desire-path principle is a two-step sequence. Identify the feature users want, then unblock it. Skipping the first step inverts the outcome.** Optimizing the path to a least-loved feature strips away the only friction that was slowing worse retention, so users reach a bad product faster and leave faster. This reorders the entire cut decision: identification (which feature do users try and fail to reach in 47 seconds?) must precede any navigation surgery.

### Visibility confounds value
Every perspective opens by refusing to read usage as value while the navigation is broken. A feature buried three taps deep behind a hamburger menu produces low engagement whether it is unloved or simply unfound. The only way to separate the two is to surface it and re-measure. The 47-second session is itself evidence that discoverability, not feature quality, may be the dominant constraint.

### The retained 8% are the instrument, with caveats
The cohort that stayed is treated as the closest available proxy for latent core value. Profile them directly, map their first-session feature and activation order, and interview them about what they were trying to do. The caution that runs alongside this is that they may be a trapped or unrepresentative minority, so any signal drawn from them needs validation across multiple cohorts before it drives cuts.

### Entry point beats aggregate usage
The first feature a retained user taps on opening (the entry point) is repeatedly named as the truest signal of why they came back, distinct from the most-used or deepest-engagement feature. A feature that 60% of retained users open first is the core even if another feature has higher in-session depth. This separates "the feature they came for" from "the features they pass through."

### Completion and speed-to-value, not time spent
Session length is dismissed as a signal in favor of meaningful completion: a 47-second session ending in a logged workout beats a three-minute session that opens eight features and closes them all. The standard for the rebuilt product is tangible progress in the first 60 seconds, which becomes a direct test to apply to all 15 features.

### Experiments over reasoning
Across personas the recommended posture is to test rather than deliberate: surface a feature and measure, remove a feature and watch retention, prototype a stripped-down nav on 5% of users. The team has 8 months of runway and is burned out, so analysis-by-experiment is favored over analysis-by-argument.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Export and tag the 30-day-retained cohort, then map their first-session behavior (first feature tapped, activation order, notification opt-in, time in app) against churned users. This is a days-long query, not a sprint, and produces the relaunch hypothesis.
- Query the terminal feature of every sub-60-second session; if one feature accounts for 35%+ of short-session endings, treat it as the candidate corridor.
- Interview 5 to 30 of the retained users in conversation (not survey) with the counterfactual question: "if we removed one feature next week, which would you least like to lose?"
- Run a surfacing experiment: promote one buried-but-suspect feature to the home tab for two weeks and measure whether engagement jumps 2-3x, isolating UI debt from real demand.

### Near-term (3-12 months)
- Re-segment 30-day retention by first-session activation feature and compare curves; instrument a "day-1 stickiness threshold" (one meaningful completion) and validate it predicts retention at 80%+ accuracy.
- Build a low-fidelity clickable prototype of only the hypothesized core path and A/B-test it on 5% of new users for two weeks, measuring session length and D1-to-D7 retention before committing to any cuts.
- Run a controlled removal of one medium-engagement feature for a small cohort for two weeks to test the habit-loop-inertia hypothesis directly; restore it and compare retention.
- For any social feature, compute a per-feature churn coefficient weighted by DAU contribution before cutting, to avoid losing network-holding power users.

### Long-term (1+ years)
- Adopt "tangible progress in the first 60 seconds" as the standing acceptance test for every feature in the relaunched product, and as the gate for re-adding anything.
- Establish entry-point tracking (feature-as-app-entry vs. feature-as-in-session-navigation) and time-to-first-meaningful-output as permanent product metrics so future feature decisions are not re-confounded by navigation.

---

## Key Considerations

**Opportunities**:
- A single dominant desire path likely already exists in the data; surfacing and unblocking it could lift the 47-second session and 8% retention without building anything new.
- The retained cohort offers a ready-made, low-cost source of the relaunch premise via a handful of interviews.
- Asynchronously-used features (a monthly calendar view) may be quietly irreplaceable and worth preserving even though usage logs make them look minor.

**Risks & Challenges**:
- The retained minority may be trapped by data or social lock-in rather than genuine value, steering the relaunch toward preserved complexity.
- The retained cohort is small (around 14,400), so feature-level signals can be seasonal noise unless validated across multiple cohorts.
- Optimizing the path to the wrong feature accelerates churn by removing the friction that was slowing worse retention.
- Cutting a social feature can trigger amplified churn if a few power users leave with their networks.

**Trade-offs**:
- Speed versus certainty. The team's short runway favors fast experiments, but the data is confounded enough that one validation step (the 5% prototype) is worth the delay.
- Aggregate clarity versus segmented truth. A single heatmap is readable but averages over incompatible user types. Per-cohort maps are messier but reveal that the core may differ by user.
- Frequency-driven cuts versus value-driven cuts. Keeping high-frequency features is defensible and easy to justify, but biases the product toward notification loops over the deep-value features users actually came for.

---

**Questions addressed**: 3
**Key insights synthesized**: 19
