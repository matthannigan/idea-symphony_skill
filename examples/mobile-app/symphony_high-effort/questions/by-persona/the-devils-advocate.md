---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-27
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Devil's Advocate"
category: structural
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Devil's Advocate: Feature-Bloated Mobile App MVP Reset

---

## The Feature-Selection Process and Its Hidden Assumptions

1. **Data vs. conviction trap**: If the usage data for the 15 features is sparse and noisy — because no single feature was ever well-executed — how confident can the team be that low engagement reflects low value rather than poor implementation, and what would a methodology that separates "feature quality" from "feature demand" actually look like?

2. **Survivorship and vocal-minority bias**: User feedback like "overwhelming" diagnoses the navigation problem, not the value problem — so what prevents the team from misreading "simplify the UX" as "remove features," when the real fix might be progressive disclosure, and how would the team test whether the problem is architecture rather than scope?

3. **Strategic vision as rationalization**: When the team chooses features based on "strategic vision" rather than data, have we considered that "vision" often defaults to what the founders personally find most interesting — and what external checks would prevent the final 3–4 features from simply reflecting team bias rather than user demand?

4. **Sunk-cost inversion**: For every feature proposed for removal, the people who built it will instinctively defend it — so what process would make it psychologically safe to vote against one's own work, and how could the team structure feature review to surface quality assessments rather than ownership defenses?

---

## Churn Risk During and After the Transition

5. **The announcement backfire scenario**: Communicating the simplification as a positive "focus" message assumes users will interpret removal as improvement, but what if power users — the 2% DAU/MAU cohort who may account for disproportionate word-of-mouth — feel punished for engagement, and what would a concrete retention plan for this segment look like that doesn't require keeping the removed features alive?

6. **Feature-dependent onboarding loops**: Have we considered that some of the 15 features may be the reason a specific acquisition channel converts at all — for example, if the meal-planner drove most App Store keyword installs — and how would the team audit which features are acquisition drivers versus retention drivers before cutting?

7. **The niche migration cliff**: Small but passionate user bases for removed features will not quietly disappear — they will publicly review-bomb the app and seed negative sentiment in fitness communities; what is the specific mitigation plan for this scenario, beyond a generic "communicate early" instruction?

---

## Technical Debt and Removal Risks

8. **Entanglement as a hidden budget item**: Deeply integrated features rarely uncouple cleanly — shared data models, shared notification pipelines, and shared analytics instrumentation may mean that "removing" a feature actually creates new bugs rather than reducing maintenance load; how will the team scope removal effort before committing to a public relaunch date, and what's the contingency if removal proves costlier than expected within the 8-month runway?

9. **The incomplete removal trap**: If the team removes features from the UI but leaves backend infrastructure in place "temporarily" to avoid risk, what mechanism prevents that infrastructure from surviving indefinitely and quietly consuming engineering time — and is a clean architectural break at relaunch actually achievable in 8 months given the team's current burnout state?

---

## Burnout, Team Capacity, and the Relaunch Timeline

10. **Burnout compounding under relaunch pressure**: The team is already burned out maintaining 15 half-built features, and a relaunch requires a concentrated burst of design, engineering, and marketing work on top of that maintenance — have we modeled the realistic capacity available for the relaunch sprint, and what risk does it carry that the "simplified" product launches in a degraded state because the team simply ran out of energy?

11. **The 8-month runway as a false floor**: Runway calculations assume current burn rate, but a relaunch typically requires a spike in spend (marketing, design, QA, possible contractor hires); what is the realistic post-relaunch runway if the simplification effort itself consumes 2–3 months of budget, and how does that shape the acceptable scope of the reset?

---

## Definition of Success After Simplification

12. **Metric substitution risk**: Replacing current failure metrics (8% 30-day retention, 2% DAU/MAU) with new targets is necessary, but what prevents the team from choosing metrics that are achievable through artificial means — for example, boosting DAU/MAU by sending daily push notifications rather than by creating genuine daily value — and how would the success framework distinguish metric improvement from metric manipulation?

13. **The "focused product" as a smaller failure**: Have we considered that stripping to 3–4 features might simply produce a smaller, cleaner app that still fails to retain users if the core hypothesis — that daily fitness tracking is a behavior users genuinely want to sustain — is wrong; what evidence exists that any of the 15 features, individually, would drive meaningful daily engagement, and if that evidence is absent, what does the simplification actually solve?

---

**Total questions**: 13
**Topic clusters**: 5
