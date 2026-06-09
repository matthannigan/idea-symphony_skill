---
project-name: "Modern Habit Tracker Web App"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/habit-tracker/med"
date: 2026-04-22
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_equity-access-and-who-gets-centered"
persona: "The Pragmatist"
---

# Equity, Access, and Who Gets Centered - The Pragmatist

---

## The Primary Persona's Privilege, Language Framing, and Excluded Users

* **Start with observable behavior patterns, not assumed literacy.** The real bottleneck isn't language—it's whether the onboarding surface lets someone succeed without reading a manifesto first. A practical approach: drop the productivity self-help vocabulary from the UI flow entirely. Use plain labels ("Tracked activity," "Does this still matter to you?") instead of "committed habit" or "weekly review." Run the existing onboarding with 5 users who've never used productivity apps and measure where they drop off. Iterate the flow based on where they get stuck, not on whether they understand "behavioral cue."

* **Reserve the v2 parent/family capability; unblock adoption sooner with a single toggle.** Don't wait for a full redesign. In the MVP, add one simple setting: "I'm tracking this for someone else." This removes the friction for caregivers or parents using the app for shared accountability (e.g., medication reminders for an aging parent) without requiring a separate UI pathway. This preserves the core single-user experience while removing the barrier that says "this app isn't for you."

* **Test language with actual target users from different backgrounds.** Before launch, have 3-4 people from outside the "productivity enthusiast" demographic try the app with the actual copy. Watch where they pause, reread, or ask for clarification. If the app requires an Atomic Habits reference to make sense, that's a design debt, not a feature.

* **Design for the exhausted version of your primary persona, too.** The 35-year-old who's "tried before and bounced" might also be someone working two jobs, with no time for "weekly review." The minimum viable interaction should work even when someone has 20 seconds and is running on fumes.

---

## Cognitive Load on Hard Days

* **Lean on persistence and defaults on bad days; don't remove features.** On a grief day or illness day, the person probably won't open the app at all—that's okay. The practical question is: what happens when they do open it? If they've tracked the same habit 47 days straight, seeing "Day 47" and being able to tap "Yes, still doing it" or "Skip today" in two taps is what stays in the MVP. Don't require a mood-check form or a reason-for-skip dialog. Offer optional reflection, but don't gate the basic action behind it.

* **Build a "minimal mode" that can be toggled in three taps.** Not everyone's hard day is the same. Some people want to log and leave. Some want to see a calendar of completion. Start with a single toggle in settings: "Simplified view—show only today's habits and done/skip buttons." Users opt in when needed, not when forced. This takes maybe 2 hours to implement (hide non-essential UI) and solves the problem without branching the core flow.

* **Anticipate offline and low-battery scenarios.** On a hard day, someone might check the app with 3% battery. Make sure the log/skip action works offline and doesn't require a server round-trip first. The app should also have a "last updated" indicator so the user knows whether they're seeing fresh data or stale state. This is a resource question, not a soft design question.

* **Honest signal: warn if the app can't work in the current state.** If the user has 30 habits loaded and the device is running hot, the morning review isn't going to be 30 seconds. A pragmatic approach: default new users to 3-5 habits max in the MVP, with a warning if they try to add a 6th. This sets expectations and avoids the "I opened the app and got overwhelmed" scenario on day 1.

---

## Device and Connectivity Realities

* **Build offline-first from day one, not as a v2 feature.** Service workers and local storage cost almost nothing to add if they're in the architecture from MVP. The subway use case isn't a special case—it's the baseline. On a mid-range phone with spotty connectivity, the app should: log habits locally, sync when the connection returns, and show a small "syncing..." indicator so the user knows what's happening. If this isn't in scope for MVP, be explicit about it in the FAQ.

* **Test the app on a 3-year-old phone with 4GB RAM and 2G fallback connectivity.** That's not a niche scenario for most of the world. Load the habit list, trigger a habit log, and measure the time to response. If it takes 5+ seconds over 2G, users on that device perceive the app as broken. A practical check: compress asset sizes, lazy-load non-essential UI, and preload only the current week's data. This is development discipline, not magical optimization.

* **Acknowledge data cost trade-offs explicitly.** Syncing daily habit logs + analytics doesn't cost much, but if the onboarding flow downloads a 5MB educational PDF or video, that's a decision cost for someone on a metered plan. A pragmatic approach: make the educational content optional and warn the user about file sizes. "Download habit science overview (4.2MB)" with a tap-to-proceed, not an automatic download.

* **Design for low-bandwidth graceful degradation.** The app should work without images, without real-time sync indicators, and without smooth animations on low-end devices. Start with the essential path (open app, log habit, close app) and confirm it's snappy on a 2G connection. Non-essential polish can layer on top if the device supports it.

* **Make offline sync transparent and trustworthy.** Users on unreliable connections will second-guess whether their log actually saved. Show a clear "Logged • Waiting to sync" state, not a spinning loader. Once sync completes, show "Logged • Synced" with a timestamp. This builds confidence that the app is working even when the connection is flaky.
