---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "03_retention-diagnostics-and-the-activation-event"
synthesis-type: "summary"
central-tension: "The 8% retention number is uninterpretable until split by activation event, but the personas split on whether the resulting signal is a real product hiding in the bloat or an artifact of survivorship and notification machinery."
---

# Summary: Retention Diagnostics and the Activation Event

## Executive Summary

The cluster converges on one diagnostic move and then divides over what the result will mean. All seven perspectives agree on one finding: 8% 30-day retention is uninterpretable as a headline. It blends two populations—users who completed a meaningful first-session action (logged a workout, set a goal, added a friend) and users who opened the app once and never used it. Segmented properly, activated users likely retain at 15-25% while non-activated users sit near 2-3%. If that holds, the company has an activation problem, not a retention problem. The entire MVP-reset strategy should pivot from "keep people around" to "get people to first value fast."

The unresolved tension sits one layer down. Once the signal is isolated, is it a real product hiding in the bloat, or an artifact? Most perspectives treat the stubborn 8% as a north star: a self-selected cohort who tolerated a confusing 6-tab UI because the value exceeded the friction. Their behavior already ranks the features. A strong counter-current warns that the same 8% may just be survivorship bias (device quirks, notification timing, lucky onboarding moments) plus engagement machinery (push, gamification, social pressure) masking weak intrinsic value. The practical move is empirical and cheap: validate the hypothesis instead of assuming it. Strip everything but the candidate core for a small canary cohort, A/B-test individual features off for the retained 8%, and watch whether retention holds. Decor falls away; load-bearing features prove themselves.

Two reframes recur strongly enough to shape the build. First, the 8% is not one user but three or four micro-cohorts (solo logger, streak minimalist, social/community user, accountability competitor). Each uses a different one-or-two-feature slice and ignores the rest. The team will likely have to choose one cluster and consciously sunset the others rather than design a product that serves all of them weakly, which is how the bloat happened. Second, the real hook may not be a feature at all but a habit-stack (the app sits between two existing daily behaviors) or a social relationship partly outside the app. Both are sticky but fragile, and a careless simplification can shatter the narrow window or orphan the relationship.

The strategic implication is a redefinition of success. Stop reporting raw 30-day retention. Anchor the metric to activation, retention among users who completed onboarding and a first action, and use day-7 activation rate as the leading indicator so the team learns whether onboarding works before time compounds the damage. Improving activation conversion (say, lifting first-workout completion from 8% toward 40%) raises absolute daily actives even if the headline percentage barely moves.

---

## Key Themes

### Activation is the missing denominator
Every perspective opens with the same correction: retention without activation is noise. The recommended first step is a one-to-two-day cohort split in the existing analytics stack, partitioning the 180K base by first-session action. The predicted 15-25% versus 2-3% gap is the single most consequential number the team can produce right now. It reframes the runway problem from retention engineering to activation-funnel design.

### The 8% is plural, not singular
The retained users do not share a portrait but cluster into 2-4 distinct types. Each has mentally narrowed a 15-feature app down to a personal 1-2 feature routine. This matters because "build for the 8%" is meaningless until the team picks which sub-cohort to serve. Tracing each type's literal tap-sequence (2-3 screens, same order, every session) yields the prototype directly.

### Validate the signal, do not assume it
The sharpest dissent in the cluster reframes the optimistic read: the 8% may persist because of survivorship bias and notification-driven engagement, not genuine core value. A load-bearing feature could be a vanishing niche whose removal halves retention. This converts the exercise from "identify the core" to "run cheap experiments (canary cohorts, feature-off A/B tests, a 'more options' menu that hides rather than deletes) that let the core prove itself."

### The hook may be habit-stacking or a relationship, not a feature
A recurring reframe holds that retention is anchored to a moment of day or a social tie rather than to functionality. The app survives because it slots between two existing behaviors or because a friend, partner, or group is using it. The counterfactual question ("what would you do if it vanished tomorrow?") is the cleanest diagnostic. A specific, painful answer marks a defensible product; "I'd just use Strava" marks a commodity.

### Redefine the success metric around activation
Convergent strategic conclusion: replace raw 30-day retention with activation-anchored retention and adopt day-7 activation rate as the forward-looking lever. This produces a truer number (25-35% among activated users) and points engineering at the real bottleneck—the funnel that gets users to first value—rather than retention features layered on a population that never activated.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run the activation-segmented cohort split in Firebase/Mixpanel (1-2 days of SQL) to compare retention for users who completed a first action versus open-only users. This is the highest-leverage, lowest-cost diagnostic in the cluster.
- Decompose day-30 retention by acquisition channel over the last 3 months, enforcing a 100-200 user minimum per cohort. Start with the two largest channels to avoid false patterns in sparse data.
- Conduct 20-30 fifteen-minute interviews with day-30-active users (roughly 10 hours of PM time). Ask what problem they solve and walk through their last three sessions. Pose the counterfactual ("what breaks if this vanishes?") and cross-check every claim against actual usage logs.
- Heat-map the retained cohort's feature time and trace literal tap-sequences to identify the dominant 1-2 features and the 2-4 micro-cohorts.

### Near-term (3-12 months)
- Run a canary test: strip everything but the candidate core for approximately 2,000 new users (or a 500-user beta of existing retained users) and measure day-7/day-30 retention against a 12-15% bar to validate the core empirically.
- A/B-test individual suspected-core features off for the 8% to distinguish load-bearing features from decor before any permanent cuts. Test whether the driver is a single feature or a co-dependent combination (such as workout-logging plus social accountability).
- Before deleting features, hide 8-10 of them behind a "more options" menu and confirm retention holds. This separates genuine value from the comfort of aspirational presence.
- Switch reporting to activation-anchored retention and adopt day-7 activation rate as the primary leading metric. Set differentiated targets: activated users 25%+, casual 5%, power users 40%+.

### Long-term (1+ years)
- Rebuild the product around the single chosen micro-cohort and its specific problem (such as "stay accountable living alone" or "compete with my gym friend"), making the day-one activation event feel inevitable and visible.
- Re-architect acquisition around the channels that actually retain instead of spending to acquire mis-targeted traffic that churns regardless of product quality.
- Protect any habit-stack or external-social hook the diagnostics surface (timing, group chats, exportable data). These are sticky-but-fragile assets that naive simplification would destroy.

---

## Key Considerations

**Opportunities**:
- An activation-segmented view likely reveals a genuinely healthy core (15-25%+ retention) masked by the headline. The product may be closer to viable than the 8% suggests.
- Lifting first-action completion from 8% toward 40% grows absolute daily actives even without changing per-user retention. This is a direct lever on the metric that matters during an 8-month runway.
- The retained users have already done the team's prioritization work by ranking features through behavior. The core can be excavated rather than invented.

**Risks & Challenges**:
- The 8% may be survivorship or notification artifact rather than genuine value. Building toward it without empirical validation risks codifying accidents.
- The retained core may be a small, passionate niche whose load-bearing feature, if cut to chase a larger market, drops retention further (8% to 4%).
- The 8% have high friction tolerance and are unrepresentative of the churned 92%. Designing only for them can preserve workarounds instead of the clean path the larger market needed.
- Sparse cohorts, aspirational survey answers, and 47-second "ghost check-in" sessions can each manufacture false signal if taken at face value.

**Trade-offs**:
- Serving one micro-cohort well versus serving several weakly: choosing a single wedge sacrifices other retained niches but avoids re-creating the bloat.
- Defending the retention number with notifications versus letting it find its natural floor: short-term metric protection deepens dependency on engagement machinery. Accepting a temporary drop yields more durable, intrinsically-motivated retention.
- Acting on the convergent activation insight quickly versus waiting for the dissent's validation experiments: speed matters on a finite runway, but cutting the wrong feature is expensive to reverse.

---

**Questions addressed**: 3
**Key insights synthesized**: 19
