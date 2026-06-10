---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
persona: "The Audience Advocate"
---

# Equity, Inclusion, and Whose Voice Shapes the Decision - The Audience Advocate

---

## Accessibility Across User Circumstances

* **Audit constraint-based usage first.** Before you strip features, analyze your 180K downloads by user constraints: Which features are being used by people with limited mobility, irregular schedules, no gym access, or unreliable internet? If the meal-planner is the only feature low-bandwidth users can reliably load, killing it cuts off an entire segment. The core three features should be selected *by* the most-constrained users, not *for* the most-resourced ones. Risk: you discover core features that look "low engagement" in data because they're the only thing accessible people could actually use.

* **Test proposed simplification with accessibility advocates.** Bring in users with mobility limitations, people working multiple jobs with fragmented schedules, and users in areas with spotty connectivity. Let them play with your proposed "core" and honestly ask: "Does this still serve you?" Their feedback will be fast and brutal. Timeframe: 1-2 weeks of interviews, immediate iteration. Scope: narrow but high-signal. This prevents the unintended narrowing you're worried about.

* **Keep one "low-friction accessibility feature" even if data doesn't show it.** From the community's perspective, if the habit-tracker or meditation guide is the *only* feature that works for users facing the most barriers — even if only 2% use it — removing it sends a signal that you've stopped serving them. Consider keeping one feature designed specifically for accessibility, even if it's not a top-engagement driver. It says: "We're still thinking about you."

---

## Design With vs. Design For, and Power Dynamics in Feedback

* **Flip your feedback model: seek refusers, not responders.** Your surveys and user interviews over-represent people who like talking to you. Create a parallel feedback channel that specifically recruits people who *ignored* your outreach, *never* opened the app, or *bounced immediately*. Partner with community organizations serving younger users, non-English speakers, or lower-literacy users. Pay them. Ask: "What would need to be true for you to use this?" rather than "What do you think of this feature?" Different question, different audience, completely different answers about what matters.

* **Bring three underrepresented user representatives into feature prioritization as co-decision-makers, not consultants.** Give them data context, but let them challenge your assumptions directly. Not in a session after the fact — in the room during prioritization. Timeframe: 4-6 weeks, starting immediately. Risk/scope: medium. You might kill a feature you thought was core. But you'll also surface real needs that data was hiding. The emotional journey question — "where does hope collapse?" — is something only these users can answer from lived experience.

* **Audit your feedback channels for who can't participate.** Do your surveys require email? You've excluded people without stable email. Do interviews happen via Zoom? You've excluded people without bandwidth or privacy. Do they require written English? You've excluded non-native speakers. For a fitness app, you're probably over-sampling able-bodied, tech-confident people. Redesign the channel itself: in-app polls, SMS options, community partner coordination, incentives that work for lower-income users. This costs time and money but reveals what you're actually missing.

---

## Who Is Not in the Data — the 92% and Beyond

* **Map the full user funnel, not just retention.** Of 180K downloads, where did people drop? Pre-download (store page, keywords), post-download but pre-first-open, first-open, and first-action. The 92% who didn't return might have hit different barriers at different points. Interview 50 people from each stage — especially the pre-first-open group. They'll tell you whether it was the promise, the onboarding, or the core experience that failed. Your feature prioritization should be driven by what *prevents people from opening it the first time*, not what keeps the returners happy.

* **Test with representative non-users, not just current users.** Your addressable market might include people who've never heard of you, people who tried and rejected you, and people who use competitor apps instead. Recruit 20-30 people from each group in your target demographic. Show them the app, watch them interact for 10 minutes, then ask what they'd need to keep it. The silence and hesitations matter as much as their words. Timeframe: 3-4 weeks, significant research effort. Scope: clarifies your entire strategy.

* **Separate "actual users" signal from "accessible data" bias.** Right now, your analytics reflect people who completed signup. But that's a filtered population. Consider: people without credit cards (the app requires subscription or payment?), people with privacy concerns, people in regulated industries (HR monitor, data collection), older users unfamiliar with mobile apps. The hidden assumption might be "our real users are tech-forward and have disposable income." Build a shadow profile of who you're systematically not reaching and what barriers they face. That informs whether you're simplifying *for your audience* or *for your existing users*.

---

## The First-Open Moment, the Navigation Burden, and the Shame Underneath "Overwhelming"

* **Map the emotional and behavioral journey of a first-time user in real time.** Bring in 8-10 new users who match your target demographic. Watch them open the app for the first time without guidance. Where do they pause? Click around uncertainly? Immediately close and open again? Tap a tab and back out? Note the exact moment their face changes from hopeful to confused. That's your data point. Then ask gently: "What just happened?" and listen for shame, frustration, or resignation. The phrase "I don't know where to start" might really mean "I feel stupid" or "this promised to be simple and it's not." That's the emotional state you need to fix.

* **User testing: watch what people *do*, not what they *say* they want.** If people open the app, immediately tap the workout tab, and ignore notifications, that's the true core feature. If 70% of new users close and reopen the app three times without progressing, you have a cognitive-load crisis, not a feature problem. Film 15-20 first-time user sessions. Code for patterns in behavior — not in feedback. What they actually *do* reveals what they need; what they *say* reflects what they think you want to hear.

* **Ruthlessly test on people who hate technology.** Your six-tab navigation wasn't designed to overwhelm — it was designed to be comprehensive. But from someone who just wants to log a workout after a long day, "comprehensive" feels chaotic. Find five people over 55, or five people with self-described low tech confidence. Let them try. If they survive the first screen, you might have something. If three of five abandon it, you've found your problem. Fixing this is faster than removing features — it's about *attention architecture*, not feature cuts.

---

## Feature-Dependent Acquisition Channels

* **Audit which features drive which users to download.** Before you cut anything, map your 180K downloads by acquisition source (App Store keywords, ads, word-of-mouth, review sites, social media). Then cross-reference: which features are associated with each channel? If "meal planner" drove 40% of App Store keyword installs from "fitness diet app," killing it kills that acquisition lever. But you might also discover that "social feed" drove zero acquisition — it's just retention debt. The people who came for meals need different positioning after simplification.

* **Talk to the small-but-passionate users before cutting their feature.** That 3% of users who love the meditation guide? If they're younger, under-served audiences with fewer fitness options, losing them might shrink your addressable market more than data suggests. Understand *who* depends on each feature, not just *how many* depend on it. A small passionate community might represent an underserved segment worth keeping, or it might be a distraction. Only they can tell you which.

* **Plan a migration path for feature-dependent users, not just a sunset.** If you kill the meal planner, don't just say "sorry, we're focusing elsewhere." Tell the 15% of users who primarily used it: "We're partnering with [competitor app] for meal planning. Here's your export and their free trial link." This keeps them in the fitness ecosystem, builds credibility, and might give you partnership opportunities. From the community's perspective, being cut loose suddenly feels like abandonment. A thoughtful handoff respects the time they invested.
