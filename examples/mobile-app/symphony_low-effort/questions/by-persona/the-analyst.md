---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: "analytical"
stream: "synthesize"
volume: 13
---

# Brainstorming Questions from The Analyst: Feature-Bloated Mobile App MVP Reset

---

## Engagement Signal Decomposition

1. **Session length as diagnostic**: The 47-second average session is a critical data point — what does it reveal about where users are dropping off, and how does that pattern differ across the 15 features in terms of entry frequency, time-on-feature, and abandonment rate?

2. **Retention cohort stratification**: Breaking down the 8% 30-day retention figure — what does the distribution look like across user segments (e.g., users who found one feature they liked versus users who tried multiple features), and does any single feature correlate with meaningfully higher retention when it is the first or most-used feature?

3. **Feature utilization matrix**: If you mapped each of the 15 features against two axes — frequency of use and depth of engagement — which quadrants are occupied, and what does the resulting distribution tell you about where users are finding value versus where they are getting lost?

---

## Feature Prioritization Methodology

4. **Data versus signal conflict**: When behavioral analytics (which features are actually used) conflict with user interview data (which features users say they value), what systematic approach would you use to resolve the discrepancy and determine which signal carries more weight in the pruning decision?

5. **Core value hypothesis testing**: Before committing to a 3-4 feature core, what is the smallest experiment you could run to validate that those features together constitute a coherent product — meaning users who use them in combination retain at meaningfully higher rates than users who use any single one?

6. **The passionate minority calculation**: For features with small but highly engaged user bases, what quantitative threshold would distinguish a feature worth preserving from one that should be spun off or deprecated — and how do you factor in the team capacity cost of maintaining it against the retention or revenue it generates?

---

## Technical and Operational Constraints

7. **Integration debt mapping**: Given that removing deeply integrated features creates technical risk, what does a dependency graph of the 15 features look like — specifically, which features are load-bearing infrastructure that others depend on, and does that dependency structure constrain which cores are actually feasible to build around?

8. **Team capacity reallocation**: With 6 engineers currently spread across 15 half-built features, what is the estimated engineering time currently consumed by maintenance versus new development, and how does that ratio shift if the team focuses on 3-4 features — what becomes possible in the 8-month runway that is not currently possible?

9. **Relaunch sequencing trade-offs**: Breaking down the incremental-simplification versus clean-relaunch decision — what are the measurable risks and costs on each path (user confusion, technical complexity, churn probability, team coordination overhead), and what does the decision tree look like given the specific 8-month constraint?

---

## Success Metric Redefinition

10. **Metric proxy validity**: The current metrics (DAU/MAU at 2%, session length at 47 seconds) may be measuring the wrong things for a simplified product — what metrics would more accurately capture whether the focused app is delivering its core value, and how do you set baselines and thresholds before relaunch rather than after?

11. **Retention curve shape**: Beyond 30-day retention as a single number, what does the retention curve shape reveal — specifically, where in the user lifecycle is drop-off most concentrated, and does the shape suggest a discovery problem, an onboarding problem, or a habit-formation problem?

12. **Pre- and post-simplification comparability**: When the simplified product launches, which metrics will be directly comparable to current baselines and which will require recalibration — and how do you design the measurement framework so the relaunch does not produce a false-positive signal that masks underlying problems?

---

## Communication and Transition Risk

13. **Churn probability modeling**: For the existing 180K download base, what user segments are at highest risk of churning when features are removed, what is the estimated magnitude of that churn, and how does that number factor into the financial runway calculation given the 8-month constraint?

---

**Total questions**: 13
**Topic clusters**: 4
