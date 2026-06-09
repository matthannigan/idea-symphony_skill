---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/low_sonnet"
date: 2026-04-23
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "09_technical-architecture-local-first-and-privacy-posture"
persona: "The Pragmatist"
---

# Technical Architecture, Local-First, and Privacy Posture - The Pragmatist

---

## Web-vs-Native as a Systems Tension with a Measurable Threshold

* **Start web, instrument the friction, then decide.** A solo developer cannot afford to assume that 4 seconds of check-in latency drives churn before measuring it. A practical approach is to ship a Progressive Web App first — you get installability and near-native speed on modern devices — then instrument check-in completion time against 7-day and 30-day retention in your analytics. If you see a statistically significant drop in retention correlated to session length, you have an empirical threshold. Until then, the split-codebase cost (two release tracks, platform-specific bugs, Apple developer fees, Play Store review cycles) is a budget you don't have on a 3-month MVP timeline.

* **PWA closes 80% of the native gap at 10% of the cost.** The residual friction of web vs. native for a simple check-in flow — one tap, one confirmation — is largely perceptual rather than technical. Service workers give you offline-capable check-ins; the Web App Manifest gives you home-screen installability; the Vibration API gives you haptic feedback. The remaining gap (background notifications on iOS being flaky, widget support absent) matters for power users, not for the day-1 retention cohort. Build the PWA, note where users hit hard walls, and revisit native only for those specific surfaces after 6 months of usage data.

* **Define the churn-driving threshold before you build, even if you can't measure it yet.** A practical heuristic for a habit app: if the check-in flow takes more than 15 seconds from unlock to confirmation on a mid-range Android device on a 4G connection, you have a problem. That's your measurable proxy. Set up a synthetic performance monitor in CI from day one so you catch regressions before shipping, rather than discovering them in churn data six weeks post-launch.

* **The maintenance surface cost of native is a slow tax, not a one-time fee.** The real calculation isn't build cost — it's carry cost. Native means two OSes issuing breaking SDK changes on independent schedules, two review queues with independent approval timelines, and two sets of platform policies that can unilaterally affect your monetization model. For a solo developer, a React Native or Flutter cross-compile is a middle path worth pricing out, but even that doubles your platform surface compared to a pure web approach. Make the decision knowing it's a multi-year operational commitment, not just a Sprint 1 architecture call.

## Local-First as a Values Signal with Concrete Sync-Failure Consequences

* **Offline-capable check-in is the MVP target; full local-first sync is a Phase 2 feature.** The practical minimum to serve "opened in the subway" scenarios is: write check-ins to IndexedDB immediately, sync to the server opportunistically when online, show the user a clear "syncing" indicator rather than silently failing. This pattern — offline-first write, eventual consistency sync — can be built with existing libraries (Dexie.js, TanStack Query with offline mutation queuing) in about a week of focused effort. Full conflict-resolution for multi-device sync (morning mobile check-in vs. evening desktop review) is a materially harder problem and should not be in scope for a 3-month MVP.

* **Price the engineering delta honestly before committing to local-first as a brand promise.** Cloud-only architecture at MVP scale is roughly: auth service + REST API + Postgres on a managed host (Supabase, Railway, Render). That's 2–3 days of setup. Local-first with reliable sync adds: IndexedDB schema design, sync queue logic, conflict resolution strategy (last-write-wins is simple but wrong for habit data; three-way merge is correct but complex), and a background sync service worker. Conservative estimate: 3–4 weeks of additional engineering time. For a 3-month MVP with a solo developer, that's 25–33% of your total runway. Know that before the architecture decision is made, not after.

* **Device loss is a trust scenario, not just a data scenario.** If local-first sync fails and a user loses their phone, they lose their streak history. For a habit tracker specifically — where streak continuity is a core psychological motivator — data loss is not a neutral UX event. A practical approach is to always maintain a server-side record as the source of truth for historical data, with local storage as the read-optimized cache for speed. Frame this to users as "your data is always backed up; the local copy just makes it faster." That preserves the privacy signal (no third-party analytics) without the data-loss exposure of true local-first.

* **Multi-device sync at MVP is a scope trap.** The PRD notes "morning check-in on mobile, weekly review on desktop" as a target scenario. To make this work with local-first, you need conflict resolution that handles the case where both devices write independently and then sync. For habit data specifically — "did I complete this habit today?" is a boolean with a timestamp — last-write-wins is probably acceptable. But as soon as you add partial completion, notes, or mood tags, the conflict surface grows. A practical approach: treat mobile as the write device and desktop as the read/review device for the MVP, with a clearly stated "desktop view is read-only" constraint. Ship multi-device write in v1.1 after you've learned your users' actual cross-device patterns.

## Privacy Posture as a Competitive Claim That Invites Verification

* **Publish a machine-readable privacy policy from day one, not a PDF afterthought.** Users who care enough about privacy to select a tracker based on it will check. A practical approach is to host a privacy.md or privacy page that lists every data point collected, every third-party service used (CDN, auth provider, error tracking), and what each one logs. Be specific: "We use Cloudflare as a CDN. Cloudflare logs request metadata including IP addresses for 24 hours per their standard policy. We do not have access to this log data." That specificity is the accountability layer that converts a marketing promise into a verifiable commitment — and it defuses the "CDN logging request metadata" failure mode by disclosing it proactively.

* **The trust cost of an accidental discrepancy is asymmetric and severe.** If a privacy-positioned product is caught logging data it said it wouldn't — even via a third-party CDN or an analytics SDK included transitively through a dependency — the reputational damage is disproportionate to the technical severity. A practical mitigation is a dependency audit step in your CI pipeline: use a tool like `npm audit` plus a manual review of `bundle-analyzer` output to catch any analytics or tracking SDKs pulled in transitively. Do this before launch and after every significant dependency update. The engineering cost is low; the risk mitigation is high.

* **Functional offline is a different value proposition than privacy-by-architecture.** The question is whether users want offline access or whether they want the implicit signal that their data lives on their device. These are different needs that attract different users. A practical approach is to validate which one your early adopters actually value: add a single survey question at onboarding ("What matters most to you: works offline, or your data stays private?") and segment your retention data by answer. The result tells you whether to invest in sync engineering or in privacy transparency tooling — two very different technical roadmaps.

* **Error tracking is the easiest accidental privacy violation to commit.** Sentry, Datadog, LogRocket — all common error-tracking tools — capture request payloads, user identifiers, and session context by default. If the PRD commits to "no third-party tracking SDKs," error tracking needs explicit scoping. A practical approach: use a self-hosted error tracker (Sentry has a free self-hosted option) or strip PII from error payloads before they leave the client using Sentry's `beforeSend` hook. Document this in the privacy policy. This is a 4-hour implementation task that closes a significant trust gap before it becomes a public incident.
