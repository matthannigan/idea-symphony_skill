---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_product-scope-and-technical-tradeoffs"
central-tension: "The cluster pulls between building for simplicity and speed now (PWA, IndexedDB, a 3-feature MVP) versus investing in correctness infrastructure early (event sourcing, CRDTs, native wrapping) that pays off only later — with the brainstormer consistently resolving toward the deferred-investment side when the immediate build is designed with the right primitives."
---

# Summary: Product Scope and Technical Tradeoffs

## Executive Summary

The brainstormer's central move across this cluster is reframing apparent web-vs-native and online-vs-offline tradeoffs as decisions that can be deferred, but only if the right low-cost primitives are chosen at day one. A PWA with aggressive prerendering and a service worker can meet the 10-second check-in target. IndexedDB as the single source of truth makes offline the default rather than a special case. Event sourcing eliminates sync bugs before they appear. The investment question is whether to reach for the correct data model at week two, when the cost is low.

MVP scope gets the same treatment. The brainstormer identifies three interdependent features (habit creation, fast check-in, and streak grace) and positions everything else as fast-follow with explicit timing: notifications at week two post-launch, weekly review stub at month two, CSV export at month four. The sequencing is grounded in a dependency chain, not arbitrary prioritization. Each feature requires the one before it to be meaningful. This gives a solo developer a defensible build order rather than a features-vs-time negotiation.

The trust story running through Questions 11 and 12 is distinct and underweighted relative to the technical choices. Local-first architecture is positioned as a user-facing differentiator, not just an engineering pattern. Silent data loss is named as the highest-risk failure mode. Transparent sync status and an explicit local-only opt-out are presented as trust signals that convert a liability into a competitive claim.

---

## Key Themes

### Defer the Big Investment, Not the Right Primitive
The brainstormer returns repeatedly to the idea that expensive decisions (native app, full offline, full weekly review) can wait, but only if the cheap version is built with the right foundation. Event sourcing instead of mutable state, IndexedDB as single source of truth, and build-time prerendering are all framed as week-one choices that make later investment optional rather than forced. `[recurring]`

### Instrument Before Committing
Two separate questions get the same answer: measure first, decide later. Cold-start performance on mobile should be measured with `performance.now()` timestamps before triggering a native investment. Offline session frequency should be measured with an analytics event before committing to full offline support. The brainstormer never treats an architectural fork as a design-time decision when data could resolve it. `[recurring]`

### Local-First as Trust Architecture
Questions 11 and 12 both treat local-first as a user-trust claim, not just a technical preference. Silent merge conflicts are named as the highest-risk failure mode. Transparent sync indicators, an explicit local-only mode, and union-merge conflict resolution (both check-ins count) are positioned as the mechanisms that make the trust claim credible. `[recurring]`

### Scope Discipline via Dependency Mapping
The MVP answer in Question 13 is a dependency graph, not a features list. Creation precedes check-in; check-in precedes streak grace; streak grace precedes notifications. This framing converts a subjective prioritization debate into a sequencing constraint. The brainstormer uses it to derive a specific week-by-week build order. `[single]`

### Paid Tier Has Specific Failure Moments
The upgrade path from free to paid is identified as a distinct trust risk: the bulk sync triggered on upgrade is the most likely moment to generate a refund request if it fails or stalls. Weekly review is flagged as a feature paid users expect from day one, even in stub form. `[single]`

---

## Recommended Actions

### Immediate (0-3 months)
- Design the data model as an append-only event log (`habit_id`, `checked_at`, `device`, `synced: false`) rather than mutable state from week one — this eliminates sync conflicts and makes full history trivial. `[recurring]`
- Implement IndexedDB as the single source of truth; all reads go to IndexedDB, the network is a sync channel only. `[recurring]`
- Keep the check-in route under 50kb JS, use service worker precaching, and render the habit list server-side before JS loads so the tap target is interactive before hydration. `[recurring]`
- Add a sync status indicator (e.g., "synced 2 min ago" / "3 changes pending") and a gentle offline banner from day one — these are trust signals, not polish. `[recurring]`
- Ship creation, fast check-in, and streak grace as the v1 core; add a "Morning reminders — coming soon" placeholder in settings. `[recurring]`

### Near-term (3-12 months)
- Add push notifications in week two post-launch, after core-loop QA is complete. `[single]`
- Instrument every check-in with `performance.now()` at tap, render, and confirmation; set an alert at 8-second p75 median. Trigger native investment only if 30-day data shows consistent breach. `[recurring]`
- Log an `app_loaded_offline` analytics event; if it fires for fewer than 10% of sessions after month one, defer full offline history access to v2. `[recurring]`
- Build an explicit local-only mode (no account required, no cloud sync) for users who distrust cloud storage; position it as a differentiator on the marketing page. `[single]`
- Ship a minimal weekly review screen (prompt + text field) for paid users by month two; instrument which prompts users respond to before building the full version. `[single]`

### Long-term (1+ years)
- Build the CSV export schema now to avoid data model lock-in; ship the export UI in month four once users have 90+ days of data. `[single]`
- Evaluate Capacitor wrapping of the web app as a native-shell upgrade path if user feedback specifically flags lag on mobile from 10+ users; defer until that signal appears. `[recurring]`

---

## Key Considerations

**Opportunities**:
- Local-only mode is a credible differentiator in a market where most competitors require accounts. It also reduces compliance surface area.
- Event sourcing makes "unlimited history" for paid users nearly free to implement. The full audit log already exists.
- A 6-week core build leaves substantial buffer for QA, polish, and a fast-follow notification sprint before the 3-month mark.

**Risks & Challenges**:
- Silent merge conflicts (a check-in that syncs on two devices and resolves by dropping one) are the highest-trust-damage failure mode. Union-merge or CRDT resolution is required from day one.
- The free-to-paid upgrade sync is the most likely moment to generate a refund request. Progress indication and tested retry logic under poor network conditions are needed.
- Cold-start JS parse on JS-heavy devices is the realistic bottleneck for the 10-second check-in target on mid-range Android.

**Trade-offs**:
- Event sourcing adds upfront complexity but eliminates a category of sync bugs that would cost more to debug later. The brainstormer judges the tradeoff favorable at week-one adoption, less so if adopted mid-project.
- Deferring notifications past launch trades some early retention for launch-week QA focus on the core loop. This is acceptable only if the "coming soon" placeholder is visible in settings.
- Local-only mode reduces compliance surface but also reduces email capture and upsell surface. It's appropriate for the target user segment but worth naming as a revenue tradeoff.

**Conspicuous absences**:
- The brainstormer never names a testing protocol for the sync and conflict-resolution logic it recommends. CRDT or union-merge conflict resolution, out-of-order write acceptance, and the bulk-sync upgrade flow are all named as critical paths, but no test strategy (unit, integration, or manual checklist) is proposed for any of them. For a solo developer, these are the most likely sources of silent bugs.
- The brainstormer names "25–45 demographic" as distrusting cloud sync and recommends local-only mode for them, but never addresses how a local-only user converts to paid. If local-only is free and requires no account, the upgrade path to paid is structurally broken for this user segment.

---

**Questions addressed**: 4
**Response sources**: 1 (generic brainstormer)
