---
project-name: "Modern Habit Tracker Web App"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 09: Local-First Architecture, Data Sovereignty, and Sync Conflict

## Questions

1. **Local-first: commitment, hope, or marketable trust signal?**: The PRD treats local-first as "feasible if possible" with cloud sync as enhancement — but the check-in speed requirement, offline scenarios (subway use), and success metrics (30-day retention, weekly review completion) that require server-side logging put local-first and analytics-instrumented in direct tension; simultaneously, the infrastructure is maturing (CRDT libraries like Automerge and Y.js, expanding privacy regulation) such that local-first may shift from engineering choice to marketable trust signal within 2–3 years. What decisions change if we commit now rather than treating it as nice-to-have, does building on this infrastructure create a genuine head start or demand capability a solo developer can't sustain, and how do we resolve the measurement tension before a painful architectural pivot when the team tries to measure their own success metrics?
2. **Sync conflicts and the moment of truth**: For a single-device user, local-first is elegant; for multi-device users, an offline check-in on a phone colliding with the same habit marked incomplete on a laptop creates a conflict-resolution problem the PRD doesn't address — is "last-write-wins" acceptable for habit tracking or does every conflict matter, and since the <10s check-in is only relevant at specific moments (standing in the gym deciding whether to open the app) vs. a desk check-in over coffee, how often does that moment actually occur — and might the answer change whether native is a genuine constraint or a theoretical one?
3. **Cost-per-active-user at scale**: For a local-first data model with cloud sync as enhancement, what does the cost curve look like at 1,000, 10,000, and 100,000 users — and at what scale does the infrastructure cost structure materially affect the $3/mo pricing assumption?
4. **The "bike path" design principle applied to offline-first architecture**: Transportation planners learned that adding a dedicated bike lane increases cycling even if cars must slow down — the protected path creates behavior the mixed lane never could. Offline-first architecture is sometimes treated as a technical constraint to work around, but this reminds me of how a local-first data model could be the structural "dedicated lane" that makes the <10-second check-in genuinely achievable regardless of connectivity. How should the product's architectural bet on local-first storage be communicated to users as a trust and speed feature, not just a technical implementation detail — and could "your data stays on your device by default" itself become a meaningful differentiator in a market where privacy is a stated concern?

---

**Question count**: 4
**Cluster focus**: Whether local-first is an architecture commitment or a hope, how to reconcile it with measurement and multi-device sync (including last-write-wins conflict policy), and whether it's a durable trust signal or a solo-dev burden.
