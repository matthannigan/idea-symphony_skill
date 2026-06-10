---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "11_defining-success-for-the-simplified-product"
synthesis-type: "summary"
central-tension: "Whether the reset's success should be measured by retained engagement at all, or by fitness outcomes that may be best served when users need the app less and eventually leave."
---

# Summary: Defining Success for the Simplified Product

## Executive Summary

The organizing tension of this cluster is whether the simplified product should be measured by retained engagement at all, or by fitness outcomes that are often best served when users need the app less. Every perspective rejects carrying the bloated app's DAU/MAU and 30-day retention forward unexamined, but they split on what replaces them. One pole optimizes for sustained, notification-free engagement that proves intrinsic value; the other argues the healthiest outcome is a user who hits their goal and leaves, making churn a success signal rather than a failure. The relaunch's metric framework has to decide which of these it is actually building toward, because the two imply different products.

The most urgent and fully convergent warning is that simplification cannot manufacture demand. If no single feature in the current data already drives genuine return behavior, then cutting to 3-4 features does not fix the problem. It focuses the failure into a sharper verdict that's harder to excuse. A 15-feature app failing at 8% can blame complexity, but a 3-feature app failing at 5% indicts the core hypothesis that daily fitness tracking is a behavior people sustain. The recommended sequence is to validate the core behavior with isolated single-feature tests and interviews of current loyal users before committing to the relaunch, and to define a pivot-or-sunset trigger in advance while objectivity remains.

The current 8% is treated as a polluted baseline because notifications likely prop it up. The shared first move is a notification blackout to expose the intrinsic engagement floor. A steep drop (estimates of 60-80%) should be reframed as honest measurement rather than regression. The new bar gets set from that floor, not from 8%, and the engagement model gets rebuilt for a future where platform permissions make notifications unreliable.

Across the user-experience questions, the convergent replacement for vanity metrics is a single lightweight post-session signal ("did this help your fitness goal today?" or a 1-10 progress feeling) plus a trust measure. The 47-second session length is the correct length for a respectful tool, not a defect. The strategic implication is consistent: build the fastest possible path to one atomic fitness action, measure outcomes and trust, and treat invisibility, not engagement, as the sign the product is working.

---

## Key Themes

**Categorical reframe:** Success for a fitness reset may be inverted from the engagement paradigm entirely. The product wins when users achieve their goal and need it less, so some churn is the product working rather than failing. This reframe is load-bearing. It changes which actions get prioritized and redirects the team from defending a retention number toward instrumenting goal achievement, behavior persistence, and the direction of churn.

### Don't anchor to the bloated baseline
The current 8% retention is a polluted number, likely inflated by notifications and inherited from a social-media measurement paradigm. The cross-cutting first action is a notification blackout to find the true intrinsic floor, then set 30/60/90-day gates from that floor rather than from 8%, tracking intentional (user-initiated) sessions separately from prompted ones.

### Validate the core hypothesis before cutting
The cluster's sharpest convergent warning is that simplification fixes complexity, not market fit. If no feature already drives genuine return behavior in isolation, cutting to 3-4 features produces a cleaner failure that indicts the premise. Isolated single-feature tests, loyal-user interviews, and pre-committed kill criteria must precede the relaunch.

### Measure outcomes and trust, not engagement
The convergent replacement metrics are a one-question post-session signal of whether the user accomplished their goal and felt good, plus a direct trust measure (target ~70% of engaged users), plus outcome metrics like goal-achievement rate and behavior change months after use. These are explicitly preferred over DAU/MAU, session length, and 30-day retention.

### Design for a notification-free, invisible product
Platform trends toward focus modes and tighter permissions make notification-driven engagement less reliable over time. The reset should be built as if notifications do not exist, using user-set triggers, habit-stacking, and ambient progress views. The 47-second session and an app users "forget they have" are signs of a tool that respects time and gets out of the way.

### The minimum may be smaller or more human than expected
The smallest unit that moves a user toward fitness is likely a single atomic action (a ~30-second workout log plus progress visualization). A distinctive reframe pushes further: the active ingredient may be accountability and self-report rather than tracking technology. A Wizard-of-Oz experiment could test whether the product is really human coaching.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Run a notification blackout on the current app (1-2 weeks minimum) and measure the intrinsic-return floor that remains; treat this number, not 8%, as the baseline for all future targets.
- Before committing to the relaunch, run isolated single-feature tests: give a cohort of active users access to one candidate core feature (e.g., workout logging alone) and measure 7- and 14-day return behavior.
- Interview the current loyal users (the 8% who stay) to learn what keeps them, and confirm whether daily fitness tracking is a behavior they genuinely sustain.
- Have a team member live on only the prospective 3-4 core features for ten days and name the one metric that would prove the simplified version is objectively better; derive the success bar from that experienced friction.
- Define and write down the pivot-or-sunset trigger now (e.g., 5% retention at day 90 with no upward trend) while the team still has objectivity.

### Near-term (3-12 months)
- Replace the primary scorecard: instrument a one-question post-session signal ("did this help your fitness goal today?") and a weekly trust question, separating intentional from prompted sessions.
- Build the relaunch around a single atomic action (a ~30-second workout log plus progress visualization), reachable in two taps, with everything else cut or stubbed; this is buildable in roughly 6-8 weeks with the current team.
- Set outcome-based 30/60/90-day gates derived from the intrinsic floor, not the legacy 8%, and design the engagement model to function without notifications (user-set triggers, calendar/messaging integration, offline-capable reminders).
- Run a Wizard-of-Oz test of human-delivered accountability to check whether the real active ingredient is human attention rather than the app's tracking.

### Long-term (1+ years)
- Define and adopt a genuinely new, no-analog success metric centered on durable life impact (e.g., goal-achievement rate at 90 days, or behavior change measured 6 months after users stop using the app).
- Instrument the direction of churn so leaving because a goal was met is counted as success and leaving for a competitor or pen-and-paper is counted as failure.
- Establish trust as the product's market positioning and north star ("never the most-used, always the most-trusted"), tracked through unprompted recommendations and app-store ratings rather than engagement.

---

## Key Considerations

**Opportunities**:
- Trust-as-positioning is a differentiator in a category where every competitor fights for screen time. A genuinely notification-free product could win the segment.
- A no-analog outcome metric (goal achievement, durable behavior change) would let the team report honest, defensible success even at modest retention.
- The 47-second session and short, decisive interactions are a design strength to lean into. They enable the fastest, cleanest fitness logger in the category.
- Blank-canvas co-creation with motivated users could surface a core that is not among the assumed central features.

**Risks & Challenges**:
- The core hypothesis (that daily fitness tracking is a sustained behavior) may be wrong, in which case simplification produces a smaller, harder-to-excuse failure.
- Cutting notifications could drop DAU 60-80%, tempting the team to panic and reinstate them. This would destroy the diagnostic value of the blackout.
- Outcome and trust metrics are qualitative and harder to defend to investors than DAU/MAU. This creates organizational pressure to revert to vanity numbers.
- Sunk-cost and team momentum could lock the team into a cleaner failure unless kill criteria are committed in advance.

**Trade-offs**:
- Sustained engagement versus outcome-driven graduation: optimizing for users who stay conflicts with celebrating users who hit their goal and leave.
- Honest baseline versus investor optics: the truthful post-notification number will look worse before it looks real.
- Speed-of-relaunch versus validation: shipping the reset quickly competes with the pre-launch research needed to confirm the core hypothesis.
- Delight and polish versus trustworthy boringness: investment in engagement hooks and micro-interactions may undercut the minimal, reliable tool users actually trust.

---

**Questions addressed**: 7
**Key insights synthesized**: 20
