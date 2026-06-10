---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "13_first-steps-and-experiments-worth-running"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: First Steps and Experiments Worth Running - With Attribution

---

## Synthesized Insights by Question

### Question 1: The experiment worth running this month

**Full question**: Given the team's existing skills, the codebase that's already built, and the users who are already engaged, what is the smallest, fastest experiment the team could run in the next 30 days to test whether the simplified core vision resonates — and what would a successful result look like?

* **Run the test in isolation, not inside the cluttered current app.** The strongest convergent recommendation: build a walled-off, one-feature version (separate app, web-only build, feature-gated parallel onboarding, or forked beta) and ship it to a small cohort. The shared logic is that any test living inside the 15-feature shell cannot distinguish "the core failed" from "the surrounding noise killed it." Concrete forms range from a single locked feature for 100-500 users to a parallel v2 onboarding that routes straight to one feature with everything else gated.
  * **Feature "freeze and measure" surfacing only two core workflows.** Lock the feature set and surface only two core workflows per session, randomized A/B across users; the codebase already does these well, so test what exists rather than building new. *—The Constraint Flipper*
  * **A true test requires isolation — separate app, web-only, or walled-off fork.** Inside the cluttered app (a new tab or feature flag), users stay distracted by the 14 other things, so you cannot tell whether the core vision or the noise failed. *—The Devil's Advocate*
  * **Seven-Day Core Ritual Test on the most engaged cohort.** Create a locked-down one-feature version, give it to the core 5% with 30+ DAU sessions, and measure whether usage velocity increases (47-second sessions jumping to 3+ minutes signals the seed). *—The Momentum Builder*
  * **One-core beta cohort behind a feature gate.** Pick the single strongest feature hypothesis (e.g., workout tracking), build parallel v2 onboarding that leads straight there hiding all others, push to 500 power users; success is 2-3x retention lift over control. *—The Pragmatist*
  * **Single-Feature Test with all other navigation removed.** Pick the one workout type best users actually do, build a screen that does only that, remove every other feature from navigation, give it to 100 power users; if 60% open it 3+ times in two weeks you've found something. *—The Simplifier*

* **Use feature removal itself as the research instrument.** Several personas converge on subtraction-as-experiment: cut or hide features live and watch which ones users actively hunt for. The signal is faster and more honest than analytics or strategy-meeting intuition, because what users fight to get back reveals genuine emotional stakes, and the team's inability to maintain 15 features makes this an acceleration rather than a sacrifice.
  * **Cut 12 of 15 features live and watch what breaks in real usage.** Run with early users; measure which 3 features users desperately hunt for post-removal and which 12 they never mention. Team capacity becomes research acceleration: the true core surfaces in 2 weeks instead of 2 months of deliberation. *—The Constraint Flipper*
  * **Competitive Substitution Test: disable everything but the top 3 features.** For 20% of the install base, disable access to everything else for two weeks and ask weekly, "If this app only had X, would you still open it?" Proving a feature essential, not merely useful, is the momentum. *—The Momentum Builder*
  * **Feature Hierarchy Reveal via temporary unavailability.** Temporarily hide 4-5 features and watch which users hunt for (via "temporarily unavailable" messages); searching for the social feed tells you something different than searching for workout video. This is narrative data disguised as engagement metrics. *—The Storyteller*
  * **One Tab relaunch with navigation removed.** Build a version with a single bottom tab ("Your Stats") and everything branching from there; count complaints about missing features versus reports of clarity-for-the-first-time across 200 users over two weeks. *—The Simplifier*

* **Treat the notification load as a standalone variable to test by subtraction.** Multiple personas reframe "too many notifications" not as a tuning problem but as a removable cause of churn worth isolating: cut notifications for a subset and measure whether retention improves on its own.
  * **Notification-As-Signal: send only one daily message, contextual and earned.** Track whether this alone improves DAU/MAU; if users return for one perfect notification rather than eleven mediocre ones, focus-beats-breadth is proven as a principle to rebuild around. *—The Momentum Builder*
  * **Notification Silence Test with no new build.** Disable all notifications for a subset and measure churn; if retention improves, feature bloat is actively making the product worse and the right first step is removal, not iteration. *—The Simplifier*

* **Fix the onboarding-to-first-success path as the cheapest retention lever.** Personas note that 180K downloads against 8% retention points at a broken welcome flow, and propose stripping onboarding scaffolding so users reach a first success fast.
  * **Welcome Funnel Reset: first success in under 90 seconds.** Build a one-feature-only welcome flow (one workout logged, one streak started); success is onboarding-to-DAU jumping from 8% to 25%+. *—The Momentum Builder*
  * **Onboarding Deletion Experiment.** Cut the entire onboarding flow (goal-setting wizard, preference questions, tutorial) and ship a version that just asks "How many miles did you run today?" on the first screen; half the onboarding likely exists to fix problems feature overload created, not real user needs. *—The Simplifier*
  * **Retention repair on the core loop.** Audit the top feature's onboarding for friction, remove three confusing UI patterns, relaunch to existing users with "We've simplified. Try it now"; success is longer sessions and less reported overwhelm. *—The Pragmatist*

* **Begin with near-free analysis and qualitative listening before building any coded experiment.** A complementary cluster argues the first move costs nothing: pull the data you already have, or call the users you already retain.
  * **Data-driven triage this week.** Pull 30-day retention and session-flow data per feature to identify real retention drivers vs. novelty-seeking; it costs nothing and produces consensus on which "darlings" earn loyalty. *—The Pragmatist*
  * **Lightweight Interview Sprint with 15 retained users.** Ask "What's the one thing you actually use the app for?" and "What feature confuses you that you've never touched?"; patterns will be clearer than any dashboard, then build the 30-day test on what you actually heard. *—The Simplifier*
  * **Ritual Documentation Sprint via micro-survey.** Ask 100 power users to walk through their last 5 workouts (what they were doing, not features used) to surface the hidden ritual underneath the clutter and design the experiment to nail one of those moments. *—The Storyteller*
  * **Three-day design sprint on one ruthlessly scoped view.** One engineer, the designer, and the PM build a "coach view" for one workout feature in 72 hours and deploy as a prototype; success is the team agreeing it is compelling and ship-ready. *—The Pragmatist*

* **Guard against false validation: the early-adopter cohort is biased and 30 days is short.** A load-bearing dissent: the 2% who tolerated the chaos may want the opposite of the 98% who left, so optimizing on them can validate the wrong core. Short tests reward novelty over habit, and the team may lack the metric-rigor skills to interpret results. Define "success" concretely and build in a longer follow-up before acting.
  * **Beware the retention trap of early adopters and the 30-day mirage.** Test on lapsed or fresh users to avoid a biased segment; short experiments reward novelty excitement, not genuine habit, so add a longer-term checkpoint and define what a successful result actually means (engagement, retention curve, behavior-change quotes). Also budget time to interpret results, since the team's parallel-build skills may not include UX research or metric rigor. *—The Devil's Advocate*

* **Consider radical inversion experiments that test a different theory of engagement entirely.** Distinctive single-persona reframes worth surfacing: rather than testing "fewer features," test whether scarcity, intentionality, or presence drives deeper engagement.
  * **Data auto-expires by default.** Launch a "temporary app" beta where every workout and metric expires in 30 days unless re-affirmed; measure whether the scarcity of permanent records creates intentionality and more time in the app, not less. *—The Visionary*
  * **Presence-based ritual instead of a tracking app.** A 30-day pilot where the primary interaction is a 10-minute co-exercise moment with others (no logging, no metrics); measure whether belonging creates stronger habit loops than gamified tracking. *—The Visionary*
  * **Coaching-oracle access only on a question.** Make the app accessible only when a user asks a specific health question (no feed, no home, no browse); measure whether open-to-action conversion rises when every interaction is intentional. *—The Visionary*
  * **Constraint sprint shrinking the feature set 50% weekly.** Treat the month as a five-week countdown (kill 8 features in week one, 4 more in week two) and watch how the app feels and performs as surface area shrinks; velocity of simplification may itself be the advantage. *—The Visionary*

---

### Question 2: The product worth celebrating in 18 months — and the daily ritual it earns

**Full question**: If the team, 18 months from now, is celebrating a product that truly resonates — strong retention, users who evangelize it, a team energized by the work — what would the product look like, and what would the team say they got right this time? If this app became something users genuinely opened as a meaningful part of their fitness routine — not out of obligation but out of real desire — what would that ritual look like, and what would users tell a friend when recommending it? Imagine a user who downloaded the app today and is still actively engaged 12 months from now: what is she doing in the app every week, and how did the app earn that sustained loyalty?

* **The ritual is short, low-friction, and repeated daily-to-weekly around a single core loop.** The dominant convergent image: a focused check-in measured in minutes, not a "log your whole day" obligation. Specifics cluster on log-a-workout, see-your-streak/progress, and optionally one social or insight beat, completed in 7-15 seconds to 15 minutes. The value is invisibility: the app gets out of the way.
  * **The 5-Minute Daily Win.** Open daily for a single achievable ritual ("add one workout, see your streak, celebrate"), not "log your whole day"; users evangelize because it respects their time and "just works and gets out of my way." *—The Constraint Flipper*
  * **The ritual that became inevitable.** Users open it like checking the weather; a streak-based check-in becomes their accountability anchor and they say "I don't think about it anymore — I just do it." *—The Momentum Builder*
  * **A seven-minute redefined ritual.** Log workout, see progress vs. last week, post one win to an accountability group, get one personalized insight; users know exactly why they open the app. *—The Pragmatist*
  * **15-second logging with a year of visible streaks.** Best-in-store running tracker: open every morning, log mileage and pace in 15 seconds, scroll back a year of consistency; "am I running longer or faster?" Also a weekly variant: a Sunday 10 AM moment showing "You completed 4 of 7 days." *—The Simplifier*
  * **A 15-minute strength session with one encouraging sentence.** Open every morning "because it's the only thing that doesn't make me feel guilty," do the session, read one community line, close it. *—The Storyteller*
  * **A 3-minute morning reflection as dialogue.** The app asks how they slept, what they hope to feel, what's in their way — no prescriptions, no gamification; users say "it knows me," not "it tracks me." *—The Visionary*

* **The real category is a commitment device, not a feature set.** A strong complementary theme: what the kept loop actually delivers is accountability and the feeling of keeping a promise to oneself. The product positioning that was wrong (a workout app) gives way to the focus that was right (a trusted place to follow through).
  * **It holds them accountable to themselves.** The team stumbled into a "commitment device" category with millions hungry for it; the shift was from "make fitness features" to "be the most trusted place for people to keep promises to themselves." *—The Momentum Builder*
  * **A core loop with a social accountability layer.** Depth and mastery beat feature count; users open 4+ times weekly because every pixel serves the workout loop, and friends using it for accountability is part of why the skeptic returns. *—The Pragmatist*
  * **Accountability without manipulation.** Users open it to record what they chose to do, not to be persuaded or tracked into compliance; "we count your workouts, we show your streaks, we let you see patterns. That's all." *—The Simplifier*
  * **Authentic social as the surviving feature.** Log a workout, it appears on a friends' feed, you cheer — no leaderboards or challenges; the ritual is "Did Sarah get her run in today?" *—The Storyteller*

* **Evangelism comes from emotional permission, not marketing spend.** Multiple personas locate growth in word-of-mouth driven by how the app makes users feel: capable, un-guilty, connected. The recommendation line is about relief and identity, not a feature comparison.
  * **Users belong to it.** Word-of-mouth signup crosses 30%+ because users open the app for how it makes them feel (capable, connected, progressing); they don't use it, they belong to it. *—The Momentum Builder*
  * **"The only fitness app I actually need. Everything else is noise."** The skeptic returns because notifications are rare and earned, the loop is genuinely useful, and friends are there too. *—The Pragmatist*
  * **The only app that doesn't feel like a to-do list.** Users send it to friends not from obligation but because it genuinely connects people. *—The Simplifier*
  * **"It's the only thing that doesn't make me feel guilty."** 2,000 new users a month arrive because 5,000 active users each casually mention it; the difference is obligation versus evangelism. *—The Storyteller*
  * **Trustworthy in an industry of attention extraction.** Users recommend it because it's an anomaly that never nags, spams, or exploits attention; the daily ritual is guilt-free opening. *—The Visionary*

* **The team's recovery from burnout is itself a celebrated outcome and a product insight.** A convergent secondary theme: morale flips once the team ships and supports a small surface deeply, with a dip-then-recovery arc around months 6-10. Simplicity reframed as a decision, not a failure state.
  * **Maintenance becomes stable at 1/5 the codebase.** The team celebrates owning one thing deeply; retention reaches 35%+ with a far smaller surface. *—The Constraint Flipper*
  * **Morale cratered then flipped around month 9-10.** Burning features is hard, but shipping faster on something users loved brought the energy back; "simplicity is a decision, not a failure state." *—The Momentum Builder*
  * **Shipping, not maintaining.** Six months in: 60% fewer feature branches, no zombie code, clear strategy; "for the first time, our work feels focused." *—The Pragmatist*
  * **Reacquired agency.** Engineers maintain 4 features really well without grimacing; new ideas feel like choices, not obligations, and the burnout lifts. *—The Storyteller*

* **Name the target scale before celebrating the ritual.** A load-bearing dissent that reframes what "success" means: a beloved ritual for 5,000 users is admiration from a niche, not product-market fit, and team energy is not business viability. Define the scale (lifestyle app for 500K+ vs. devoted micro-community) and separate morale from revenue and growth.
  * **Beware the product-market-fit fantasy and the team-energy proxy.** 40% retention at 5,000 MAU is niche admiration, not PMF; define target scale alongside the ritual, plan for the first-time habit-formation barrier (people want to but don't), and separate team satisfaction from actual business viability. *—The Devil's Advocate*

* **Consider that the product is a thinking partner, not a tracker.** A distinctive single-persona reframe: the loop that earns loyalty might not be logging at all but dialogue that helps users understand their own bodies in their own language.
  * **A thinking partner that knows them.** Users describe it as "the app that helped me understand my body better" because it asks the right questions and reveals patterns, not because it logged workouts. *—The Visionary*

---

### Question 3: Subtraction as a new category

**Full question**: What if the relaunch wasn't framed as a stripped-down fitness app but as the invention of an entirely new category — one defined not by what it does but by what it refuses to do — and how would that refusal become the product's most compelling value proposition?

* **Make refusal the explicit, named value proposition — position around what you will not do.** All seven personas converge here: the relaunch is framed as deliberate refusal rather than reduction. Candidate names and refusals vary, but the move is identical: turn "we don't do X" into the headline promise that a bloated competitor structurally cannot copy.
  * **The "refused features" brand and anti-platform promise.** Market what it doesn't have (no meal logging, meditation, shopping, or algorithms) and promise it will never add them; products defined by permanent refusal, not feature accumulation. *—The Constraint Flipper*
  * **"We do less so you do more" is a positioning to test, not assume.** The refusal framing resonates with early adopters and investors but may alienate mainstream users who care only that the app works. *—The Devil's Advocate*
  * **"Clarity fitness" — refuses to be a social network, sell supplements, or be addictive.** A category defined by discipline, not distraction; users come because you're constrained, not despite it. *—The Momentum Builder*
  * **"The No-Nonsense Workout Journal" / "fitness tracking for people who hate fitness apps."** Emphasize what it refuses: no social pressure, no infinite scroll, no upsell notifications, no attention-gaming algorithm. *—The Pragmatist*
  * **"No gamification" as the brand.** No streaks, badges, or leaderboards; "the fitness app that doesn't try to trick you" is impossible for a bloated competitor to copy because their model requires the manipulation you reject. *—The Simplifier*
  * **"The simplicity app that happens to do fitness."** Built by people who ask "what if we delete…?"; the category isn't minimalist fitness, it's "app design as refusal." *—The Storyteller*
  * **"Honest Fitness" — prioritizes wellbeing over engagement metrics.** Relaunch as the inverse of every industry norm (no notifications, no social comparison, no data harvesting, no dark patterns) and own the category by being first. *—The Visionary*

* **Codify the refusal as a public, ongoing commitment so it stays credible.** A complementary theme: the philosophy needs visible artifacts — a "won't build" roadmap, a quarterly covenant, a removal log — so users trust the discipline and the brand resists drift.
  * **A "roadmap of what we won't build" and published reject list.** Reinforce commitment and publish which features you considered and rejected and why; candor builds trust and word-of-mouth from users who feel heard. *—The Pragmatist*
  * **Public refusals expand over time.** Commit publicly to caps ("never more than 5 sections, never more than 3 notifications/week, never ads") and grow by adding new refusals ("we don't collect behavioral data for resale"). *—The Momentum Builder*
  * **A quarterly covenant naming what you will not build.** Publicly commit each quarter to the four features you reject (marketplace, AI coach, supplement recs); a subtraction-sprint craft narrative casts the team as artists refining marble. *—The Storyteller*

* **The refusal can target attention, notifications, and data — privacy and respect as the differentiator.** A complementary cluster narrows the refusal to the most felt abuses: interruption and surveillance.
  * **"No notifications, ever" and offline-only, data-stays-on-device.** Refusing to interrupt and refusing to harvest data invents "privacy-first fitness," a defensible moat in an era of data concern. *—The Simplifier*
  * **One login, one purpose, one notification per day only if relevant.** Position as "apps that respect your attention," giving users permission to ignore the app on non-workout days. *—The Pragmatist*
  * **"Signal-based fitness" with no algorithm or FOMO mechanics.** No recommendation engine, just what the user decided matters; transparency about constraints becomes the feature. *—The Visionary*

* **The refusal addresses a psychological segment that spans far beyond fitness.** A complementary insight: the real audience is people exhausted by feature creep across all their apps, which both widens the opportunity and sharpens the positioning.
  * **For humans who value simplicity across categories.** App-fatigue exists across fitness, productivity, note-taking, and finance; "we will never ask you to use a feature you didn't install" speaks to that whole segment. *—The Constraint Flipper*
  * **"The app for real life, not app life" / a gateway app.** "Pragmatic Fitness" tools fit human reality (10 minutes a week, not 10 hours), and "gateway apps" succeed when you leave and go do the thing — anti-sticky as the brand. *—The Visionary*

* **Earned and niche refusals can sharpen the category further.** Distinctive single-persona reframes that extend the refusal logic in productive directions.
  * **"No connectivity until you earn it."** New users get local-only logging; social sharing unlocks after 30 straight days — "the fitness app that stays personal until you're ready," uncopyable without breaking a competitor's model. *—The Simplifier*
  * **"Fewer users, better experience."** Serve dedicated runners, not people trying to become runners; refusing to serve everyone yields 50K engaged users over 180K abandoned ones, and specialization is defensible. *—The Simplifier*

* **Stress-test the refusal before betting the brand on it.** A load-bearing dissent that the convergent enthusiasm should not bury: refusal as a category has specific, concrete failure modes the team must plan around.
  * **Four ways refusal-as-category breaks.** People rarely choose products for what they refuse, but for what they enable, so test whether users care about the philosophy or just that it works; the subtraction must be visible and felt without users constantly hitting the missing edge; the identity is vulnerable to feature-creep pressure once traction arrives; and sustaining the philosophy demands marketing and brand narrative a small team may not be able to afford. *—The Devil's Advocate*

---

**Questions addressed**: 3
**Personas contributing**: The Constraint Flipper, The Devil's Advocate, The Momentum Builder, The Pragmatist, The Simplifier, The Storyteller, The Visionary
**Total synthesized insights**: 19
