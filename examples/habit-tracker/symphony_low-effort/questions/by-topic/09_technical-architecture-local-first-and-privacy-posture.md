---
project-name: "Modern Habit Tracker Web App"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7[1m]"
---

# Topic Cluster 09: Technical Architecture, Local-First, and Privacy Posture

## Questions

1. **Web-vs-native as a systems tension with a measurable threshold**: The check-in speed goal pushes toward native despite solo-developer economics favoring web — native enables faster check-in but increases maintenance surface, delays feature iteration, and splits the codebase; web enables faster iteration but may introduce a per-user, per-day friction tax. At what user scale or retention metric does the check-in speed gap (say, 12 seconds instead of 8) become a measurable churn driver, and has that threshold been tested empirically rather than assumed?
2. **Local-first as a values signal with concrete sync-failure consequences**: Local-first data is a meaningful system commitment — it changes how sync conflicts resolve, how multi-device use works (morning check-in on mobile, weekly review on desktop), how the paid tier is justified, and what happens when a user loses a device. What percentage of the target user's "opened in the subway" scenarios require offline, what's the engineering cost delta between local-first and cloud-only at MVP scale, what's the data-loss scenario severity if local-first sync fails and how does that affect the trust positioning, and can a solo developer sustain a conflict-resolution layer alongside every other MVP deliverable in 3 months?
3. **Privacy posture as a competitive claim that invites verification**: The PRD commits to "minimal analytics, no third-party tracking SDKs, no session recording" — but without a clear privacy policy and technical audit trail, this is a promise without accountability, and users burned by previous apps are the exact audience most likely to verify privacy claims rather than accept them. What would a discovered discrepancy (even an accidental one, like a CDN logging request metadata) cost a product whose brand is built on trust, and do users care less about functional offline access and more about the implicit signal that their data lives on their device rather than in the cloud, regardless of whether they ever actually lose connectivity?

---

**Question count**: 3
**Cluster focus**: The system commitments embedded in web-vs-native and local-first choices, the sync-failure modes they create, and the accountability burden of a privacy-as-differentiator stance.
