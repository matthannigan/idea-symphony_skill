---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "04_the-cut-decision-framework-and-authority"
persona: "The Devil's Advocate"
---

# The Cut Decision — Framework and Authority - The Devil's Advocate

---

## The Feature-Value Scoring Model

* **Retention correlation masquerades as causation.** You might weight retention heavily because users of feature X show better 30-day retention — but what if those are just power users who'd stick anyway? To address this, run a cohort analysis separating high-intent users from casual ones and test whether feature X retention holds within each cohort.

* **"Executed well" needs an external referee.** Your team's intuition about which features are "half-built" is subject to availability bias — you notice what you've bled over, not what users actually need. Mitigate by auditing one finished feature (with clear completion definition) and one half-built one through structured user testing, then use that as a calibration baseline for all other feature assessments.

* **Passionate minorities have outsized voice if you're not careful.** A scoring model that includes "minority advocacy strength" or "emotional attachment" will always protect the squeakiest wheels. Instead, cap minority-user signals at "interesting pattern worth exploring" rather than "weighted in survival model," and reserve final decisions for majority-motion metrics plus strategic vision.

* **Technical removal cost gets underweighted until you try it.** A feature might score high on user value but have deeply entangled analytics, backend logic, and UI navigation. Propose building a "removal readiness checklist" for top 5 candidates before finalizing the model — one unexpected coupling could shift your cut decisions entirely.

* **By whose standard dominates everything.** Your framework assumes shared definition of "executed well" across engineers, designer, and PM — but engineering excellence (performant, clean code) differs from user-centric excellence (solves a real problem). Align explicitly: is "well-executed" measured by user outcomes, code quality, or business impact? Different standards will produce different cuts.

---

## Decision Authority and the Data-vs-Interview Tiebreak

* **Authority vacuum leads to design-by-committee entropy.** With a 6/1/1 structure, you'll face pressure where each engineer lobbies for their feature and the PM gets outvoted on technical grounds. Propose a single decision-maker (likely PM) with a clear escalation: if data/interviews conflict, PM has final say, but must document the reasoning so the team can learn whether that judgment was right in hindsight.

* **Data analysis can hide as "objectivity" while being selective as hell.** Your analytics team might surface metrics that naturally defend existing features — DAU for the most-opened tab, retention for the most-engaged users. Mitigation: audit your metrics before analysis; define "core value" *metrics first*, then look at data, rather than letting data suggest which features matter.

* **User interviews will tell you what people say they want, not what they actually do.** Three users you interview might passionately defend the coaching feature, but your app logs might show 87% never open it. Blend interview findings with actual behavior patterns; when they conflict, flag it as a signal that users *aspire* to use that feature but haven't integrated it into their real routine.

* **Co-design with users sounds good until you realize you're asking the wrong users.** If you interview only 10-day retention users (who use the app occasionally) vs. 5-minute-session users (who bounce), you'll get wildly different feature priorities. Create an explicit sampling plan: interview across retention tiers, usage intensity, and tenure to avoid skewing toward power users or toward churners.

* **The PM's "strategic vision" is often unstated and self-reinforcing.** If the PM believes the app should be a "community-first" product but the data says users come for solo tracking, that unstated assumption will bias every tiebreak. Force it into the light: write down the strategic vision explicitly, share it with the team, and flag where data disagrees with it so you can decide consciously whether to follow data or vision.

---

## The Smallest Proof of Concept

* **Existing data already holds the answer — if you ask the right question.** Don't run a new experiment; spend one hour with your analytics team querying: "Which single feature drives repeat opens the most?" and "Which features, if toggled off, caused users to uninstall fastest?" Those two queries might tell you your "true heartbeat" without any new work. Risk: garbage in, garbage out analytics will mislead you equally fast.

* **One structured user conversation beats a week of guessing.** Pick three users with different retention profiles (30-day, 7-day, churned within 2 days), ask each "What one moment made you realize this app was worth your time?" and listen for whether they mention the same feature or completely different things. If all three name the same feature, you have a two-week shortcut; if they name different features, you know the app doesn't have a cohesive value.

* **The deletion signal might be stronger than the retention signal.** Rather than asking "Which feature do you love?", pick five users who deleted the app and ask "What would have needed to be different for you to stay?" Their answers show what the actual blocking points are — and the intersection of those answers across users reveals what genuinely broke the deal. Mitigates assumption bias by centering on failure rather than success.

* **A 14-day feature toggle test costs less than you think.** If one feature is genuinely core, toggling it off for a random 10% of active users should cause a measurable engagement drop within a week. Test your top three candidate "core" features this way; whichever feature's absence creates the clearest impact is your heartbeat. This is cheap, runs in parallel, and produces falsifiable signals.

* **Assume your existing code has feature telemetry already.** Don't build new instrumentation; audit your current analytics and look for sessions that contain feature X vs. sessions that never touch it. If 80% of your retention cohort never opens the meal planner, that's evidence, not opinion. One engineer with SQL skills can answer this in a day; use it as your two-week proof-of-concept baseline.

---

## The Restaurant Tasting-Menu Trap

* **Constraint-as-craft works only if you're ruthless about what gets left out.** A Michelin kitchen cuts 32 dishes; your team will want to "blend" features or offer "light versions" of the cut ones. That kills the constraint effect. Have you defined what "completely gone" means — not a menu option, not a hidden toggle, not a "we'll add it back in version 2"? If the cut isn't final, you'll keep maintaining 15 features while claiming to run a 4-feature kitchen.

* **Craft obsession requires a different kind of team than maintenance mode.** A Michelin kitchen reinvents one dish six times before it ships; your 6-person engineering team is barely keeping the lights on. If you cut to 4 features and declare "obsessive excellence," you're asking them to shift from firefighter mode to artisanal mode — that's a cultural and operational change, not just a product change. Budget for retraining, mentoring, and design partnership, or the cut becomes cost-cutting dressed as strategy.

* **Execution quality scales with focus, but users might not care about that premium.** A Michelin tasting menu costs $400 because precision matters and patrons know it. Your fitness app users might be satisfied with "good enough" tracking at $5/month. If you execute four features with obsessive care but the market wants eight features at adequate quality, you've optimized for the wrong thing. Before you cut, do willingness-to-pay research: would users pay more for a focused, polished app or switch to a broader competitor?

* **The market might not have appetite for your carefully curated menu.** Michelin restaurants serve a niche; a mass-market fitness app needs broader appeal. If you cut to 4 features, you automatically exclude users for whom you removed their essential feature. Have you modeled churn for the cut scenarios? What's your acquisition cost vs. the MAU you'll lose by removing coaching (which has passionate users even at 8% retention)?

* **Perfect execution of four features is meaningless if they don't solve a coherent problem.** A tasting menu succeeds because each dish builds a narrative arc; your four surviving features need to form an integrated experience, not just be "the good ones." Risk: you cut to workout tracking, social feed, progress journal, and community forum — four decent things that don't talk to each other. Mitigation: define the "story" users live through with your 4 features and verify that they sequence logically, not just coexist.

---

## Designing for Deletion

* **The 30-day deletion prompt is brutal and reveals the real gaps.** If users must decide to keep or delete every month, only must-have features survive. But here's the risk: you might optimize for acute, novelty-driven value (social gamification, streak notifications) rather than sustainable utility (progress tracking). Users might keep the app for the dopamine hit but never achieve fitness change. Is that success? Mitigate by clarifying whether your goal is "engagement at any cost" or "sustained behavior change," because 30-day deletion mode might optimize for the wrong outcome.

* **Forced front-loading of value punishes users who need ramp time.** Someone starting a fitness program needs two weeks to even understand which features matter to them — they won't have enough context to fall in love with the app in week one. Your deletion test might kill a feature that's essential for long-term retention but invisible in the first 30 days. To address this, segment the deletion test: track separately which features correlate with 90-day retention vs. 30-day deletion, because they might be different.

* **The app's "justification" shifts your incentives away from user benefit.** If the question becomes "what justifies keeping this app installed," you'll optimize for habit formation, variable rewards, and notification compulsion — the same tactics that created the bloat in the first place. Users don't delete the app because it lacks features; they delete it because it feels overwhelming. Paradoxically, justifying the app might require *more* restraint, not more value compression.

* **A single interaction per user per day is a starvation mode constraint.** Most successful fitness apps maintain engagement through multiple touch points (check-in, social, progress push, challenge update). If you restrict to one, you're testing product elegance, not product viability. Clarify whether this is exploring a core insight or a stress test. If it's truly your target (minimize distraction), then great — but don't mistake it for your final product model.

* **Deletion behavior doesn't map to "features that matter most."** Users delete apps for friction (slow login), not just for feature gaps. Someone might delete because the onboarding is brutal, not because the core features are weak. Before you interpret the deletion signal as "here's what users need," audit the friction separately. You might discover that the top three features matter greatly, but users never reach them because the funnel collapses at signup.

---

## The One Thing That Changes Everything

* **A single daily interaction is a meaningful constraint — but for the wrong metric.** You're optimizing for interaction elegance and focus, not for actual fitness behavior change. A person might do their daily motivation check-in but still skip their workouts. The app becomes a journaling buddy, not a behavior-change tool. Before you bet the relaunch on this, validate: does the single interaction (whatever it is) correlate with users actually *doing* fitness, or just with them opening the app?

* **Transformative effect on fitness behavior is speculative until tested.** You're imagining that one interaction could be the behavior-change lever, but the research shows fitness changes emerge from systems, not moments — accountability, community, progress tracking, and planning working together. A single interaction might be elegant and feel transformative in the moment, but it might not stick. Mitigate by testing the single-interaction hypothesis against a real cohort for 8 weeks and measuring not just app opens but actual workout completion rates.

* **The "new product category" framing might narrow your market without deepening it.** If you define the product by one interaction, you're abandoning the "all-in-one fitness platform" narrative and becoming something like "daily fitness reflection tool" or "social accountability check-in." That might be better *strategically* (focused positioning, coherent narrative), but it also might shrink your addressable market. Have you modeled whether the category shift loses more users than the simplification gains?

* **One moment per day assumes users have one fitness need per day.** Someone in a training cycle might need workout logging *and* progress review *and* social accountability on the same day. Compressing those into a single interaction creates a false either/or choice. What if the "one thing" is a context-aware prompt that adapts: sometimes it's "log your workout," sometimes "celebrate your streak," sometimes "see how your friend's doing"? That's more honest about real fitness behavior.

* **Identifying the single interaction requires you to solve the diagnosis problem you've been avoiding.** You're asking me to imagine the magic moment, but your real blocker is that you don't yet have clear data on which feature is genuinely core. The single-interaction reframing is creative and might force useful thinking, but don't let it distract from the harder work: running the cohort analysis, user interviews, and deletion tests to *actually know* which feature moves the needle. Use this question as ideation, not as diagnosis shortcut.

---

**Response count**: 25 distinct critiques across 6 questions  
**Persona alignment**: The Devil's Advocate identifies specific risks and blind spots in each framework and decision-making approach, then pairs every critique with a concrete mitigation or reframing that strengthens the team's confidence in their eventual choices.
