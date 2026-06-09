---
project-name: "Modern Habit Tracker Web App"
session-dir: "test-runs/habit-tracker/min"
date: 2026-04-22
effort: "min"
stage: "Phase 3: Generic Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "03_product-scope-and-technical-tradeoffs"
---

# Brainstorming Responses: Product Scope and Technical Tradeoffs

---

## Question 10: Web-First Vs. Native Tension

The PRD's core loop requires check-in in under 10 seconds on mobile, but the solo-dev constraint favors a responsive web app — what is the realistic performance ceiling for a mobile web check-in flow, and at what point does that ceiling require a native investment?

* **The web ceiling is actually high enough — if you build for it deliberately.** A PWA built with a framework like SvelteKit or Next.js, served from a CDN edge node, can deliver a check-in tap interaction in under 3 seconds on a mid-range Android device on LTE — well inside the 10-second target. The ceiling isn't the browser; it's the bundle size and cold-start cost. Keep the check-in route under 50kb JS, use service worker precaching, and you get near-native responsiveness. The native investment trigger isn't speed — it's haptic feedback and home-screen presence, which a PWA install covers 80% of anyway.

* **Instrument first, decide later.** Don't assume web is too slow — measure it. Ship the MVP web app, instrument every check-in interaction with `performance.now()` timestamps at tap, render, and confirmation, and report the median to your analytics backend. Set an alert at 8 seconds median. If 30-day data shows p75 above that threshold, you have a specific failure mode to address. Most likely culprits will be cold-start on JS-heavy devices, not the browser's interaction latency itself. This defers a $30k+ native investment until you have data that actually justifies it.

* **Progressive enhancement as a native bridge.** Instead of framing this as web vs. native, build toward PWA-first with native as an upgrade layer. Ship the web app, then use Capacitor or Expo (if you ever add React Native) to wrap the same codebase in a native shell. Capacitor lets you add native haptics and push notifications without rewriting the app logic. The solo-dev advantage: you write the UI once and decide later whether to wrap it. The trigger for wrapping isn't speed — it's user feedback specifically saying "this feels laggy on my phone" from 10+ users in the first month.

* **The real bottleneck is cold start, not interaction.** A user who hasn't opened the app in 12 hours faces a full JS parse + hydration cycle before they can tap anything. That's where the 10-second budget gets consumed. Solve this with aggressive prerendering: render the habit list at build time (or on server), stream HTML to the client before JS loads, and make the tap target interactive via an HTML form POST as a fallback. The check-in succeeds even before React (or whatever framework) hydrates. This is a design decision made at week 2 of development, not at the native-vs-web fork.

---

## Question 11: Local-First As a Trust Signal

The PRD prefers a local-first data model with cloud sync as an enhancement — how does local-first architecture interact with the paid tier's unlimited history feature, and what are the synchronization failure modes that could undermine user trust?

* **Local-first and unlimited history are actually a natural fit — the tension is in sync, not storage.** In a local-first model, history lives on-device by default, so "unlimited history" for paid users means unlimited cloud backup, not unlimited local storage. The architecture: free users get 30-day cloud snapshots, paid users get full incremental sync. IndexedDB holds everything locally regardless of tier. This means a paid user who goes offline for 6 months and comes back can still see all their data — the cloud is just a durability/cross-device layer. Frame unlimited history as "your data is always yours, cloud just makes it safe."

* **The sync failure mode that kills trust is silent data loss.** The worst case isn't a sync error the user sees — it's a merge conflict that silently drops a check-in. If a user checks off a habit on their phone and their laptop, and the sync resolves by keeping only one, they lose a record they believe exists. Use CRDTs (conflict-free replicated data types) or a last-write-wins strategy with explicit conflict logging. For habit check-ins specifically, "union merge" (both check-ins count) is almost always the right resolution — a user can't un-do a workout. Make this the default and document it explicitly.

* **Treat sync status as a first-class UI element.** Many local-first apps fail because users don't know whether their data is synced. Add a subtle sync indicator — a small icon in the top corner that shows "synced 2 min ago" or "3 changes pending." When sync fails, surface a gentle banner: "Check-ins saved locally — we'll sync when you're back online." This converts a potential trust failure into a trust signal. Users who see transparent sync status consistently report higher confidence in apps, even when sync is sometimes delayed.

* **The paid-tier upgrade path has a specific sync risk.** When a free user upgrades to paid, they expect their 30+ days of local history to immediately appear in the cloud. If the initial bulk sync takes 30 seconds or fails partway through, they feel cheated. Build the upgrade flow to trigger a background full-sync immediately, with a progress indicator and a clear "your full history is uploading" message. Retry failed chunks automatically. Test this flow under poor network conditions before launch — it's the most likely moment to create a refund request.

* **Consider a "local-only mode" as a trust differentiator.** A surprising number of users in the 25–45 demographic actively distrust cloud sync for personal habit data. Offer an explicit opt-out: "Keep everything on this device only — no cloud, no account required." Free users who choose local-only can still use the app without signup. This is a differentiation story ("we don't need your data") and reduces your compliance surface. Paid users who want cross-device sync opt in, creating a consent model that's stronger than most competitors.

---

## Question 12: Offline and the Subway Scenario

The PRD leaves offline support as an open question — for the target user who opens the app during a commute, what is the minimum viable offline capability, and how does the answer shape the data model and sync architecture chosen at MVP?

* **The minimum viable offline capability is read-then-tap: show today's habits, accept a check-in.** Nothing more is needed for the subway scenario. A user on the subway needs to see their 3–5 habits for today and tap one. That's two operations: a read from local cache and a write to a local queue. Both are achievable with a service worker + IndexedDB with zero server involvement. The sync happens when they surface from the subway. Define this as your offline contract at day one, and every architectural decision flows from it: you need a local data store, a write queue, and a background sync trigger.

* **IndexedDB as the single source of truth simplifies everything.** Design the data model so the app reads exclusively from IndexedDB, never from the network directly. The network is just a sync channel — it writes to IndexedDB on pull, and IndexedDB writes queue up for push. This means "offline mode" isn't a separate code path; it's the default. The app works identically whether online or offline; the only difference is whether the background sync job has flushed the queue. This architecture is easier to reason about than conditional network/local fallbacks, and it's what apps like Linear and Notion use.

* **The sync architecture decision at MVP is: optimistic local write + deferred push.** When a user taps a check-in while offline, write immediately to IndexedDB with a timestamp and a `synced: false` flag, show the confirmation instantly, and add the record to a background sync queue (using the Background Sync API where available, or a manual retry on app focus elsewhere). On the server side, accept out-of-order writes by timestamp — a check-in logged 40 minutes ago is still valid. This queue-and-flush pattern requires no real-time connection and handles the subway scenario cleanly.

* **The data model implication: use event sourcing, not mutable state.** Instead of storing "habit X: checked today = true," store "habit X: check-in event at 8:23am, device iPhone, synced: false." Events are append-only — there's no merge conflict because you never overwrite. When sync runs, the server replays the event log. This is slightly more complex upfront but eliminates an entire category of sync bugs and makes "full history" trivial: you already have every event. For a solo dev building a local-first app, this pays off by week 6 when you'd otherwise be debugging state corruption.

* **Don't over-engineer offline for v1 — but do pick the right constraint.** The subway scenario is real, but test it before committing to full offline. Add a simple analytics event: "app loaded with no network." If that fires for fewer than 10% of sessions in the first month, your users aren't actually offline much. You still need the check-in queue (that's a 2-day build), but full offline browse, history access, and weekly review can be v2 features. The constraint to respect at MVP: never show a blank screen or an error when the user has no network. Degrade gracefully with cached data, even if it's read-only.

---

## Question 13: MVP Scope Discipline

Given a 3-month timeline and a solo developer, which of the prioritized features in the PRD (creation, fast check-in, weekly review, streak grace, minimal notifications, CSV export) are genuinely interdependent at launch, and which could be shipped as fast-follow releases without degrading the core experience?

* **The true MVP is three features: creation, fast check-in, and streak grace — in that order.** These three are load-bearing because they define the core behavioral loop. Without creation, there's nothing to track. Without fast check-in, the product fails its primary promise. Without streak grace (the "I missed a day and I'm not a failure" mechanism), your target user — who has bounced from other apps due to streak anxiety — will churn in week 3 exactly as they have before. The other four features are enhancements. This is a 6-week build, not a 3-month one, which gives you buffer for polish and QA.

* **Weekly review is interdependent with paid conversion, not with daily use.** The PRD puts weekly review behind the paid tier. If you ship without it at launch, free users don't miss it — they haven't established a weekly review habit yet. But paid users expect it from day one, because it's in the value proposition. The practical answer: launch with a simple weekly review screen even if it's just a prompt and a text field. It doesn't need to be the full prompt-driven experience at MVP — it needs to exist and be findable. Build the full version in month 4 based on what prompts users actually respond to.

* **Minimal notifications can be deferred two weeks without hurting retention.** Notifications matter most for habit formation, which takes 21–66 days to solidify. Your first users won't feel the absence of notifications in week 1 — they're motivated by novelty. Ship without notifications at launch day, add them in the first fast-follow (week 2 post-launch). This lets you focus launch week QA on the core loop. Caveat: add a placeholder in settings that says "Morning reminders — coming soon" so users know it's planned, not forgotten.

* **CSV export is pure fast-follow — ship it in month 4.** Export is used by power users who have 90+ days of data. At launch, nobody has 90 days of data. The feature serves retention, not acquisition. Build the export schema now (so you don't paint yourself into a data model corner), but defer the UI until month 4. The one exception: if you're targeting users who care about data ownership as a differentiator, mention "data export" on the marketing page at launch so it's a promise, and deliver it within 60 days.

* **Interdependence map for build sequencing.** The real dependencies are: creation must precede check-in (obviously); check-in must precede streak grace (you need a streak before you can save it); streak grace must precede notifications (a notification that says "don't break your streak" is actively harmful without grace). Weekly review depends on 7 days of check-in data to be meaningful. CSV export depends on the data model being stable. This gives you a natural build order: week 1–3 creation + check-in core, week 4–5 streak grace + data model, week 6–8 weekly review stub + notifications, week 9–12 QA + polish + soft launch. CSV export ships month 4.
