---
project-name: "Modern Habit Tracker Web App"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 06: Notifications, Attention, and Trust Infrastructure

## Questions

1. **Is "opinionated minimal notifications" respect or projection — and what does non-interaction tell us?**: The PRD commits to exactly two notification types (morning nudge + Sunday review) and calls that "the entire notification surface," but opinion is the developer's opinion; notification behavior is highly personal (a user whose morning routine is chaotic will disable both, one who needs more frequent prompting during formation will find the app silent when they need it most, and users who burned out on previous apps were over-notified *or* notified at the wrong moments rather than needing fewer). Does the stance actually serve the target user or reflect product-team preferences projected onto a diverse population, what does a pre-set two-notification model feel like to users who've been burned — relief, or a different kind of paternalism — and when a morning nudge arrives at the "wrong" moment (commute, caregiving, a meeting), what does repeated non-interaction tell us that we should be designing *for* rather than pushing through?
2. **The nudge as a slow-burn replacement for intrinsic motivation**: Over months of even low-frequency nudges, does a gentle morning ping gradually become the external cue that replaces the internal one — and if that slow-burn dependency is real, how would you even detect the drift before it's baked in?
3. **Notification fatigue and the pull-based pivot as trust infrastructure**: iOS and Android opt-in rates are declining year over year, notification permissions are tightening, and the product already commits to only two types — so is the real question now not whether to notify less but whether to invest in entirely pull-based engagement models (calendar widgets, home-screen glanceables, watch complications) before competitors do, and more broadly, how does the two-notification constraint combined with a no-ads/no-data-selling policy show up *inside* the app as felt privacy rather than just policy text, so the emotional contract ("we will never crowd you") stays intact as commercial pressures build?
4. **Weather alert tiers versus motivational push notifications**: Emergency alert systems use strict tiering — only life-safety messages interrupt at full volume, everything else is opt-in. Most habit apps collapse all urgency into a single undifferentiated notification channel, which trains users to ignore them. This reminds me of how city sirens lost credibility through overuse. How could the app design a two-tier signal ecology — one sacred channel (the morning nudge) and one ambient channel (weekly review) — and what policies would keep the sacred tier from degrading?
5. **Two notifications as a covenant**: Most apps treat notification settings as a preferences menu; this product proposes a hard limit of two notification types. What if that constraint is reframed as a public covenant with the user — stated explicitly in onboarding and reinforced in app store copy — and how might that covenant change the relationship between the app and users who have been burned by notification spam before?

---

**Question count**: 5
**Cluster focus**: Whether a fixed two-notification model respects or projects onto a diverse user base, and how the notification surface becomes (or erodes) a trust contract.
