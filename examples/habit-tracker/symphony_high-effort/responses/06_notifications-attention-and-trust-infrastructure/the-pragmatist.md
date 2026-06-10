---
persona: "The Pragmatist"
topic-cluster: "06_notifications-attention-and-trust-infrastructure"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
self-identified-as: "pragmatist focused on implementation feasibility and resource constraints"
---

## Question 1: Is "Opinionated Minimal Notifications" Respect or Projection?

* **Start with a 2-week analytics phase.** The PRD commits to two notification types but that's based on hypothesis, not user data. A practical approach: launch the MVP with both notifications enabled, add granular toggle controls, then analyze 2 weeks of opt-in/opt-out patterns. Track specifically: what % disable the morning nudge within 48 hours, when do users re-enable, what's the correlation between notification disable and churn? The "opinionated" stance becomes defensible only after you have behavioral evidence that validates or invalidates the two-notification assumption. If data shows 40% disable both by week one, you pivot to settings before scaling.

## Question 2: The Nudge as Slow-Burn Replacement for Intrinsic Motivation

* **Instrument the dependency explicitly.** You can detect drift by tracking a simple metric: ratio of habit completions on days when the notification fired vs. days without notification (weekends, holiday breaks, or A/B groups). Build a backend flag to silence notifications for a control cohort for one week monthly and measure completion drop. If completions fall 35%+ when notifications pause, you have evidence of extrinsic dependency and need to surface that to users (e.g., "You're relying heavily on reminders — try one weekend without to build internal cues"). Detection is cheap; ignoring it until it's "baked in" is expensive.

## Question 3: Notification Fatigue and Pull-Based Pivots as Trust Infrastructure

* **Phase 2 MVP: deepen the home-screen widget.** Don't build watch complications or calendar widgets in month one. Instead, make your mobile web app installable as a home-screen shortcut, add a habit-check glanceable card that doesn't require opening the full app, and track time-to-completion from shortcut vs. notification. Meanwhile, monitor your app's push permission grant rate weekly. If you see iOS decline below 70% grant rate by month three, shift Phase 2 budget from push notification features to the pull-based widget experience. That's a leading indicator that your users are already rejecting notification infrastructure; adapt before you over-invest.

## Question 4: Two-Tier Signal Ecology (Life-Safety vs. Ambient)

* **Map user mental models before architecting.** The weather alert metaphor is sound but users don't naturally think of habit reminders as "critical" vs. "ambient" — they think of them as intrusive or helpful based on *timing*, not tier. Practical first step: in testing, send the same nudge at different times (6am, 11am, 6pm) and track which time window has the highest completion and lowest disable rate. Once you know *when* users perceive the nudge as least intrusive, you can defend that time as the "sacred channel." The tier distinction matters only if rooted in user behavior, not alert-system analogies.

## Question 5: Two Notifications as a Public Covenant

* **Make the constraint a product differentiator in copy, not a feature limit.** In app-store description and onboarding, explicitly state: "We will never send more than two notification types. Period. No future product changes will violate this." This costs nothing to implement and immediately signals trust to burned-out users. However, *do* include a settings page where users can disable either or both at any time without friction. The covenant is credible only if users experience it as a choice they can enforce, not a hard ceiling they resent.

---

**Questions addressed**: 5 / **Total responses**: 5. All responses prioritize measurement and user data over assumption, with concrete Phase 1 and Phase 2 implementation pathways.
