---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
persona: "The Systems Thinker"
---

# Feature-Selection Methodology and Decision Bias - The Systems Thinker

---

## Quality vs. Demand Confound, and Usage Data as a Lagging Indicator

* **Isolate quality from demand through forced abstraction.** Ask: if each feature shipped as its own single-purpose app, which would users pay for or use daily? This reframes the question away from "how often do people click it in navigation chaos" to "would this feature have gravity on its own." You might discover that "meal planner" metrics are depressed not because users don't want meal planning, but because they're using MyFitnessPal instead — a signal to cut it. But you might also find that "workout videos," despite low engagement in-app, would be essential if it were the primary experience, suggesting architecture is the disease, not scope.

* **Run a two-week feature lighthouse test: redesign the navigation so each of the 15 features occupies the full "hero" slot one at a time, for two weeks each.** Measure engagement during its spotlight week against baseline. If meal planning jumps 3x when it's the entry point but stays flat as a buried tab, that's a quality signal — the feature has demand but architecture is suppressing it. If it stays flat even as the hero, demand is genuinely low. This trades short-term metrics for structural clarity.

* **Build a behavioral assumption matrix for each feature — not just usage count, but estimated switching cost.** For each, estimate: "If we removed this, would users switch apps (high cost), build workarounds (medium cost), or forget about it (low cost)?" Then combine with current engagement data. Messaging feature at 15% engagement + high switching cost = core. Recipe library at 8% engagement + low switching cost = cut. This separates "low adoption because we built it badly" from "low adoption because it was always marginal."

---

## Strategic Vision as Rationalization, and Sunk-Cost Inversion

* **Structure a "feature defense and challenge" process where builders present their feature, then step aside while others challenge it.** Assign someone with no attachment to argue for removal. The psychological separation — having someone else articulate your work's flaws — makes it safe to hear hard truths. The key dynamic: when ownership is public but critique is delegated, people can mentally unhook from defending what they built and focus on what's true.

* **Invert the sunk-cost framing entirely.** Instead of "should we keep this?" ask "if we had zero code written, would we build this next, given 6 engineers, 2 months, and an 8-month runway?" Force vision and data to answer the same question instead of pulling in opposite directions. You might find that strategic vision says "yes, community features are part of our identity," while the restart test says "no, we'd prioritize retention mechanics first." That conflict is real and worth naming, but it shifts the conversation from "data vs. instinct" to "what trade-offs are we making and why?"

* **Separate the decision from the team.** Bring in a mobile app strategist from outside (or a thoughtful peer from another team) to review the 15 features, current data, and team vision — blind to who built what. Their assessment carries weight precisely because they have no stake. This external check costs time but buys credibility and reveals when team consensus is genuine alignment or just social pressure.

* **Use runway as the tiebreaker explicitly.** With 8 months of funding, the team can afford to be cautious OR bold — but not both. If the choice is between "keep 5 features based on strategic vision" (safer, but team exhaustion compounds the risk) versus "keep 3 features based on data" (bolder, but faster proof), name the actual risk trade-off: which direction — overstretching on vision or playing it too safe — is more likely to burn the runway before you know whether you've chosen right?

---

## The "Would Users Build This Themselves" Test, and Stated Assumptions Per Retained Feature

* **For each surviving feature, write one sentence: "This feature assumes that [specific behavioral need] is true, and users will [specific action] if we deliver it well."** Then test that sentence against current data. "Meal planner assumes users want to track nutrition in-app and will check daily." Current data: 5% of users have ever opened it. That's not "low adoption of good execution" — that's a failed assumption. Your job is not to execute the failed assumption better; it's to cut it and redirect the team toward assumptions current data actually confirms.

* **Run a "feature absence archaeology" survey: ask departing or inactive users a single question: "Of the things you wanted to do in this app, which did you end up doing elsewhere?"** The list of "I use Spotify for music," "I use Apple Health for tracking," "I use Reddit for community" is your cut list. The absence of answers ("I wanted to meditate but used YouTube instead") suggests a feature where users already have habits and won't switch. That's a feature to cut not because it failed execution but because switching cost for users is genuinely high.

* **For the 3–4 core feature candidates, state the behavioral assumption and then map the consequence chain.** "Workout tracking assumes users want to see their progress over time, which increases motivation, which drives frequency, which drives retention." Now trace backwards: "Do current users actually track anything? Do they look at progress summaries? Do they return the next day?" If any link in that chain is missing, the assumption is broken, and no amount of execution fixes a broken assumption.

---

## Building on What Already Works

* **Find the 30–40 users who session every day or every few days, even in this broken state, and interview them ruthlessly.** Not about features you're considering — about what they actually do in-app in a typical week. You'll discover 2–3 micro-behaviors that have genuine momentum: maybe it's the weekly challenge leaderboard, or the ability to log a quick workout and see the streak counter. That's your signal. Build the core product around what already has behavioral gravity, not around what executives think "should" have momentum. Those 30 daily users are your existence proof.

* **Invert the roadmap from features-out to core-loop-in.** Start with a single interaction loop: "User opens app → [core action] → sees result → is motivated to return tomorrow." Everything that feeds that loop stays. Everything else gets questioned. For a fitness app, the loop might be: "open → log workout → see streak and position on leaderboard → close." That's it. Meal planning, meditation, community forum — all removed unless they directly feed that loop. This creates what psychologists call a "commitment and consistency" trap: users who complete the core loop once are much more likely to return, because they've invested identity in the streak or the leaderboard position.

* **Design for the survivor cohort, not the arriving cohort.** The 180K downloads / 8% retention split means ~14K users are staying. Ask: what does the app currently do for those 14K that 166K others are ignoring? Is it ease of logging? Clear progress signals? Social accountability? Community? Build the simplification to amplify exactly that, even if it means the arriving user experience gets worse temporarily. A 15% retention product with coherent experience for the 15% will find more users than an 8% retention product with incoherent experience for the arriving 8%.

---

## The Team Is The Product

* **Ask the 6 engineers and designer: "If you could own exactly three features completely — design, ship, iterate, support — which would excite you to work on every day for the next 6 months?"** Their answer is not your product decision, but it's data about which features could sustain high-quality execution. A burned-out team will produce half-baked features regardless of their potential. A motivated team will produce good features even if the market isn't waiting for them. You have 8 months of runway: spend 2 of them making the team excited again, and the last 6 will compound.

* **Map the specific fatigue pathways.** Is the team burned out because (A) they're maintaining 15 half-finished features (task overload), (B) they have no clear ownership — each person's code touches four features they don't fully understand (cognitive load), (C) they see no results despite shipping every week (reward deficit), or (D) they disagree deeply about which features matter (decision conflict)? The diagnostic reveals the intervention: (A) calls for scope reduction; (B) calls for clear ownership of 3–4 features; (C) calls for redefining success metrics; (D) calls for decision-making clarity. The same simplification serves all four, but understanding which fatigue is actually driving burnout tells you how to communicate the relaunch to the team and what kind of ownership structure will make them stay.

* **Structure the relaunch as a team-recovery project, not a product-reset project.** Tell the story this way: "We have 8 months, a skilled team, and a chance to do something right instead of many things half-right. We're choosing to make ourselves the constraint, not the calendar. We're keeping only the features we can execute beautifully — which means the features we're excited about. What would that list look like to you?" The team becomes co-authors of the direction rather than victims of top-down cuts. That psychological shift — from "what are we removing?" to "what are we excited to build?" — changes whether survivors stay or leave.

---

## What if 8% Retention Is Actually the Ceiling

* **Work backward from "8% is the floor we're stuck at, not the ceiling we're aiming for."** Ask: what structural property of social fitness apps creates an 8% retention ceiling? Is it novelty-driven behavior (users try it, boredom sets in after 4 weeks)? Is it the math of fitness itself (most people quit exercise generally, so apps are fighting category-level churn)? Is it that fitness is a "someday" behavior (people feel motivated at midnight, resolution fades by Tuesday)? Or is it that social comparison in fitness is demotivating rather than motivating — and every social feature reduces retention further?

* **Test the hypothesis directly: remove all social features (leaderboards, friend streams, challenges) and run a 2-week retention experiment with a subset of users.** If retention stays at 8%, social isn't the ceiling-setter; the problem is deeper. If retention jumps to 15%, congratulations — you've found a specific mechanism you can address. But if retention is ceiling-set by the category, no simplification fixes it. That's the moment to ask: "Is this the right product to build, or are we trying to solve a problem that doesn't have a solution?" An honest answer to that question is worth far more than another 6 months chasing retention that the market won't give.

* **Map the cohort-retention curve by cohort entry-date.** Do users from January 2024 stay longer than users from January 2025? That reveals whether the problem is the product (consistent churn shape) or the marketing (each cohort is weaker). If early cohorts retained better, the product degraded over time — a signal that feature bloat is actively harming. If every cohort shows the same 8% retention regardless of when they arrived, the product has a fundamental appeal ceiling. The fix is completely different: product quality vs. category positioning.

---

## What if the User Defined the Core

* **Run a "user co-creation" sprint where you invite your most engaged 30–40 users into a confidential Slack and pose a genuine question: "We're rebuilding from scratch. What is the one thing you want this app to be, and what else could it do to support that?"** Not a poll. Not a survey with options. A real conversation. Users will tell you stories about how they actually use fitness apps, what other apps they've integrated, what frustrated them about the current experience. The story emerges from their words, not from your predetermined categories.

* **Prototype a "user-designed core loop" by having those 30 users define a simple workflow: "If I opened the app, the first thing I'd want to do is ___. The next thing would be ___. And I'd open the app again tomorrow if ___."** Turn that into a product. Test it with a cohort of 500 users for 4 weeks. The "user-defined" version might look nothing like what the team expected — maybe it's less "social" and more "coach," or less "tracking" and more "discovery." But if it ships with the credibility of "this is what users told us they wanted," it carries different weight internally and externally.

* **Surface the second-order consequence: if users genuinely define the core, the team must cede control.** That's psychologically difficult. Founders often have a vision that contradicts what users ask for — and founders are usually partially right. The trade-off is explicit: do you want a product that users want (user-defined) or a product that reflects the founder's vision of what fitness culture should be (vision-defined)? Most products fail because founders were visionary but users disagreed. Some succeed because founders were visionary and users agreed eventually. There's no safe choice here, only different risks.

---

## Triage Logic: Vital Signs vs. Vanity Metrics

* **Replace "which features are most used?" with "which features, if they broke permanently today, would users immediately complain?"** The ones that would create support tickets within 24 hours are your vital signs. Everything else is vanity. For a fitness app, that's probably workout logging. It might include social leaderboards if your cohort is competitive-minded. But "recipe library" would generate zero complaints on day 1, which is a vital-sign signal that it's not actually vital.

* **Map engagement metrics against this vital-sign assessment.** Some features will be high-usage but low-vital (users access them out of habit or default navigation, but don't actually need them). Some will be low-usage but high-vital (power users rely on them disproportionately). Some will be low on both (cut immediately). The interesting category is high-vital, low-usage — those features probably have poor UX or discoverability, and removing them is a mistake. Fix them or fix their visibility.

* **Structure the triage conversation around this single question: "If this feature broke at midnight tonight, how many support tickets would we get by breakfast, and from whom?"** If the answer is "maybe two, from power users," it's not vital. If it's "hundreds, from daily users," it's vital. That removes the abstraction and centers the question on what users actually depend on. Then the decision becomes clear: if it's vital, invest in fixing it; if it's not, cut it and redeploy the team.

---

## Treating Symptom vs. Underlying Condition

* **Before touching a single feature, get the team aligned on a single sentence that answers: "What is the one job this app is supposed to do?"** If the sentence has more than 15 words, you don't have a clear value proposition yet. "Help people log their workouts and see their progress" is clear. "Help people achieve their fitness goals through workout tracking, meal planning, social accountability, meditation, and community support" is a product strategy, not a value proposition — and it's a signal that the team is confused about what they're actually building. That confusion is the disease; features are the symptom.

* **Ask the team: "What would a customer actually say this app is for?" Not what you built it to do, but what users think it's for when they arrive. If the answer is fragmented — "some people think it's a fitness tracker, some think it's a social app, some think it's a meditation app" — that's incoherent positioning, and it predicts poor retention. Users arrive expecting one thing, find something else, and leave.

* **Run a "jobs to be done" interview with departing users: "What were you trying to accomplish when you downloaded this app?"** Then ask: "Did this app help you do that?" The gap between what you thought you built and what users thought they were hiring you for is the underlying condition. You'll find that users arrived wanting to "stay accountable," but the app was structured for "log metrics." You thought you were solving "get data," but users wanted "stay motivated." That's the structural question worth answering before any feature simplification.

* **The relaunch success depends on fixing the positioning-to-promise gap, not on choosing the right three features.** Choose poorly among features, and you'll see 10% retention with a coherent product. Choose well among features while leaving the positioning-to-promise gap unfixed, and you'll still see churn. The vital intervention is clarity: "We are a [single, clear category], and we do [one thing] better than anyone." Everything else cascades from that.

---

## Perverse Excellence as Feature Signal

* **Run a "sabotage test": deliberately break or degrade 12 of the 15 features, leaving three polished and fast.** Make the degraded features ugly, slow, or slightly broken — but not gone. Track which features users interact with over two weeks. If users keep returning and using the three polished features despite the surrounding wreckage, you've found demand signal that's independent of opportunity cost. They're not using feature X because they don't notice feature Y; they're using it because they actually want it.

* **The inverse is equally revealing.** Make one feature terrible — slow navigation, confusing UI, frequent crashes — and keep everything else pristine. If that feature's usage drops 80%, you've learned that its apparent demand was actually just "easiest to find" or "closest to the entry point." If it drops 20%, demand is somewhat real despite terrible execution; that's a feature to keep and fix. This separates "liked because visible" from "liked because valuable."

* **The dynamic at play is preference revelation through constraint.** When users have to choose under scarcity (because most features are broken), their choices are less influenced by switching costs or navigation inertia and more driven by genuine preference. You're removing the decision noise and seeing the signal underneath. It costs two weeks of metrics and user experience, but you learn more than months of A/B testing.

---

## Destruction as User Research

* **Remove all 15 features except one — say, workout logging — and ship that as "Version 2.0: Focused." Set explicit expectations: "We're rebuilding from your feedback. For the next month, we're shipping the essentials only. Tell us what you actually need back."** This is archaeology, not abandonment. Users' reactions will be ranked by urgency: they'll complain loudest about what they actually miss, quietly about what they're indifferent to, and not at all about what they never used.

* **Create a public "feature restoration roadmap" where users vote or request to restore features, and you restore them in the exact order of request volume.** Users who care about meal planning will make noise immediately. Users who care about community will make noise. Users who don't care about meditation won't ask, and silence is your answer. This process creates social proof: if a feature gets restored because 100 users requested it, the team sees that demand is real, not speculative. Conversely, if a feature that was "strategic vision" gets zero requests in four weeks, that vision is revealed to be the team's alone.

* **Map the temporal pattern of feature requests.** Do they all come in the first week (users adapting to a new experience), or do they trickle steadily (genuine ongoing needs)? Do they cluster around specific user cohorts (competitive users demanding leaderboards, beginners demanding guidance)? That pattern tells you not just what features to keep, but what customer segments to serve. You might discover that "community features" are requested only by 20% of users but with high intensity, while "meal planning" is requested by 5% with low intensity. That's a signal about focus, not just cut vs. keep.

* **The meta-dynamic is powerful: destruction + user-driven restoration reverses who controls the narrative.** Instead of "we're killing your favorite features," it becomes "we're asking you what you actually need." The team moves from executors of strategic vision to stewards of user demand. That shift in agency and identity makes the resulting simplification stick — users feel heard, even though the outcome is the same (15 features → 4 features).
