---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "05_feature-selection-methodology-and-decision-bias"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Feature-Selection Methodology and Decision Bias

---

## Synthesized Insights by Question

### Question 17: Quality vs. demand confound, and usage data as a lagging indicator

**Full question**: If the usage data for the 15 features is sparse and noisy — because no single feature was ever well-executed — how confident can the team be that low engagement reflects low value rather than poor implementation, and what would a methodology that separates "feature quality" from "feature demand" actually look like? Feature usage metrics are a lagging indicator that reflects what users tried given the current navigation architecture, not what they would use if a given feature were the primary experience — how should the team correct for this structural distortion when using analytics, and would the right fix be progressive disclosure rather than removal (i.e., is the diagnosis architecture rather than scope)?

* **Run a "hero slot" / lighthouse test: promote one suspected feature to the full home-screen surface in isolation and measure the engagement lift.** You cannot read demand off corrupted analytics. Take a candidate feature, make it the entire surface (or the dominant entry point) for a cohort over two weeks, and watch the lift. A large jump (2-3x or more) proves architecture was suppressing real demand. A flat result proves demand was genuinely low. Run several candidates in parallel.

* **Build a behavioral assumption / switching-cost matrix per feature rather than ranking by raw usage.** The most decision-relevant variable isn't engagement but switching cost. If a feature were removed, would users switch apps (high cost, core feature), build a workaround (medium), or forget it (low, cut)? Combine that estimate with engagement to separate "low adoption because we built it badly" from "low adoption because it was always marginal."

* **Use intent and re-engagement signals instead of session length.** The 47-second session number is itself a lagging artifact. Instrument richer signals: entry point, task-completion rate, the screen users leave from, day-2/day-7 re-engagement. Low engagement plus high task completion suggests a quality issue. Low engagement plus never reaching the feature suggests a demand issue.

* **Interrogate progressive disclosure before adopting it.** Progressive disclosure assumes users want the features but find them overwhelming. This is unproven. Before adding disclosure UX, check whether the cohort that deliberately sought out hidden features actually showed higher 30-day retention. If not, disclosure is just a slower path to removal.

* **Exploit the fact that no feature was well-executed: poor execution is a temporary control.** Because every feature operates at roughly the same handicap, the quality-demand confound is momentarily neutralized. This makes removal-urgency comparisons cleaner right now than they will be after any feature is polished.

---

### Question 18: Strategic vision as rationalization, and sunk-cost inversion

**Full question**: When the team chooses features based on "strategic vision" rather than data, "vision" often defaults to what the founders personally find most interesting; what external checks would prevent the final 3–4 features from simply reflecting team bias rather than user demand? For every feature proposed for removal, the people who built it will instinctively defend it — what process would make it psychologically safe to vote against one's own work, and how could the team structure feature review to surface quality assessments rather than ownership defenses? If the data points toward features most-used (but possibly only because they're easiest to find) while strategic instinct points elsewhere, which direction carries more risk of being wrong, and how does the 8-month runway change which type of error is more recoverable?

* **Run a blind, anonymized feature evaluation that strips builder identity before voting.** Separate judgment from ownership. Present features as anonymized data columns and have everyone score "would I keep this if I had one engineer and 8 months?" Then reveal identities and treat the gap between blind ranking and named ranking as a measure of bias. Use the blind ranking as a tie-breaker since named knowledge sometimes captures real expertise.

* **Reframe the choice as risk asymmetry: vision errors are catastrophic at an 8-month runway, while data errors are recoverable.** When data and instinct conflict, the runway determines which error costs less. Shipping the wrong features kills the product slowly. Cutting the right features or betting everything on founder vision that turns out wrong is harder to recover from because there's no second attempt. Bias toward the more-recoverable error and let runway be the explicit tiebreaker.

* **Invert the sunk-cost frame: ask what you'd build from scratch, and price future maintenance cost, not past investment.** Shift from "what have we invested in?" to "if we had zero code, would we build this next?" and "what does this feature cost per engineer-month to maintain?" High maintenance-to-usage ratios are net drains regardless of past work. The restart test forces vision and data to answer the same question.

* **Bind every strategic claim to a written, falsifiable prediction.** Require anyone defending or condemning a feature to commit a numeric forecast before the MVP ships ("keep X and I predict 15% retention"; "remove Y and I predict ≤2 complaints/week"), then settle it with the 30-day result. A pre-mortem on the simplified set surfaces each feature's hidden assumptions and lets outcomes decide when vision and data conflict.

* **Test vision against a staffing-cut scenario or a paid-to-kill incentive.** Ask which features survive a 50% team cut (real vision holds up; founder theater falls apart), or pay each builder to make the strongest case for removing their own feature. A one-veto rule that makes the vetoer own that feature's entire roadmap reveals what people are truly committed to versus what they once shipped.

---

### Question 19: The "would users build this themselves" test, and stated assumptions per retained feature

**Full question**: For each of the 15 features, ask: if this feature were removed and users strongly wanted it back, would they find another app, build their own workaround, or simply stop caring? Then for the 3-4 candidate core features, state the behavioral assumption each one rests on — and ask whether the current data (180K downloads, 2% DAU/MAU, 47-second sessions) confirms or contradicts that assumption.

* **Write the explicit behavioral assumption for each retained feature, then test it against current data for contradiction.** Every candidate core feature rests on a stated assumption ("users will open daily to do X"). The current data (2% DAU/MAU, 47-second sessions) often contradicts it. A failed assumption is not a feature to execute better; it's a feature to cut. Trace the assumption to a consequence chain: track → see progress → motivation → return. Check whether any link is actually present in the data. Confirm by removing a candidate for a day in a beta cohort and seeing whether users report it missing within 24 hours.

* **Run the "would users find another app / build a workaround / stop caring" test, and weight revealed preference over stated.** Ask, per feature, whether users would migrate, improvise, or shrug. The ones they'd rebuild or pay to replace are core; the ones that draw a shrug were habit, not value. Weight revealed preference (do users actually migrate to a competitor after removal, generating install spikes?) over survey answers. A "would I abandon this app if it disappeared?" dependency score that nothing clears suggests an app-level legitimacy problem, not a feature-selection one.

* **Treat the 180K downloads as a selection cohort defined by one value word.** Rather than asking which features the audience uses, ask what single word ("workout," "community," "progress") explains why 180K people installed despite the chaos. Keep only features that serve that word. Ask the retained 8% which single feature they return for even when the app is worse; that, not the most-used feature, is the core.

* **Rank assumptions by detectability and assign an external owner the kill-switch with a hard deadline.** High-detectability assumptions (usage, competitive comparison, real quotes) should drive keep/cut decisions. Low-detectability hunches should only inform how you build. Commit a dated kill criterion ("if 7-day retention stays below 5% after UX improvement, cut by April 15") and give someone outside the feature team unilateral authority to execute it, defeating the confirmation bias that softens deadlines.

* **Charge a per-feature price and keep only what users willingly fund.** Attach a temporary "$3/month to use Feature X" paywall and rank features by what users voluntarily pay for. Payment is a harder signal than usage because it's simply there.

---

### Question 20: Building on what already works

**Full question**: Given the moments of genuine user delight already discovered, what design or product principles would amplify those strengths — what would a "more of this" philosophy look like translated into a product roadmap? The app already has 180K downloads, which means a real audience wanted something here — what would a product structure (navigation, core loop, feature set) look like if it were explicitly designed to serve the users who stayed rather than the users who left?

* **Design the entire product for the ~14K who stayed, not the 166K who left, by interviewing them directly.** The retained 8% (≈14K users) are proof that this works, and they're the foundation. Stop optimizing to please the 92% and instead ask the retained cohort, by behavior and interview, "what's the one thing you open this app for?" Their answer is the core product. Build navigation, onboarding, notifications, and the core loop around it, accepting a smaller but focused and higher-LTV audience that grows by attracting friends who fit the same profile.

* **Define a single core loop and amplify the delight moment inside it; everything outside the loop is distraction.** Find the one interaction sequence that predicts return (open → core action → see result → motivated to return). Make the delight moment happen within ~20-30 seconds, and cut anything that doesn't feed the loop. Completing the core loop once creates a commitment-and-consistency pull to return. A "more of this" roadmap means fewer features, executed more effectively, not more features. Check carefully whether the delight is the core action itself or something adjacent (e.g., the social share after a workout), because that changes the whole roadmap.

* **Engineer the reward, not the feature: design backward from the moment users feel capable.** You're not assembling features, you're building a specific emotional reward. Find the moment users feel genuinely stronger or more capable (not merely satisfied) and design the reward loop backward from it. The core may turn out to be challenges plus broadcasting them rather than individual tracking.

* **Add a lightweight habit/streak layer and an intent-based onboarding as low-cost retention levers.** A thin streak/check-in system that sits on top of whatever feature each user already engages with can lift retention materially for a small build cost. An intent-based onboarding ("what brought you here?") that locks the home screen to the user's stated goal for the first 7 days attacks the day-one overwhelm that drags sessions to 47 seconds.

---

### Question 21: The team is the product

**Full question**: What if the 6 engineers, 1 designer, and 1 PM — burned out from 15 half-built features — are the real product you're trying to save, not the app? Imagine the simplification decision is primarily a team-recovery intervention, and the feature choices are secondary. The real insight: if team morale and creative coherence are the actual asset at risk, which three or four features would a burned-out team be *excited* to own completely? What does "the features the team wants to build" reveal that "the features users want" might miss?

* **Make team excitement-to-own a primary selection criterion: keep the 3-4 features the team is fired up to own completely.** A burned-out team builds half-baked features regardless of their market potential. An energized team produces excellent work even where the market isn't waiting. Ask each engineer/designer which 3-4 features they'd be excited to own end-to-end (design, ship, iterate, support) for the next six months, and treat that as load-bearing data, not indulgence. Ownership is the antidote to burnout, and morale compounds over the 8-month runway. A feature with no willing steward is unmaintainable by definition.

* **Run the relaunch as a team-recovery project with team-health success metrics, reframed from "what are we removing?" to "what are we excited to build?"** Tell the story as "we're making ourselves the constraint, not the calendar, and keeping only what we can execute beautifully," making the team co-authors rather than victims of top-down cuts. Define success first in team-health terms (zero burnout time off, everyone owns one from-scratch feature, short standups) and product metrics second; 10% retention with rebuilding morale is a win. Reframing the 8-month runway as roughly 2,800 engineer-hours shows that five well-executed features get about 4x the attention of 15 half-built ones.

* **Reverse-engineer the product from the team's existing strengths and diagnose the specific fatigue pathway.** Ask "what have we built that we're actually proud of?" and let the core emerge from pockets of real expertise. Diagnose why the team is burned out (task overload versus unclear ownership versus reward deficit versus decision conflict), because each cause implies a different intervention and a different way to communicate the relaunch.

* **Consider that the right team for the simplified product may not be the current one; let sustainable ownership capacity set the feature ceiling.** You may need to rotate or rebuild the team around the focused product, since an engineer bored by breadth may be energized by depth. Start with the PM and one engineer owning the core for two weeks to see if energy shifts. The honest ceiling is "how many features can one engineer own completely?" (perhaps 1-1.5 each), which sets the maximum feature count structurally. A 60-day tech-debt sabbatical before the cut decision produces clearer, less burnout-driven choices.

---

### Question 22: What if 8% retention is actually the ceiling

**Full question**: What if the problem isn't that you built the wrong features but that this entire category — social fitness apps — has a structural 8% 30-day retention ceiling, and no amount of simplification will change it? What would you discover if you assumed the retention number is correct and worked backward from "this product can never retain more than 10% of users" — would that change which three features you keep?

* **Benchmark the category to test whether 8% is structural before assuming any feature fix will move it.** Take the ceiling hypothesis seriously. Check 30-day retention for comparable apps (Strava, Nike Training Club, other social fitness). If they all cluster at 5-15%, you're hitting a category limit and no simplification fixes it. If they hit 25%+, then scope and execution are the constraint. This benchmark is the gating test: it determines whether feature selection is even the right problem.

* **If the ceiling is real, stop chasing retention and optimize for the depth, LTV, and network effects of your loyal cohort.** Accept the 8% and concentrate value there. Make the 3-4 retained features so rich that your loyal users do longer sessions, pay more, refer friends, and grow organically. An 8% cohort of evangelists spending 20 minutes per session beats 20% of users opening for 30 seconds. This may be a sustainable smaller product rather than a growth story, which is completely different economics.

* **Reframe the ceiling as a market-selection signal: a narrower category may have a higher ceiling.** 8% may be the ceiling for general social fitness but 20% for solo habit tracking or 35% for team challenges. Rather than fighting the ceiling, slide under it by repositioning into the higher-retention sub-category. That changes which features you keep (e.g., drop everything that isolates users and become a pure team-challenge platform). If the settling point is genuinely 8%, design for a cyclical user: someone who engages intensely for 4-8 weeks then returns months later.

* **Run the unit-economics math before committing 8 months. The answer may be "wrong business," not "wrong features."** If 8% is your baseline, run the LTV math on what it takes to monetize the retained cohort aggressively. If it works, simplify. If it doesn't, the product may not be viable at all. That's a business-model problem, not a features problem, and worth knowing before your runway runs out. A high-margin freemium model requires different feature choices: cut mass-appeal features and double down on depth for power users.

* **Diagnose the actual mechanism of the ceiling, including whether social features themselves suppress retention.** Social comparison in fitness can be demotivating, so every social feature might lower retention. Test by removing all social features for a cohort and check whether retention jumps. Map cohort retention by entry date: if early cohorts retained better, feature bloat is actively degrading the product. If every cohort is flat at 8%, you're looking at a category ceiling, and the fix is completely different.

---

### Question 23: What if the user defined the core

**Full question**: Imagine a version of this relaunch where the product's essential function is not decided by the team at all — where the three or four features that survive are discovered through a process that gives users generative agency over the product's identity, not just feedback on a predetermined direction. What would that process look like, and what could it surface that data and interviews cannot?

* **Run a generative co-creation sprint where engaged users design (not rank) the product, with real decision authority.** Move users from evaluating preset options to generating the product. Recruit 30-40 highly engaged users, ask open generative questions ("we're rebuilding from scratch; what is the one thing you want this to be?"), and give them real voting/prioritization power over the feature set while engineers retain feasibility. The output may look nothing like the team's hypothesis, and it ships with the credibility of "this is what users told us they wanted."

* **Use what users actually choose and do rather than what they say they want.** Force scarcity so choices are honest. Give users a fixed point budget to bid on features, require that adding a feature means removing one, or track what they actually use over 30 days (archiving the rest). What people choose under real constraints is more honest than surveys. Watching what power users build on, fork, and share reveals priorities faster than asking.

* **Have users define the core loop sequence, then prototype and ship the user-designed version with a real cohort.** Don't stop at feature lists. Have users specify "first I'd want to ___, then ___, and I'd return tomorrow if ___," turn that into a product, and test it with ~500 users for four weeks. Prototyping the top user-discovered pillars as separate minimal apps and comparing retention shows which loops actually work. The user-designed core may be less "social" and more "coach" than the team expected.

* **Name the real trade-off: user-defined means the team must give up control.** Founders are often partially right, and this is a genuine choice, not a free win. It's either "a product users want" or "a product reflecting the founder's vision." One choice favors demand signals; the other favors conviction. Where the user-defined set and the team hypothesis diverge is itself data: it shows exactly where vision overestimates demand or users spot value the team missed. Users trusted with consequential decisions become emotionally invested in the outcome.

---

### Question 24: The triage parallel — vital-signs vs. vanity metrics

**Full question**: Emergency triage sorts patients by survivability, not complexity of presenting symptoms — what would it look like to apply the same logic here, asking not "which features are most used?" but "which features, if removed, would cause the product to stop breathing?" and how does that reframe the retention data you already have?

* **Replace "most used" with "what generates support tickets within 24 hours if it breaks?" as the vital-signs test.** The true vitality test is not usage but "if this broke at midnight, how many tickets would we get by breakfast, and from whom?" Features that would generate hundreds of complaints from daily users are vital; features that would generate near-silence are vanity, regardless of click counts. Vitality can also mean coherence: a feature whose removal makes users no longer understand what the app *is* is vital even at low usage.

* **Map the vital-signs assessment against engagement to expose the dangerous quadrants, especially high-vital/low-usage.** Cross usage with vitality before applying any "cut low usage" rule. High-usage/low-vital features are navigation-default habit (cuttable); low-usage/high-vital features are relied on disproportionately by power users and have a discoverability problem. Removing them is a mistake. Fix their visibility instead of cutting. Past outage events are natural experiments: when a feature broke before, did users complain?

* **Build a multi-axis vitality score rather than a single ranking, including team maintainability.** Score each feature on several axes: usage among retained users, ticket frequency when broken, and the team's ability to maintain it without burnout. Cut anything low on two or more axes. This makes team capacity an explicit triage input. Assigning ICU-style codes (immediate / urgent / delayed / expectant) by whether removal stops a cohort from returning forces binary decisions and surfaces dependencies.

* **Audit support tickets by type (confusion vs. broken) as a live vital-signs monitor.** Confusion tickets ("how do I do X?") mean a feature is adding cognitive load and should go; "it's broken" tickets mean a wanted feature is worth fixing. This separates cognitive-load offenders from genuinely demanded-but-broken features.

---

### Question 25: Treating the symptom vs. the underlying condition

**Full question**: In medicine, treating each symptom independently often masks the root diagnosis — given that the app's 15 features may all be downstream symptoms of a single unclear value proposition, what structural question would a diagnostician ask before touching a single feature, and does the current team have a shared answer to it?

* **Before touching any feature, force the team to complete "this app is the best choice for users who want to ___" in one sentence; divergent answers are the disease.** The root condition is almost certainly an unclear value proposition, not feature count. Have each team member independently write a one-sentence value prop: "In 15 words or fewer, what does this app do?" If you get 8 different answers, the 15 features reflect that internal confusion, and cutting features won't fix it. Only after the team shares a clear answer does feature selection become obvious. Eliminate features that contradict the agreed narrative immediately, not because they're unused but because they create confusion.

* **Diagnose the gap between what users expected and what the app became.** Interview users who stopped using it about what they expected in the first 10 seconds, then compare to the team's intent. If users wanted "stay accountable" or "stay motivated" but the app delivered "log metrics" or "get data," that's the real problem, and fixing it matters more than picking the right three features. If the original promise was "the best workout tracker" and the app became "the best fitness ecosystem," that shift away from core users is what needs realignment. Check what your retained 8% actually uses against what you claim the app does.

* **Understand feature interdependencies and shared infrastructure before assuming cuts equal simplicity.** If 12 of 15 features depend on the same auth system or social graph, cutting features won't reduce your maintenance burden because the underlying system stays. Know the technical debt beneath features before deciding. A simple feature set on a complex foundation isn't actually simpler.

* **Ask "why did we build this?" for each feature to identify the bloat pattern: competitor-copying, founder taste, user requests, or scope creep.** The reason each feature exists reveals the systemic cause of bloat. Naming the pattern is how you avoid repeating it in the relaunch.

---

### Question 26: Perverse excellence as feature signal

**Full question**: What if, instead of cutting features, you deliberately made 12 of the 15 features as bad as possible — broken, ugly, barely functional — while polishing only three? The absurd version is sabotage; the real insight is: if users keep returning to the three polished features despite the surrounding wreckage, you've found your core. What would it reveal if users still opened the app for just one thing even when everything else was actively terrible?

* **Run the sabotage test: polish three features, deliberately degrade the other twelve, and watch which features users hunt for despite the wreckage.** By degrading most features and polishing a few, you strip away navigation bias and switching-cost inertia. Users tolerate broken features in apps they love, so if they abandon the app entirely, the problem runs deeper than feature selection. The features users still dig for reveal genuine preference rather than "easiest to find." Run it for 1-2 weeks with transparent messaging to avoid lasting frustration, then restore and iterate on what you learned.

* **Run the inverse: deliberately make one currently-popular feature terrible and see whether its usage was real demand or navigation default.** Degrade a single high-usage feature. An 80% usage drop means its apparent demand was just "easiest to find"; a 20% drop means demand is real despite bad execution, so keep and fix it. A parallel feature quality scorecard helps spot moderate-engagement, high-quality features that are underrated value.

* **Use friction or deliberate errors as a filter to separate habit from genuine need.** Add ritual friction (confirmation screens, a CAPTCHA, a forced daily password) or surface deliberate errors across all features for a few days. Features users still use under friction, or report bugs on and work around, are genuine dependencies; the ones that vanish silently were nice-to-haves.

---

### Question 27: Destruction as user research

**Full question**: What if you removed every feature except one, shipped it, watched what users demanded back — and only restored features in the exact order users screamed loudest? Imagine this not as abandonment but as archaeology: users' protests are a ranked signal of genuine need. What would the sequence of complaints reveal about which features created the illusion of value versus actual dependency?

* **Ship a single-feature "Focused" version with transparent messaging, then restore features strictly in the order users demand them back.** Strip to one feature and frame it publicly as "we're rebuilding from your feedback" (archaeology, not abandonment). Let the volume and urgency of complaints across tickets, reviews, and social media produce a ranked, behavior-based feature priority that no survey can match. The first 3-4 features that claw back to the top become the relaunch set. A "feature funeral" notification on each removal gathers the same intelligence in a gentler form.

* **Read the temporal and segment pattern of the complaints, not just the ranking.** When and from whom complaints arrive matters as much as how loud they are. Immediate complaints signal vital features; week-later complaints signal nice-to-haves; month-long silence signals decorative. Clustering by cohort reveals which segments to serve, not just which features to keep, and may show the product's future is segmented.

* **Incrementally restore and measure retention lift at each step to find where the curve flattens.** Treat each restoration as an experiment and watch the retention lift. You'll likely find the top 3-4 features recover baseline-or-higher while #5-15 add no lift, giving an empirical cutoff rather than a guess. Sequencing removals by ease of reinstatement lets you test demand cheaply before betting the app on removing structural ones.

* **Recognize that the destruction process itself shifts control back to users and builds buy-in.** The destruction-and-restoration ritual moves the team from "executors of strategic vision" to "stewards of user demand" and reframes the cut from "we're killing your favorites" to "we're asking what you actually need." That shift makes the same 15-to-4 outcome stick because users feel heard, and the felt ownership is itself a retention lever. Willingness-to-fund mechanisms (a "feature bounty" for restoration) sharpen the signal and generate pre-launch goodwill.

---

**Questions addressed**: 11
**Synthesized insights**: 39
