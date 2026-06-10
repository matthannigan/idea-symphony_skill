---
project-name: "Modern Habit Tracker Web App"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 05: Behavioral Science as Architecture vs. Framing

## Questions

1. **Cue/routine/reward: architecture or onboarding form?**: The app adopts the Atomic Habits cue/routine/reward framing as Feature #1, but at its core that model is a system design, not a UI pattern; separately, forcing users to articulate all three elements during setup can feel like homework and create abandonment before the first check-in — what is the minimal implementation that adds genuine behavioral value versus becomes UI overhead contradicting the "minimal on day one" vision, could the framework be embedded invisibly into smart defaults rather than surfaced as a form, and if the product architecture (data modeling, notification timing, recovery flows, review prompts) were rebuilt with behavioral science as the load-bearing structure rather than a framing device, what would change?
2. **Is anti-gamification principled or reflexive — and does fixed-schedule trustworthiness replace variable-ratio pull?**: The PRD excludes gamification on principle, but variable-ratio reinforcement research shows it genuinely sustains behavior; the question is whether Habitica-style overload is the problem or whether gamification itself is, whether a stripped-down opt-in reward signal (a single weekly "streak restored" acknowledgment, nothing more) is being dismissed too hastily, and what the plan is when users report the app feels cold.
3. **Why do we assume "better" means the things we think it means?**: The PRD targets users who "bounced" and treats the app as the variable — but what if the issue isn't the app design at all? What if those users simply weren't ready to change the habit, or chose habits misaligned with their values? How do we design for that possibility without slipping into coaching territory, and what does "invisible-but-present by week six" actually surface or do differently at week six compared to day one (with what behavioral or data signals indicating the transition from new-user to embedded-user has occurred)?
4. **What if the app tracked the person, not the habit?**: Instead of logging "I ran for 30 minutes," the app inferred and displayed who you were becoming — "You are someone who runs." Strip out all activity records and replace them with evolving identity statements. What breaks? What becomes clearer? *The real insight: behavioral science shows identity-based habits are stickier than outcome-based ones — but most trackers log outcomes. What would it mean to build the data model around identity state rather than activity count?*
5. **What if we invented a new psychological contract with the user**: Existing apps operate on shame avoidance (broken streaks) or extrinsic reward (badges) — both borrowed from gamification — but what if we completely reimagined the motivational architecture from scratch, building around a third paradigm that doesn't yet have a name: perhaps something closer to witnessing, or ritual recognition, than either punishment or reward?
6. **Variable-ratio schedules in animal training versus the weekly review**: B.F. Skinner's research showed that variable-ratio reinforcement schedules produce the most persistent behavior — but they also create anxiety and compulsion (slot machines). The weekly review is a fixed-ratio schedule (every Sunday), which is less addictive but more predictable and trustworthy. This reminds me of how physical fitness coaches deliberately use fixed periodization to build sustainable athletic habits rather than chasing peak output. How could the app lean into the trustworthiness of fixed schedules as a deliberate counterpoint to the variable-ratio anxiety that competitors create with streaks and random badge awards?

---

**Question count**: 6
**Cluster focus**: Whether the cue/routine/reward model is load-bearing product architecture or a marketing surface, and whether anti-gamification is principled design or an under-examined reflex.
