---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-27
effort: "medium"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: analytical
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Analyst: Feature-Bloated Mobile App MVP Reset

---

## Feature Signal Analysis

1. **Usage frequency vs. engagement depth**: Breaking this down — which of the 15 features show the highest frequency of use, and which show the deepest engagement per session, and where do those two dimensions diverge most sharply from each other?

2. **Feature interdependency mapping**: Which features are structurally entangled in the codebase such that removing one would require significant rework to others, and how does that technical coupling map onto the features that have the strongest user engagement signals?

3. **Retention delta by feature cohort**: If you segment users by which features they activated in their first session, how does 30-day retention differ across those cohorts — and what does that reveal about which features are most predictive of a user staying?

4. **Drop-off point concentration**: The average session length of 47 seconds suggests users are leaving very quickly — at what point in the navigation flow are users abandoning, and which features are most frequently the last thing they touch before churning?

---

## Simplification Decision Framework

5. **Feature-value matrix construction**: The key factors seem to be frequency, engagement depth, retention correlation, technical removal cost, and passionate-minority user base size — how would you weight and combine those dimensions into a defensible scoring model for which 3-4 features survive the cut?

6. **Passionate-minority threshold analysis**: For features with small but vocal user bases, what quantitative threshold separates a segment worth preserving (or migrating to a separate product) from one that should be acknowledged but not allowed to distort the strategic direction?

7. **Incremental vs. clean-break trade-off quantification**: What is the estimated engineering cost difference, in person-weeks, between an incremental feature sunset approach and a clean-relaunch, and how does that cost difference interact with the 8-month runway constraint and team burn rate?

---

## Metrics Redefinition

8. **Success metric reconstruction**: The current metrics — 8% 30-day retention, 2% DAU/MAU, 47-second sessions — are outputs of a product that was trying to be 15 things at once; once the core is defined, what specific metrics and target ranges would indicate that the simplified product is genuinely working, and how do those targets compare to benchmarks for focused apps in adjacent categories?

9. **North star identification**: Breaking this down further — what single metric would serve as the north star for the simplified product, and what is the causal chain connecting the core feature set to movement in that metric?

---

## Team and Execution Capacity

10. **Burn rate and timeline sensitivity**: With 6 engineers maintaining 15 half-built features, what is the estimated reduction in maintenance overhead — expressed as engineering hours per sprint — if the feature set is cut to 3-4, and how does that freed capacity translate into time-to-relaunch given the 8-month runway?

11. **Decision-making authority and process**: The team is burned out and maintaining an unwieldy codebase — who in the current 6-engineer/1-designer/1-PM structure has the authority to make final feature-cut decisions, and what data-gathering and deliberation process would give the team confidence that those decisions are defensible rather than arbitrary?

---

## Relaunch and User Transition

12. **Churn risk segmentation**: Not all 180K downloads represent equal churn risk during a simplification relaunch — what variables (feature usage pattern, notification engagement, session frequency) would you use to segment users into groups with materially different churn probability, and what does that segmentation imply about communication strategy for each group?

13. **Re-engagement baseline estimation**: Given the 2% DAU/MAU ratio, what proportion of the existing user base is effectively dormant, and does that change the calculus of how aggressively to optimize the relaunch around existing users versus treating it largely as a fresh acquisition effort?

---

**Total questions**: 13
**Topic clusters**: 5
