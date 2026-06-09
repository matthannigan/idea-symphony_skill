---
project-name: "Modern Habit Tracker Web App"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 05: Retention Dynamics, Lapsed Users, and the Drop-Off Curve

## Questions

1. **Where users actually quit, the double-bounce problem, and the silent workaround gap**: Breaking the user lifecycle into distinct phases — onboarding, first-week fragility, 30-day habituation, 90-day plateau — what does the evidence suggest about which phase carries the highest churn risk, how should that phase disproportionately shape v1 feature investment, once this app exists some early adopters will become "double-bounced" (so is there a feedback mechanism that surfaces why users leave and how does that signal flow back into product decisions without creating a reactive loop that chases edge cases), and because people who have bounced from previous habit apps did not just leave but found workarounds (paper journals, phone reminders, sheer willpower), what does mapping those workarounds reveal about what they needed that no app gave them and how should that shape the "grace" mechanism the PRD describes?
2. **Reactivation tone for the returning user**: The PRD lists "what to do when a user is inactive for 10+ days" as an open question, but this scenario is likely to occur in the first 30 days for a significant fraction of users — precisely the window that determines whether the 25% retention target is hit; who are we actually designing for in that moment (user who wants to come back quietly, user who wants to be held accountable, user who has decided the habit is not right for them), what does "silent wait," "gentle nudge," or "want to pause?" each communicate emotionally to a user already carrying guilt, and what does the research on lapse-recovery in behavior change say about the optimal timing and tone of re-engagement before the wrong intervention accelerates churn or the wrong non-intervention misses the recovery window?
3. **30-day retention benchmark credibility**: The PRD targets >25% 30-day retention against an industry benchmark of ~15% — what distinguishes the apps achieving 25%+ from those at the median, and is this target realistic given the solo-dev resource constraint on polish and onboarding depth?
4. **The comeback moment**: Imagine Marcus, who abandoned his last habit app after a brutal travel week shattered his 34-day streak — what does his first session back in this app look like, and what would make him feel welcomed rather than judged in that moment of return?
5. **The ghost user awakening**: Imagine a user who has been silent for 12 days — what does the experience of the app's response to their return feel like, and how do you design that reactivation moment so it reads as a gentle invitation rather than a guilt trip or a cheerful obliviousness to the gap?
6. **The gym's January problem in reverse**: Gyms expect a churn spike after January motivation fades; this app's target user has already churned from other habit apps — how do patterns from high-retention subscription products (e.g., language learning apps, meditation apps with streaks handled gently) suggest the app should design the first six weeks differently from the first six days, and what events in that window are the strongest predictors of long-term retention?

---

**Question count**: 6
**Cluster focus**: Where users actually churn, how to distinguish double-bounced users from ready-to-return users, and what a recovery-oriented re-engagement flow looks like before launch rather than after.
