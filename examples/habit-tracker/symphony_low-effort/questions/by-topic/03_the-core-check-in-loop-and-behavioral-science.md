---
project-name: "Modern Habit Tracker Web App"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7[1m]"
---

# Topic Cluster 03: The Core Check-In Loop and Behavioral Science

## Questions

1. **Behavioral science with the motivational surfaces removed**: The REQUEST names behavioral science as a differentiator, but the PRD's non-goals remove almost every surface where nudges typically live (coaching, AI chat, motivational content), and the cue/routine/reward scaffolding is borrowed from a popular book rather than validated for this specific pattern — so where exactly does the science show up in the interface, and does requiring users to consciously articulate all three components at setup actually help habit formation or create an upfront cognitive burden that pushes users to abandon setup mid-flow? Is an A/B test of simplified creation (name only) against the full cue-routine-reward form warranted before committing it as the primary onboarding path?
2. **The 10-second check-in as a platform-forcing constraint**: The core loop requires check-in under 10 seconds on mobile, which the PRD acknowledges may favor native over web — but have we tested that claim on mid-range Android devices over a slow mobile connection (which may be exactly where the target user opens the app on their commute), and what's the analytical framework for deciding when the native investment becomes warranted versus a PWA/service-worker/preloaded-state architecture that defers the decision past MVP?
3. **The partial-log complexity surface**: Partial logging ("I did 15 min instead of 30") is a genuine system-boundary decision — too flexible creates a mini-data-entry workflow that competes with the 10-second check-in; too rigid feels dismissive of real effort. What's the minimum viable representation of "partial" that satisfies the user's need to acknowledge incomplete effort without adding cognitive overhead to the core loop, and what does the interface communicate about the value of imperfect effort in the moment a user admits shortfall?
4. **Mycorrhizal networks and invisible support**: Just as mycorrhizal fungi form underground networks that make forest trees resilient without the trees being aware of the infrastructure, could this app's most powerful features operate invisibly — not surfaced as UI elements at all, but shaping the conditions under which habits take root? What would a "mycorrhizal layer" for habit formation look like: background pattern detection, quiet adjustments to check-in timing, or silent recovery mechanisms that activate before a streak breaks rather than after?
5. **What if this app worked best when users forgot it existed?**: The PRD's "invisible-but-present by week six" vision is interesting — but what if we took it to the extreme and designed a habit tracker that actively discouraged users from opening it? No dashboard, no check-ins, no streaks — just a weekly text summary of what the system inferred from passive signals. The absurd version: an app you delete after installing. *The real insight: how much of the daily check-in ritual is actually adding friction disguised as engagement, and what would purely passive habit confirmation look like?*
6. **What if the habit tracker tracked the environment instead of the person?**: Every current tracker asks "did you do it?" — but the behavioral science underlying the PRD (Atomic Habits cue/routine/reward model) says habit formation is mostly about environmental design, not willpower. What if the app tracked context signals — location, time of day, preceding events — and told users which environmental triggers were most predictive of success, rather than logging whether the habit happened? The absurd version: an app with no check-in button at all. *The real insight: logging behavior is lagging data; the actionable leverage is leading data about conditions.*

---

**Question count**: 6
**Cluster focus**: Where behavioral science actually shows up in the interface once coaching, AI chat, and motivational content are ruled out, and how the 10-second check-in holds together under real-world constraints.
