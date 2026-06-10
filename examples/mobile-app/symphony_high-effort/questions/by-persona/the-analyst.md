---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-27
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Analyst"
category: "analytical"
stream: "synthesize"
volume: 12
---

# Brainstorming Questions from The Analyst: Feature-Bloated Mobile App MVP Reset

---

## Feature Prioritization Diagnostics

1. **Usage concentration vs. retention correlation**: Breaking this down — among the 15 current features, what does the distribution of session touches look like, and which specific features show the highest correlation with users who return after day 7 versus those who churn within 48 hours?

2. **Engagement depth vs. breadth trade-off**: The 47-second average session could mean users are bouncing off the complexity or speed-running a single action — what data would distinguish "confused users who leave" from "habitual users who complete one thing fast," and how does that distinction change which features to keep?

3. **Cohort decay by acquisition channel**: The key factors here seem to be not just what users do but why they downloaded the app in the first place — how does 30-day retention differ across acquisition cohorts (organic search, paid social, app store category browse, word of mouth), and what does that tell you about which value proposition actually resonates?

4. **Qualitative signal extraction**: User feedback uses words like "overwhelming" and "jack of all trades" — what structured method would you use to move from these sentiment clusters to a ranked list of the 3-4 features users would most miss if they were removed, and how do you weight responses from users who stayed 90 days versus those who churned in week one?

---

## Retention and Engagement Measurement

5. **Redefining the retention unit**: 8% 30-day retention is the headline number, but it aggregates all use patterns — what would retention look like if you segmented by users who completed a meaningful action in their first session (e.g., logged a workout, set a goal) versus those who only opened the app, and what does that suggest about onboarding as a variable distinct from feature count?

6. **Defining a success metric floor**: Before cutting features, what minimum quantitative bar should the simplified product hit at 30, 60, and 90 days post-relaunch to confirm the simplification worked rather than just shifted the problem, and how do you set that bar without anchoring it to the current 8% number?

7. **Session length as a misleading proxy**: The 47-second average session is presented as evidence of failure — under what circumstances would a 47-second session represent the product working exactly as intended (e.g., a quick log or check-in), and how do you design a post-simplification measurement framework that separates intentional brevity from disengagement?

---

## Feature Removal Decision Framework

8. **The passionate minority problem**: Some features may have small but highly engaged user bases — what analytical framework would you use to decide whether a feature with, say, 500 highly active daily users justifies retention, and what variables (churn risk, acquisition value, technical cost, strategic alignment) enter that calculation?

9. **Technical interdependency mapping**: Deeply integrated features don't remove cleanly — how would you systematically map the dependency graph of the 15 features to identify which removals are architecturally clean versus which create cascading debt, and how does that dependency structure constrain the order in which features can be cut?

10. **Incremental vs. clean-break decision criteria**: The key factors separating "simplify incrementally" from "clean relaunch" seem to be risk tolerance, technical debt severity, and user communication costs — what specific thresholds on each of these dimensions would push the decision toward one approach over the other, given 8 months of runway?

---

## Team and Resource Constraints

11. **Maintenance cost per feature**: With 6 engineers maintaining 15 features, each feature consumes roughly 0.4 engineers of maintenance capacity on average — how would you estimate the actual maintenance burden per feature to identify which features are consuming disproportionate engineering time relative to the user value they deliver, and how does that analysis inform which cuts recover the most team capacity fastest?

12. **Runway burn rate against simplification timeline**: Breaking this down — if a clean relaunch requires, say, 3 months of focused rebuild before any new user acquisition, what does the cash-flow picture look like across the 8-month window, and at what point in the simplification timeline does the team need evidence of improved metrics to justify continued investment versus triggering a harder pivot decision?

---

**Total questions**: 12
**Topic clusters**: 4
