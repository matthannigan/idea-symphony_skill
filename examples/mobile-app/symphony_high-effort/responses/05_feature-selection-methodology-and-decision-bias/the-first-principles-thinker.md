---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
persona: "The First Principles Thinker"
---

# Feature-Selection Methodology and Decision Bias - The First Principles Thinker

---

## Quality vs. Demand Confound, and Usage Data as a Lagging Indicator

* **Separate the variable by removing layers, not guessing.** The fundamental issue is that you're trying to isolate "value" from "discoverability" while both live in the same 47-second session. Stop analyzing the data you have; instead, instrument a direct test. Create a version of the app where one feature (say, meal planning) occupies 80% of the navigation surface and interface clarity — push it front and center, deliberately make it the obvious entry point. Measure whether engagement rises. If it does, you've learned that discovery architecture is the confound. If it doesn't, you've learned that demand is real. Do this for the top 3 candidate core features in parallel over 2 weeks. Cost: minimal. Signal: dispositive.

* **The diagnosis is likely architecture, not scope.** At its core, apps with 15 features distributed across 6 tabs + hamburger menu suffer from a navigation/cognitive tax that increases with feature count—this is not about feature demand but about information hierarchy. Test the hypothesis directly: take the three features you suspect matter most and rebuild the app with those three as the entire surface (no tabs, no menu, just those three in a clean three-tap flow). Ship this to 10% of your user base. If retention climbs to 15%, you've learned the problem was architecture. If it stays at 8%, you've learned the problem is something deeper about the category itself.

* **Progressive disclosure may be the wrong medicine for the wrong diagnosis.** Progressive disclosure (hiding features in submenus) assumes users want the features but find them overwhelming—a noble hypothesis but unproven. Before layering complexity with disclosure UX, measure whether users who explicitly sought out hidden features actually return. Pull analytics on the cohort of users who navigated to, say, the meditation guide or supplement store more than once. Did they show higher 30-day retention? If not, progressive disclosure is just a slower path to removing the feature anyway.

---

## Strategic Vision as Rationalization, and Sunk-Cost Inversion

* **Build a voting system that invisibly decouples voting from ownership.** The fundamental issue is that team members defending their own work are providing data about ego, not about product quality. Create a blind vote: each team member writes a one-paragraph recommendation for removing or keeping each feature, but the names of the feature authors are stripped before the vote. Tell everyone: "You won't know which features you built when you vote." This forces a genuine quality assessment rather than a defense reflex. Then compare blind-vote outcomes to feature usage and revenue data. Patterns where "features people built" score higher on blind votes than on metrics reveal the bias directly.

* **Invert the sunk-cost framing by measuring future cost, not past.** Stop asking "which features have we already invested in?" Start asking "which features would cost us the most per-engineer-month to keep operational?" A feature with low usage but complex integrations or high support burden is a liability, not an asset. Run a technical audit: for each of the 15 features, estimate the ongoing cost to maintain, fix bugs, and support. Features with high maintenance-to-usage ratios are net drains. That's a fact about the future, not a judgment about the team's work.

* **Separate "strategic instinct" from "founder bias" by running a pre-mortem.** Ask the team: "We're going to ship a simplified version with features X, Y, and Z. We'll have 8 months to prove it works. When we fail—and we might—what will the post-mortem show?" This forces the team to articulate the assumptions underlying each feature choice. Then ask: "If this assumption proves wrong, can we recover in 8 months?" Features whose failure cases are unrecoverable are riskier choices than data should justify.

---

## The "Would Users Build This Themselves" Test

* **Ask each user cohort: "Would you find another app?"** For every feature, run a simple survey with users who actually used that feature: "If we removed [feature], would you (a) find another app, (b) build a workaround, (c) stop caring?" Users who answer (a) are indicating core value. Users who answer (c) are revealing that engagement was accidental or habitual, not essential. This one question reveals whether low usage reflects low importance or low implementation quality. Core features will show heavy skew toward (a).

* **State the behavioral assumption per retained feature, then falsify it.** For each of your 3–4 candidate core features, write down the sentence: "We are keeping this feature because we assume users want to [specific behavior]." Workout tracking: "Users want to visualize their exercise progress over time." Meal planning: "Users want a structured weekly meal plan generated from their dietary preferences." Now look at your actual data: 2% DAU/MAU and 47-second sessions. Do those data falsify the assumption? If users truly wanted to visualize progress, wouldn't we see longer sessions or higher DAU/MAU among power users? The gap between assumption and data is your falsification test.

* **The 180K downloads created a revealed preference you can't ignore.** Those 180K downloads mean something—people tried your app for a reason. But 8% retention means 92% left, so the initial promise didn't stick. The fundamental question is: for the 8% who stayed, which single feature or experience do they return for? Not the most-used feature—the feature they return to even when the app is worse. This is different from measured engagement. Ask the retained cohort directly: "Why do you still open this app?" Their answer is your core feature, not your data.

---

## Building on What Already Works

* **Find the moments of genuine delight in the product, then rebuild everything else to support that moment.** At its core, product design is about orchestrating a user journey toward a moment of satisfaction or insight. With 180K downloads, your app created that moment for some users—even if it failed to repeat it. Pull session logs and replay a dozen high-retention user journeys. What were they doing? What sequence of taps led them to return the next day? That sequence is your core loop. Rebuild the app with that core loop as the primary path, and every other feature as a variant or extension of that pattern.

* **Design the navigation and feature set to serve the users who stayed, not to please the users who left.** Your current app tried to be all things, which means it optimized for no one. Instead: define your retained 8% by their behavior (not demographics). What type of user opens this app every other week and stays for 3+ minutes? What problem are they solving? Then redesign the entire experience—navigation, notifications, core loop, feature hierarchy—as if that user is your only user. You may lose some of the 92%, but the 8% will become 20%, and they'll have brought friends who fit that profile.

* **A "more of this" roadmap means fewer features, not more.** Identify the single moment in your app where users experience genuine relief or insight—a solved problem, a completed action, a learned fact. Let's say it's the moment someone logs a workout and sees it added to a weekly summary. Now: what would it take to make that moment faster, clearer, more rewarding? Faster checkout, better visualizations, social proof (friends also logged workouts today), streak gamification. These are all variations on the same core loop. Any feature outside that loop is distraction. Ruthlessly cut.

---

## The Team Is the Product

* **Burned-out teams build burned-out products, and burned-out products burn out teams—break the cycle by optimizing for team coherence.** The fundamental issue you're trying to solve isn't "which features do users want," it's "how do we rebuild team morale and creative ownership?" A team of 8 people (6 engineers, 1 designer, 1 PM) split across 15 half-built features has zero ownership—everyone is partially responsible for everything, so no one is fully accountable for anything. The simplification is not a product strategy; it's a team strategy. Choose the 3–4 features that the team *wants* to own completely, not the features the data suggests. A team building something it cares about will execute better, ship faster, and iterate more thoughtfully than a team grudgingly maintaining a feature roadmap.

* **Reverse-engineer the team's actual strengths and build the product around those.** Ask the team: not "What do users need?" but "What have we built that we're actually proud of?" The designer may have found their groove in a particular interaction pattern. An engineer may have solved a hard technical problem that feels solvable. The PM may have found a market segment that makes intuitive sense. The product's core features should emerge from those pockets of genuine expertise and enthusiasm, not from a data-driven feature audit. A team building on its own strengths iterates faster and with higher quality.

* **Set a one-month "team morale sprint" before deciding on features.** Give the team a month to spike on only the features that excite them most, without shipping pressure or user metrics. Tell them: "Build whatever you want, as long as all 8 of you are excited about it." What emerges from that month reveals where the team's creative coherence actually lies. A motivated team will naturally converge on 3–4 features. If they scatter across all 15, you have a deeper problem than feature selection—you have alignment failure.

---

## What If 8% Retention Is Actually the Ceiling

* **Work backward from the retention ceiling to discover the category constraint.** If 8% is the structural limit for social fitness apps—not because of your implementation but because of the category—then no amount of feature simplification will change it. Test this hypothesis directly: identify three other social fitness apps with similar feature sets. What's their 30-day retention? If all of them cluster around 5–15%, you've discovered a category truth, not a product failure. Now the question shifts: given that you can never retain more than 10% of downloads, which 3–4 features create the strongest *stickiness* within that 10%? It's a different optimization problem: not "maximize retention" but "optimize for the quality of the retained cohort."

* **If the retention ceiling is real, optimize for unit economics instead of growth.** Stop optimizing for user count (180K downloads, 8% retention) and start optimizing for per-user value. If your retained 14.4K users (8% of 180K) have strong engagement and lifetime value, simplification isn't about chasing higher retention—it's about deepening value for the core cohort. Design the 3–4 features to be so good that these 14.4K users spend more, engage longer, or refer friends. If the category won't let you grow to 50K active users, become the best app for 15K devoted ones.

* **The real question becomes: "Is this a viable business if we assume 8% retention forever?"** If your runway is 8 months and you're at 14.4K active users, can the team build a sustainable business serving only that cohort? If yes, simplify ruthlessly and optimize for that cohort's preferences. If no, the problem isn't product; it's business model. You may need subscriptions, premium features, or a different revenue model—one that doesn't depend on growth at all. Feature selection becomes secondary to unit economics.

---

## What If the User Defined the Core

* **Create a generative process where users propose features rather than evaluate preset ones.** Instead of asking users "Do you like feature X?", ask them "What's the one thing you wish this app did that it doesn't?" Collect responses from the retained 14.4K users. You'll see patterns emerge: "I want it to sync with my watch," "I want to share workouts with my friend group," "I want custom meal templates." These organic user requests are more revealing than survey questions because they represent *unprompted* desires. Aggregate the requests by frequency and coherence. The top three clusters of requests are your data-driven core features, but they come from users, not from a preset decision tree.

* **Run a participatory feature-discovery sprint.** Select 30 highly engaged users (high retention + frequent session) and give them 2 weeks to propose and collectively refine a feature roadmap. Create a collaborative space where users can propose ideas, vote on others' proposals, and discuss trade-offs. The team observes but doesn't guide. What emerges is a user-defined feature set: it may align with your hypothesis, it may surprise you entirely. Either way, users have generative agency over the product identity. They'll tell you what they believe the core is.

* **Test generative user agency against the team's instinct to discover misalignment.** Take the user-defined feature set and the team's hypothesis. Where do they differ? Those gaps are your data: gaps where the team's vision overestimates user demand, or gaps where users see value that the team missed. In the final feature selection, weigh user-generated requests more heavily than team intuition. Users will align behind a product they helped define, which increases retention stickiness beyond what feature selection alone can achieve.

---

## The Triage Parallel—Vital Signs vs. Vanity Metrics

* **Identify the features the product cannot survive without.** In emergency triage, the question isn't "Which injuries are most common?" but "Which injuries are immediately fatal if untreated?" Apply that logic: for each feature, ask "If we remove this, does the app's core value proposition collapse?" Workout tracking: if removed, does the app lose its reason to exist? Likely yes—it's vital. Social feed: if removed, does the app collapse? Probably not—users came for fitness, not for social sharing. Vital features stay; vanity features go. This reframes the decision from usage metrics to existential necessity.

* **Measure feature *necessity* rather than feature *popularity*.** Necessity: does the app work without it? Does the core user journey still make sense? Vanity metrics: how many users clicked it? Users click things out of curiosity, habituation, or confusion—not always because those features are necessary. A feature with low clickthrough but high necessity (like account settings or a progress dashboard) is vital. A feature with high clickthrough but low necessity (like a splash screen quiz or a "how to use this app" guide) can go.

* **The survival test: remove each feature and measure whether the core user stays.** For each of the 15 features, ask: "If we removed this, would our most-engaged users still open the app?" If the answer is yes—they return anyway—the feature is vanity. If the answer is no—the feature is part of their reason to return—it's vital. This is different from usage metrics. Users may use the meditation guide occasionally, but if they'd stop opening the app without it, it's vital. Users may check the social feed every session, but if they'd keep opening the app for the core workout experience, it's vanity.

---

## Treating the Symptom vs. the Underlying Condition

* **The underlying condition is likely "no coherent value proposition," not "too many features."** At its core, every product has a single thing it does better than alternatives. When an app offers 15 features with no clear hierarchy, it's often because the team hasn't articulated a core value proposition. The symptoms you see—low retention, overwhelming UX, team burnout—all point to the same diagnosis: "This app doesn't stand for one clear thing." Before cutting features, ask the team and your retained users to complete this sentence: "This app is the best choice for users who want to [one clear thing]." If you can't finish that sentence with conviction, simplification alone won't fix the problem.

* **The structural question a diagnostician would ask first.** Before touching a single feature, ask: "Why does this product exist?" Not the founders' pitch, but the real answer. Did users download it because they wanted a workout tracker, and the other 14 features were added because feature bloat seemed like defensibility? Or did users download it hoping for an integrated fitness platform? The gap between the original promise and the current product may be your real problem. If the original promise was "the best workout tracker" and you tried to become "the best fitness ecosystem," you've betrayed your core users while gaining no new ones. Realign the product to what users actually wanted when they downloaded it.

* **Does the team have a shared answer to "What is this product?"** Gather the 8 team members independently. Ask each one: "In one sentence, what does this product do?" You'll likely get 8 different answers, or 8 variations on a theme. That fragmentation is your diagnosis. A coherent product team—even a burned-out one—shares a single clear understanding of what they're building. Before picking features, align on purpose. The features will follow.

---

## Perverse Excellence as Feature Signal

* **Make 12 features deliberately unusable while polishing 3—then watch where users go.** This is ruthless, but it's clean. Ship a version where workout tracking is beautiful and fast, but the meal planner crashes, the social feed shows no posts, the meditation guide has a broken audio player, and the supplement store redirects to a "coming soon" page. Users will arrive expecting the full app. They'll quickly discover the three polished features and the 12 broken ones. If they return for the three polished features despite the wreckage, you've discovered your core. If they don't return at all, you've learned that no subset of this app is compelling—the problem runs deeper than feature selection.

* **The signal you're measuring is resilience, not mere usage.** Users tolerate broken features in apps they love (see: early Twitter, Slack, every startup). If users still open your app when 80% of it is nonfunctional, that app has a strong core value proposition. If they abandon it entirely, the problem is fundamental. This tells you whether your issue is "wrong feature set" or "wrong market" or "wrong execution." A deliberately broken app is honest; it strips away the noise and shows you what users actually care about.

* **Run this test for 1–2 weeks only—long enough to see patterns, short enough to avoid user frustration.** Tell your retained users: "We're testing a simplified version. Some features are intentionally offline. Please help us understand what matters to you." Users will either return to the three polished features or they won't. Their behavior is your data. Then restore everything and iterate on what you've learned.

---

## Destruction as User Research

* **Start with one feature only—the one the team believes is core—and watch users demand the rest in real time.** Ship a version with only workout tracking. No social, no meal planning, no meditation, no marketplace. Watch what users complain about on day one, day three, day seven. The sequence of complaints reveals a ranked list of genuine needs. If no one asks for meal planning until week two, it's a secondary feature. If users demand it on day one, it's closer to core. This is archaeology through absence: users' silence about a feature is data too.

* **Restore features strictly in the order users requested them, and measure impact on retention each time.** You've cut everything. Restore feature #1 (the most-requested). Measure 30-day retention. Did it climb? Restore feature #2. Measure again. Each restoration is an experiment. You'll likely discover that restoring the top 3–4 requested features gets you back to baseline or higher, while restoring #5–15 adds no retention lift. That's your feature ranking, discovered through user behavior, not user opinion.

* **This is slower than a data audit, but it's honest.** You'll spend 4–6 weeks rather than 1, but you'll have zero ambiguity about which features matter. And you'll have earned user buy-in: they participated in rebuilding the product. Users who requested features and saw them restored feel ownership of the outcome. That psychological shift—from users consuming a product to users shaping it—improves retention itself.
