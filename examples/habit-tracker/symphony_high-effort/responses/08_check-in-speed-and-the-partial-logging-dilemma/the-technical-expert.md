---
persona: "The Technical Expert"
topic-cluster: "08_check-in-speed-and-the-partial-logging-dilemma"
model-requested: "haiku"
session: "high"
self-identify: true
---

# The Technical Expert on Check-In Speed and the Partial-Logging Dilemma

## Question 1: Decomposing the <10s Check-In and Web-First Compatibility

* **Web on 4G needs pragmatism.** Sub-10s on vanilla web + slow network is structurally risky. Network roundtrip alone (150–300ms on 4G) plus JS parse, render, and user decision time easily hits 6–8s. Native or PWA with offline-first sync is the only path to reliably <10s; web without service workers will breach SLA on real hardware. Validate prototype on actual mid-range Android (Moto G), not desktop.

* **Network latency dominates.** Break it down: 200ms network round-trip + 100ms JS boot (even on cached service worker) + 1.5s for UI interaction + 1–2s user decision = 4–5.5s minimum. The remaining budget for rendering and edge cases disappears fast. This is why native habit apps succeed—they don't fight network physics.

* **PWA cold-start and haptic gaps matter.** PWA first visit (before service worker caches) adds 2–3s just to load and register the worker. Without haptic feedback, users get no immediate sensory reward—remove the vibration confirmation and the interaction *feels* slow even if it's technically <10s. The emotional texture is as much about immediate feedback as it is clock time.

* **Realistic contingency: aim for 15s, design for 10s.** If 10s consistently fails in user testing, the product doesn't break—it pivots to a "confirm your habit" micro-interaction (button + haptic + offline-first sync). This is honest engineering: ship what works, not what looks good in the pitch deck.

**Questions addressed: 1 / Total responses: 4** — Four technical approaches broken down with network and feedback constraints identified.

## Question 2: Partial Logging as UI Problem, Emotional Trap, and Miscalibration Signal

* **Partial logging is a core UX problem, not a stretch goal.** If skipping a 30-min run to jog 15 min, users need a path that feels like progress, not failure. Frame it as "logged intensity" (a slider or tap-to-increment, not a confessional text field). Technically: store `{planned: 30, logged: 15, duration_minutes: 15}` with a simple UI that treats this as normal, not exceptional. Never use language like "partial" or "incomplete"—use "adjusted" or "practiced."

* **Silent workaround detection via data.** If users are skipping logs entirely after partial attempts, you'll see a spike in "no log for this habit" the day after a logged partial. Track this metric early. Implement a "did you do something?" grace prompt at the next check-in window (not invasive, just a gentle reminder with no shame). This catches the silent workaround before it becomes abandon behavior.

* **UI should normalize the partial path.** A three-tap interaction: (1) Tap habit, (2) Show slider or quick-select (0%, 25%, 50%, 75%, 100%), (3) Confirm + haptic feedback. No emotional language. No "Did you do the full thing?" guilt question. Treat 50% as a valid data point, and let the streaks/motivation system work with *completion percentage*, not binary done/fail.

* **Emotional design: the interface should mirror reality.** Users under time pressure won't enter a long form. Make the happy path one tap (success), and the honest path two taps (partial %). The app should feel like it's *with* them, not judging them. This requires ruthless deletion of explanatory text and "encouragement" messages that feel patronizing.

**Questions addressed: 2 / Total responses: 4** — Four technical and UX patterns to normalize partial logging without shame.

## Question 3: Ten Seconds in the Wild

* **The interaction sequence is: unlock + open + tap + haptic + close.** User pulls phone, face unlock or pattern (2–3s), app instant-loads from cache (0.5s if PWA, 1–2s if native), habit card visible without scroll (0–0.2s), tap the checkmark/confirm button (0.3s), haptic pulse + visual confirmation flash (0.2s), swipe away or lock phone (1s). Total: 5–8s if everything is tuned. Any lag in app open or UI response breaks the flow immediately.

* **Interruption: no app cold-start allowed.** If the app takes 3–5s to boot (network check, splash screen, sync), the user is already context-switching back to their conversation. This is why "always-on-disk" cache and no-network-required design is non-negotiable for mobile UX.

* **Sensory: haptic feedback is the MVP.** A phone vibration (even a cheap Android) takes <10ms and creates a tactile confirmation that registers as "done." Without it, the interaction feels like a tap into a void. Visual feedback (a brief color change or check animation) adds another 200ms but should feel instant. Audio (notification sound) can break social norms in a hallway—skip it.

* **The break point: any non-cached network request.** A single 200ms API round-trip to sync the check-in turns a 7s interaction into a 9s interaction. If that sync fails (no network in a hallway), does the app queue it offline or fail silently? Fail silently + queue is better than a dialog saying "sync failed"—user never needs to know.

**Questions addressed: 3 / Total responses: 4** — Four technical breakdowns of the sensory and timing flow.

## Question 4: The Partial Log Dilemma (Narrative)

* **The interface should tell a story of progress, not compromise.** User logs in after a 15-min run they planned as 30 min. The app shows a slider or tap-select: "15 min done—great start!" (not "You did half"). The language and visual should frame this as a valid achievement, not a shortfall. Technically: use positive framing in copy, and make the 15-min entry visually similar to a 30-min entry in the history view. Don't mark it red or with a warning icon.

* **Avoid the binary trap: offer granular honesty.** Instead of "Did you complete it? Yes / No," use "How much did you get done?" with options like a slider (0–100%) or quick buttons (skipped, 25%, 50%, 75%, done). This removes the shame of "no" and makes partial a *normal* category. Streak-breaking should be tied to effort level, not binary completion.

* **The second story: what the user sees in history.** If they check back on this run tomorrow, they should see "15 min run (completed 15 of 30)" without guilt. The app's tone should be reflective, not judgmental. A "60% effort" tag is neutral; a "failure" tag or red cross is emotional poison.

* **Real-world contingency: if users still abandon after partial, the system has a gap.** Track whether partial logs correlate with habit dropout. If they do, the interface may be working fine, but the *motivation system* (streaks, rewards, social features) isn't resilient to partial progress. That's a product design problem, not a UX one.

**Questions addressed: 4 / Total responses: 4** — Four narrative and emotional design patterns for the partial-logging moment.

## Question 5: What If the App Was Invisible for 23 Hours and 50 Minutes?

* **The <10s ritual requires extreme focus.** If the app only exists for a morning check-in, then every millisecond matters because there's no distraction, no sidebar, no habit browser. The interaction must be: unlock phone, app auto-launches (or is on home screen, one tap), shows a single question ("Did you do X yesterday?"), tap yes/no + optional slider for partial, haptic feedback, done. No dashboard, no streaks carousel, no "motivational" notifications. Just the ritual.

* **Technical implication: minimal app footprint.** A single-screen PWA or native app that loads one habit, one binary toggle, and an optional granularity slider. Data syncs silently in the background, or queues offline. No navigation, no settings visible during check-in. Settings exist, but only for app setup (add habits), not for casual tweaking. This keeps the cognitive load near zero.

* **What's lost without mid-day access?** Users lose the ability to adjust a logged habit, to see today's streak, or to catch a missed check-in mid-day. What's gained: no temptation to obsess, no "let me go see how I'm doing" spiral, no dashboard addiction. Users build a *ritual*, not a checking habit.

* **What's gained: psychological clarity.** A single moment of honest reflection per day, with no friction and no visibility of competitive metrics. This is harder to monetize and requires a very different engagement model (subscription for privacy + ritual, not for dashboards and social features). But if the product is "atomic habit formation," not "engagement metrics," this is the right constraint.

**Questions addressed: 5 / Total responses: 4** — Four technical and product implications of the invisible-app-as-ritual model.
