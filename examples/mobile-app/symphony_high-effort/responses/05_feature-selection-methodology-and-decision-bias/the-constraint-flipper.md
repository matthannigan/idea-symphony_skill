---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
persona: "The Constraint Flipper"
---

# Feature-Selection Methodology and Decision Bias - The Constraint Flipper

---

## Quality vs. Demand Confound, and Usage Data as a Lagging Indicator

* **Turn sparse data into a signal for architecture redesign.** The 2% DAU/MAU and 47-second sessions aren't a weakness—they're an invitation to redesign the navigation surface. Instead of asking "which features are used?" ask "what if we made it impossible to accidentally see 14 features?" Build a single home screen with only 1 featured core action visible, everything else gated behind a simple menu. If users dig for features they love, you've found them. The confound becomes your methodology: design the navigation so sparse usage data now reflects genuine intent rather than UX friction.

* **Use the poor execution as your baseline for comparison.** Since no feature was well-executed, each one operates at roughly the same handicap. This actually neutralizes the quality-demand confound temporarily. Run an experiment: pick the top 3 features by engagement, re-implement them with 3x design polish and 2x clarity in the onboarding flow, ship them as a micro-product, and measure whether engagement lifts 2x or 10x. The magnitude of the lift tells you how much of the current low engagement is architecture vs. real demand.

* **Invert the question: assume features are equally bad, measure removal urgency instead.** If you killed any feature tomorrow, would 2% of users notice within a week? Which feature, if deleted, would trigger the most support tickets—not from passionate users, but from confused ones? That's your essential feature: it's so integrated into the mental model that removing it breaks the experience. The others can go. This flips the dependency question on its head and uses technical integration as a proxy for user centrality.

* **Treat the navigation architecture as the real experiment.** The current 6-tab structure + hamburger menu creates artificial scarcity—users can only discover features they already know about. Simplify to 3 tabs and move underperforming features behind a "browse all features" section that appears only after users complete an initial core loop. Track which features users seek out when they're not defaulted onto the home screen. This structural constraint becomes your most reliable data source.

---

## Strategic Vision as Rationalization, and Sunk-Cost Inversion

* **Make ownership defense lethal by introducing a public feature ranking.** Have each engineer or designer assign a brutal score to every feature they didn't build: 1-10 for "if I had to use only one fitness app tomorrow, would I open this one for that feature?" Results get public. Suddenly defending your own feature against everyone else's judgment is harder than admitting it's not core. The constraint of public accountability flips ownership bias into a tool for honest assessment.

* **Institute a 72-hour feature veto window for the people who built features.** Each engineer gets one free veto to block removal of a feature they own. But the catch: if you use it, you personally own the entire relaunch roadmap for that feature for 6 months with no outside help. Three engineers burn out completely, features get axed anyway. People protect what they're actually committed to, not what they once shipped. The constraint of personal responsibility reveals true belief.

* **Turn the strategic vision into a constraint: measure team excitement, not user demand.** Propose a thought experiment: "This feature stays only if everyone on the core team would personally use it weekly if it were the only thing we built." If the founder loves feature A but engineers want feature B, that's a signal the relaunch might energize the team differently than a data-driven cut would. Build for the features that create team coherence first, then validate market fit second. Burned-out teams ship nothing; excited teams ship discipline.

* **Bind strategic choices to a data forecast.** The PM says feature X is strategically essential? Require a prediction: "If we keep X and launch 3-feature MVP, I predict 15% 30-day retention." The engineer says Y is doomed? "If we remove Y, I predict no more than 2 support complaints per week." Write these down, ship the MVP, measure after 30 days. The people who were right about their judgment get credibility; the people who rationalized their hunches get humility. This constraint reframes vision as testable prediction.

---

## The "Would Users Build This Themselves" Test, and Stated Assumptions Per Retained Feature

* **Flip the test: ask users to rank features by "would I abandon this app if it disappeared?" Rank from 1-5, not by how often they use it.** Users distinguish between "nice extras I use sometimes" and "core functionality I've learned to depend on." This reveals behavioral dependency, not engagement. The three features with the highest dependency scores carry the implicit assumption that the app's value is irreplaceable for those specific users. If no feature hits 4+ on dependency, the app itself has a legitimacy problem, not a feature-selection problem.

* **For each retained feature, make the assumption explicit and testable: "We assume X% of DAU would seek an alternative if this feature disappeared."** Measure by running a 2-week soft sunset: hide the feature behind a "coming soon" banner but show the app otherwise. Track whether those users churn. If the assumption is "20% of users depend on feature X," but only 4% churn when it's hidden, the assumption was wrong. This constraint forces assumptions into measurable propositions and surfaces false beliefs before relaunch.

* **Treat the 180K downloads as a selection cohort, not a weakness.** That audience found *something* valuable enough to install despite the chaos. Rather than asking "what features do they use?" ask "what single word describes why these 180K people showed up?" The answer might be "workout" or "community" or "progress." Then ask: of the 15 features, which ones directly serve that one value? Everything else is organizational debt, not product. The constraint of a single value prop becomes your ruthlessness criterion.

---

## Building on What Already Works

* **Invert the cut-everything approach: find the 180 seconds per session that work, then build exclusively around that moment.** At 47 seconds average session length, some small fraction of users are finding genuine delight fast. What are those users doing? Are they checking a specific metric, logging a workout, or seeing a community post? Redesign the entire app as a vehicle to reach that moment in under 30 seconds, with every other feature deleted. If those micro-sessions expand to 2-3 minutes naturally, you've amplified what works.

* **Apply a "delight archaeology" constraint: for each of the 3-4 retained features, identify one moment per feature that users find surprising and good.** Not just functional, but small moments of joy: a beautiful progress visualization, a friend's encouragement, a personal record alert. Design the relaunch so those moments happen within 20 seconds of opening the app. Strip everything else. The constraint of "lead with delight, not feature completeness" flips the typical roadmap upside down.

* **Use the 8% retention cohort as product designers.** Those 8% of users who came back after 30 days are your north star. Interview them specifically: "What was the moment you realized you'd use this app regularly?" The answer reveals which feature(s) unlock sticky behavior. Then design the navigation, onboarding, and core loop to make that exact moment unavoidable. The constraint of "design for the users who stayed, not the ones who left" inverts the typical polishing order.

---

## The Team Is the Product

* **Turn burnout into a selection criterion: keep the features the team *wants* to own, not the ones users demand.** If the 6 engineers vote with their hearts on which features excite them, those votes become sacred. Burned-out people build defensively; excited people build with care. A feature no engineer finds interesting will launch half-finished regardless. This constraint means the relaunch is fundamentally a team-recovery intervention, with market validation as secondary. A team of three people excited about one feature will beat a team of six burned out on five features.

* **Implement a "feature draft": each engineer gets to nominate one feature to defend, and you keep only features that at least one engineer is genuinely fired up about.** If no one wants to own a feature, it goes. This isn't democracy; it's constraint-based triage. The team's internal excitement becomes a proxy for the kind of sustained energy needed to polish and iterate. A feature with genuine internal advocacy will attract better thinking, faster iteration, and better execution—these multiply over 8 months.

* **Reframe the 8-month runway as team bandwidth, not feature-development time.** With 7 people, you have roughly 2,800 engineer-hours. Building five well-executed features instead of 15 half-finished ones means each feature gets 4x the attention and iteration. The constraint of time forces the team to make features exceptional rather than comprehensive. Ask: "Which three or four features would this team be *proud* to show to their peers in 8 months if they worked on nothing else?" Pride in work drives execution quality like nothing else.

---

## What if 8% Retention Is Actually the Ceiling

* **Accept the ceiling and use it as a constraint to optimize for depth instead of breadth.** If 8% retention is structural to social fitness (people hit a goal and stop, or lose motivation seasonally), then trying to keep all 15 features to please everyone is futile. Instead, optimize for depth: build a features-as-tools approach where the 3-4 retained features become so rich and polished that the 8% of users who stick become power users who evangelize. An 8% retention cohort of people doing 20-minute sessions and inviting friends is more valuable than 20% retention of people opening for 30 seconds.

* **Reframe the goal from "break the retention ceiling" to "concentrate value in the 8% that stick."** If the market is telling you this category can't break past 8%, stop trying to reverse that and instead ask: "What product features would make the 8% so engaged that they generate network effects and inbound organic growth?" In some categories, unit economics aren't about individual retention but about the density and engagement of the loyal cohort. The constraint of a hard ceiling forces you to find a different success metric.

* **Use the 8% as your true user population and build for repeat loops instead of one-time acquisition.** If 8% is the natural settling point, assume you're running a seasonal or cyclical product, not a daily app. Design for users who engage intensely for 4-8 weeks, then leave, then come back after 2-3 months. Build onboarding, features, and notifications for that repeat-cycle user instead of chasing daily active users. The constraint of accepting the retention number removes the false metric-chasing that drives feature bloat.

---

## What if the User Defined the Core

* **Flip agency: ship a "feature marketplace" where users curate the core themselves.** Offer 15 features, each with a voting mechanism. Users (and internally, the team) vote weekly on which features should be on the home screen next week. After 4 weeks, only the features that stayed voted onto the home screen for the entire month become permanent. This isn't focus-grouping; it's crowdsourcing the definition of "core." Users feel ownership, and the team gets real data on which features create habitual return visits.

* **Run an inverse "feature sabbatical": remove one feature per week, monitor what users ask for, and restore features in the order of loudest complaints.** Users discover what they actually depend on through absence. After 12 weeks, you've ranked all 15 features by genuine indispensability (not engagement), and the top 3-4 are the ones worth keeping. The constraint of destruction-as-research flips the usual polishing order: user-demanded features earn development investment, not pre-decided strategic ones.

* **Gamify the curation: give users a "product council" role where 100 beta users design the next version by choosing 4 features from 15, then comparing their choices to hundreds of others.** Show patterns: "80% of power users kept these four features, while casual users split differently." This reveals whether there's one core or multiple cores for different user segments. The constraint of transparent comparison drives user input from stated preferences to revealed preferences, surfacing genuine demand.

---

## The Triage Parallel—Vital-Signs vs. Vanity Metrics

* **Ask "survival analytics": which feature, if deleted, causes the entire app to become fundamentally confused in users' minds?** In triage, you don't ask "which patient has the worst symptom?" You ask "which patient will die if untreated?" Same here: which feature is so central to the product's identity that removing it makes the whole thing incoherent? That's your vital sign, not engagement metrics. If the app is "social fitness" but the community feature is gone, users won't understand what the app *is*, even if they use workout tracking. Vitality is coherence, not usage.

* **Flip the retention metric: measure "retention of understanding" instead of daily return.** When users open the app after 30 days, do they remember what it's for, or are they confused? If 8% of users return but 0% understand what the app does, you have a fatal coherence problem, not a feature problem. Each retained feature should reinforce one central narrative. If features contradict that narrative, remove them—they're noise, not signal. The constraint of narrative coherence becomes more important than engagement data.

* **Use support ticket analysis as your vital-signs monitor.** Categorize every support request as either "I'm confused about how to do X" (feature is underdiscovered) or "I want to do X but the feature doesn't work" (feature is wanted but broken). Features generating mostly confusion-tickets are killing your vital signs—they're creating cognitive load. Remove them. Features generating mostly "it's broken" tickets are worth fixing. This constraint flips from engagement metrics to user confusion as the decision driver.

---

## Treating the Symptom vs. the Underlying Condition

* **Before cutting any feature, diagnose the value proposition failure.** Ask the team to complete this sentence in writing: "This app helps people..." If you get five different answers, you don't have a feature-selection problem—you have an identity problem. Cutting features won't fix incoherent identity; it'll just make the identity clearer while leaving the underlying positioning broken. The constraint forces the hard question first: what is this app *actually for?* Only after you answer that can you cut features, because you'll know which ones reinforce that purpose.

* **Treat retention data as a diagnostic symptom, not the disease.** 2% DAU/MAU and 47-second sessions point to something wrong, but it's not necessarily "too many features." It could be: onboarding is confusing (users bounce before finding their core loop), the core loop itself is unsatisfying (notification fatigue, poor social feedback, slow progress), or the category is saturated (users try multiple fitness apps, keep the best one, discard the rest). Before cutting features, diagnose which of these is the real condition. The constraint of rootcause thinking prevents rearranging deck chairs.

* **Use a "why chain" interview to surface the underlying condition.** Interview 10 churned users: "Why did you stop using the app?" Take their answer and ask "why?" four more times. After five "whys," the real condition usually emerges: maybe it's "I got frustrated because the app kept nagging me about features I didn't want" or "I realized I achieved my goal and didn't need a fitness app anymore" or "my friends weren't using it, so it felt pointless." The constraint of deep diagnosis reveals whether the problem is features, user segmentation, or market positioning.

---

## Perverse Excellence as Feature Signal

* **Design an experiment: polish only 3 features to world-class quality while deliberately degrading the other 12 to slow, ugly, barely functional versions.** Don't sabotage—just deprioritize. Leave the polished features with fast load times, beautiful design, clear CTAs; leave the others with slow performance, cluttered UI, hidden deeper in navigation. Ship it as a "refresh" and track which features users actually use and, more importantly, which ones they *choose* to use despite the wreckage around them. This constraint—perverse excellence—removes navigation bias and surface design from the equation. Real stickiness emerges.

* **Rank features by "would a user learn this feature's quirks if everything else were intentionally bad?"** If users tolerate a feature's learning curve and clunky UI, that's a signal of genuine value, not engagement coincidence. The features users dig for despite poor UX are the ones worth polishing. This flips the usual design workflow: instead of polishing everything equally and hoping one thing sticks, you identify what's sticky first, then invest in craft. The constraint forces honesty about user tolerance.

---

## Destruction as User Research

* **Ship a radical MVP with only your single best guess of the core feature, full stop.** No secondary features, no safety nets. If your intuition says workout tracking is core, build workout tracking and nothing else. Ship it. Track what users ask for in support tickets and feature requests. After 30 days, note the top 5 most-requested features. Add the #1 request, ship again. Repeat monthly. After 6 months, you've built a roadmap in the exact order users revealed their needs through absence and complaint. This constraint—iterative destruction and resurrection—is the most honest methodology.

* **Frame it as archaeology, not abandonment.** Users' protests when features disappear are a ranked signal of genuine dependency. "I can't track my meals without the nutrition feature" is louder than "I miss the meditation guide." Measure the volume and urgency of complaint, rank features by it, and restore in that order. The constraint of listening to what people ask for when forced to choose tells you more about real value than any engagement metric. You're excavating genuine need from beneath interface bias.

* **Measure "feature resurrection demand" by segment.** After you've cut to a single feature, different user segments might ask for different missing features. Power users might demand social features; beginners might ask for guided workouts. This tells you the app's future is segmented, and you should build features that serve one segment exceptionally rather than all segments mediocrely. The constraint of destruction reveals not one core, but multiple cores for different user archetypes.
