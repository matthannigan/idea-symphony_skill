---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "01_defining-the-core-value-hypothesis"
persona: "The Devil's Advocate"
---

# Defining the Core Value Hypothesis - The Devil's Advocate

---

## The Irreducible Need Beneath the Bloat

* **Fitness apps assume "fitness" is the need, but what if it's accountability?** The 180K users may have downloaded because they wanted external structure to keep them from quitting—not because they specifically wanted to track workouts. To test this hypothesis, audit support tickets and user interviews for mentions of "habit formation," "staying on track," or "having someone watching" versus mentions of specific fitness features. If accountability emerges as the core, you could strip to one simple accountability mechanic (check-ins, daily streaks, or public commitment) and test whether retention improves without the 15-feature weight.

* **Social proof, not health optimization, might be what users crave.** If the app's social feed, challenges, and friend connections are the stickiest features while workout data sits dormant, then the irreducible need isn't "get healthier"—it's "be part of something." This flips your core hypothesis away from health tracking toward community affirmation. The risk: you might simplify around the wrong features if you weigh data usage equally across feature types. Mitigate by measuring *engagement velocity* (time users spend per session) and *return rate* (day-2, day-7, day-30 reopens) by feature, not just raw usage frequency.

* **The original intent may have been diluted by each new feature's "solution to churn" logic.** Fitness app makers typically add features when retention drops (add meditation for burnout, add social for isolation, add shopping for monetization). This creates a false signal that each feature solves the core problem, when really each one is a patch. To uncover the true core, ask the team: "If you could rewind to the first version before any churn crisis, what did users say they wanted?" Compare that original insight to today's feature set. Chances are, one or two features directly address that insight, and the other 13 are aftermath.

---

## Assumed Core Versus Revealed Core, and Whose Definition Wins

* **"Data-driven decision" is often a democracy vote disguised as objectivity.** Six engineers surveyed privately about the "real core" likely have six different mental models shaped by which features they built, which ones they've debugged most, and which ones their friends use. Before running analytics, do a blind card sort: have the team each write down the three features they think are essential, sealed, then open all at once. You'll immediately see whether alignment is consensus or assumption—and where the real disagreement lives. If the team is fragmented, that fragmentation probably mirrors your user base, suggesting the core value is genuinely ambiguous and needs deliberate invention, not discovery.

* **User interviews will tell you why people kept the app, not why they downloaded it.** The 180K people who abandoned the app (92% monthly churn) can't be interviewed; they've already voted with deletion. You have a selection bias: only the 8% retention cohort is available to ask. They might say "I love the workout tracker," but users who left might have said the same thing before quitting. To mitigate: offer a small incentive to lapsed users (gift card, reinstall bonus) to do a brief exit interview specifically about why they stopped opening it, not why they liked what they found. Separate the "current users" voice from the "defaulted user" voice, because they're making different kinds of sense.

* **A feature might be "core" to the team's identity but "peripheral" to actual retention.** The meditation guide might feel essential because it was a design passion project, or the coach marketplace might feel real because it generates revenue—but neither might correlate with who comes back week-over-week. To surface this risk, run a correlation analysis: for each of the 15 features, calculate the session duration and return rate *with and without* that feature in a user's profile (i.e., did they ever use it or interact with it?). The features that show the strongest link to repeat engagement are your actual core; everything else is debt. Be prepared for the answer to be a feature no one on the team loves, which is why assuming before testing is dangerous.

---

## The First-Loved Feature

* **"Unsolicited positive feedback" is invaluable, but track its emotional tone separately from usage numbers.** A feature might have high DAU but generic praise ("this is useful"), while another feature with lower usage gets passionate comments ("I look forward to this every morning"). That emotional resonance—delight, not utility—often predicts long-term retention better than raw engagement metrics. To identify it, pull all user reviews from launch to present, tag them for emotional language (excitement, appreciation, humor), and look for the feature that generates the warmest, most specific praise. That feature likely touches something deeper than its feature description suggests and deserves to be the anchor of your core hypothesis.

* **Positive feedback might reflect ease-of-use, not actual value delivery.** The feature users praise might be praised because it's simple or because it works correctly, not because it solves a genuine need. This is especially risky if other features are technically broken or confusing—users might default to praising the least painful option rather than the most important one. To mitigate: when you identify the praised feature, do a follow-up user interview asking specifically, "What would you lose if this feature disappeared?" versus "Why do you like it?" The answer to the first question is more honest about actual value; the second might be about polish or familiarity.

* **If no feature generated genuine delight, that itself is a data point worth acting on.** Users at 8% retention and 47-second sessions might have never found anything delightful about any of the 15 features because the product's value proposition is genuinely broken—not because one feature is hidden in a cluttered UI. In this case, the "first-loved feature" doesn't exist, and trying to identify a core from 15 mediocre options is searching for the brightest bulb in an unlit room. The honest move: admit that none of the existing features deliver real value, and start the core hypothesis from scratch (use Questions 4 and 6 as your foundation instead).

---

## What if the App Didn't Exist Yet

* **Your answer is constrained by what exists today in the fitness category.** If you imagine inventing a fitness app from scratch, you'll likely land on something that looks suspiciously like Strava, Apple Fitness+, or Peloton—because those solutions are already optimized and visible. The risk: you'll invent a known good, not a novel core. To break that gravitational pull, invert the question: "What fitness problem is *not* solved by existing category leaders?" Is it the lack of low-cost community (not Peloton's strength)? Is it frictionless habit formation (which most trackers neglect because data capture is their monetization angle)? Is it accountability for people who have failed at fitness before? Start from a *gap*, not an app type.

* **The "single irreducible thing" might not be a feature at all—it might be a frequency or a ritual.** Rather than asking "what does a fitness app do?", ask "how often should a person interact with it, and in what context?" If the answer is "once a day for 30 seconds as a habit nudge," then your core isn't workout data—it's a streaking or reminder system. If it's "three times a week for deep reflection," then your core is a journaling or progress visualization tool. Frequency shapes everything else. Many fitness products conflate different use rhythms into one app, causing churn when users' natural frequency (weekly check-ins) collides with the product's design frequency (daily notifications). To test this, ask your 8% retained users: "How often do you actually want to interact with this?" The answer might reveal the core rhythm you're missing.

* **You don't have ground truth for how often people *actually* want to engage with fitness accountability.** You're operating with a hypothesis buried in your question. What if the real irreducible thing is that most people don't want to engage with fitness apps at all—they want the outcome (fitness) without the interaction (the app)? That's a hard truth, and it suggests the core isn't a better feature set, it's a delivery method that removes friction entirely (wearable, ambient, algorithmic). If that's true, a mobile app is the wrong substrate, and you should be designing for a smartwatch, smart home, or AI coach interface instead. Before narrowing your core hypothesis, test whether the medium itself is the blocker.

---

## The Product as Relationship, Not Tool

* **"Ambient presence" is a real and valuable pattern, but it requires a different business model than a fitness app.** Successful ambient products (Apple Health, continuous wearables) work because they're already ecosystem players or because they have zero friction to exist (they run in the background). A 6-person team building a mobile app has no ecosystem weight and limited resources to run passive infrastructure. The risk: you romanticize the idea of ambient presence, design for it, and then can't execute it because it requires push notifications, server infrastructure, wearable integrations, and always-on permissions—all things the team currently lacks. To mitigate: pilot "ambient presence" with a minimal viable version. Pick one simple ambient signal (daily step count from the phone's motion sensor, not manually entered data) and send one contextual notification per day that adds value (encouragement on low-activity days, celebration on high days). Measure whether this actually increases retention and whether users perceive it as delightful or intrusive.

* **Ambient products create data-collection ethics challenges that a cash-strapped startup might not be equipped to handle.** If the app is monitoring location, activity, biometrics, or behavioral patterns in the background, users will eventually ask "why is this app running constantly, and what are you doing with my data?" Privacy-conscious users (especially in fitness, where health data is sensitive) may opt out entirely, and regulatory scrutiny is increasing. To navigate this: be transparent and permissive. Design the ambient experience so users can see exactly what's being tracked and disable specific signals without losing the product's core value. If the core value *requires* hidden data collection, it's not sustainable.

* **"47-second sessions" might be a symptom of poor core value, not a problem to architect around.** Users might open the app for 47 seconds because they achieve what they came to achieve—a quick habit check-in—and then close it. That's healthy. Alternatively, they might open it, feel overwhelmed by the 15 features, and close it without doing anything. These feel identical in your metrics but are opposite problems. Before designing for ambient presence, validate that your core value actually delivers value in 47 seconds. If it does, brief sessions are a feature, not a bug. If it doesn't, ambient presence won't fix it—only ruthless simplification will.

---

## The Identity Users Never Had a Word For

* **You might be chasing a category that doesn't exist because there's no market for it, not because it's latent genius.** Fitness, wellness, social connection, productivity—all these categories exist and are crowded because they address real, articulated needs. If none of your 180K users settled on any of them despite the app offering all 15 combinations, the gap might not be a undiscovered identity—it might be that your product doesn't serve anyone well enough to stick around. The risk: you spend resources inventing a category around an imagined need that barely exists. To mitigate, do a reverse-category exploration: ask lapsed users "What would we have had to build for you to open this app every day?" Don't constrain them to existing category language. If the answers cluster around something new (e.g., "a place to be accountable without judgment" or "a coach who knows my history and failure patterns"), then you've found a latent identity. If answers scatter across different domains, there's no hidden category—just a product that didn't nail any existing need.

* **Creating a new category is resource-intensive and risky for a team burning out.** Your team is managing 15 features, 8% retention, and burnout. The energy to invent a new category and evangelize it is orders of magnitude higher than the energy to execute an existing category well. If you go down this path, you're betting the runway on category creation rather than product-market fit. To test viability: pick one explicit user quote from exit interviews that hints at an unmet need, write a 200-word narrative of the ideal product that serves that need, and share it with 20 lapsed users. Do they recognize themselves in that narrative, or does it feel like wishful thinking? Only if 80%+ nod in recognition should you pursue category invention.

* **A new category requires abandoning all 180K downloads and starting acquisition from zero.** You can't relaunch as a different identity to existing users without creating massive churn and confusion. The honest question: is there evidence that even 10,000 people genuinely want this latent identity? If the answer is "not yet," then you're not identifying a need—you're inventing one and hoping it resonates. Mitigate by starting with a separate product or feature flag. Test the new identity with 5,000 users via a beta or new app listing. Only if retention and engagement metrics match or exceed your target should you consider a full pivot. This also protects your team's morale by validating the idea before asking them to rebuild everything.
