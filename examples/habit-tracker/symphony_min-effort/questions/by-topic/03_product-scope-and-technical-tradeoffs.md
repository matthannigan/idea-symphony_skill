---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/min"
date: 2026-04-22
effort: "min"
stage: "Phase 2: Generic Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
---

# Topic Cluster 03: Product Scope and Technical Tradeoffs

## Questions

10. **Web-first vs. native tension**: The PRD's core loop requires check-in in under 10 seconds on mobile, but the solo-dev constraint favors a responsive web app — what is the realistic performance ceiling for a mobile web check-in flow, and at what point does that ceiling require a native investment?
11. **Local-first as a trust signal**: The PRD prefers a local-first data model with cloud sync as an enhancement — how does local-first architecture interact with the paid tier's unlimited history feature, and what are the synchronization failure modes that could undermine user trust?
12. **Offline and the subway scenario**: The PRD leaves offline support as an open question — for the target user who opens the app during a commute, what is the minimum viable offline capability, and how does the answer shape the data model and sync architecture chosen at MVP?
13. **MVP scope discipline**: Given a 3-month timeline and a solo developer, which of the prioritized features in the PRD (creation, fast check-in, weekly review, streak grace, minimal notifications, CSV export) are genuinely interdependent at launch, and which could be shipped as fast-follow releases without degrading the core experience?

---

**Question count**: 4
**Cluster focus**: How to make the right scoping and architectural decisions given a solo-developer constraint and a 3-month MVP timeline without foreclosing important future options.
