---
project-name: "Mobile App Simplification & Relaunch"
effort: "medium"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App Simplification & Relaunch

---

## Topic Cluster 01: Defining Core Value

1. **What "core value" actually means**: Are we looking for the features most people use, or the features that create the most passionate engagement — and what if those aren't the same thing? What does our product do that no other fitness app does, regardless of current user priorities? [Questioner]
2. **Job-to-be-done framing**: What if the problem isn't which features to keep, but which job users are hiring us to do? Have we asked users directly what problem they thought they were solving when they downloaded the app, and are we even in the right product category? [Questioner]
3. **Feature interaction and keystone effects**: Which features are "keystone features" whose removal would disproportionately harm the ecosystem, and what hidden dependencies create cascading effects if removed? Could the core value actually be an unexpected combination of 2-3 features working together that independent-feature analytics would miss? [Analyst, Systems Thinker]
4. **Differentiator discovery without usage data**: How would we identify our true differentiator if we couldn't see any usage data at all, and what does that reveal about features we've been over-weighting because they're well-instrumented? [Questioner]
5. **The "one thing" hypothesis**: If this app became known for doing one thing exceptionally well — the thing that makes users say "I can't live without this" — what would that be, and how would that single focus reshape every aspect of the product? [Appreciative Inquirer]
6. **Assumption that a unified core value exists**: What if user retention is low not because the app is unfocused, but because no single feature is good enough to compete with dedicated alternatives? Could the real problem be execution quality across all features rather than scope? [Devil's Advocate]

## Topic Cluster 02: Understanding Users Beyond Aggregate Metrics

1. **Feature engagement and stickiness beyond usage counts**: What data points should we examine to determine which features truly drive retention versus which are merely noise — measuring feature stickiness, dependency patterns, and correlation with 30-day retention? [Analyst]
2. **Cohort segmentation and gateway vs. anchor features**: What distinct user cohorts exist (social users, solo trackers, content consumers), and which features serve as "gateway drugs" versus "retention anchors" for each? [Analyst]
3. **Intent vs. behavior gap**: What gaps exist between what users say they want and what they actually do daily, and what do the 47-second sessions and 2% DAU/MAU really reveal about which features users genuinely value versus ignore? [Audience Advocate]
4. **Unarticulated needs and normalized frustrations**: What frustrations or workarounds have users normalized as "just how apps work" that could illuminate what the app's true core value should be? [Audience Advocate]
5. **Differentiated experience by segment**: How might different user segments (age, tech literacy, language, accessibility needs, available time) experience the app's bloat differently, and how might feature prioritization change if we centered the most constrained users? [Audience Advocate]
6. **Learning from the 2% and the 8%**: What can we learn from the 2% who show up daily and the 8% who stay past 30 days — specifically, what would they refuse to give up, and what does their behavior reveal about genuine value? [Appreciative Inquirer, Questioner]
7. **Users we have vs. users we want**: If the current user base is the survivor set of a leaky funnel, are we optimizing for the wrong segment — and what would it look like to design for the users we *want* rather than the users we *have*? [Systems Thinker]

## Topic Cluster 03: Research Rigor and Decision Bias

1. **Self-selection bias in user research**: Users who respond to surveys or interviews are likely the most engaged minority; how do we understand why the 92% abandon the app without alienating the minority who still care? [Devil's Advocate]
2. **One-PM opinion is not "research"**: With only one PM, what guardrails can ensure the "core value" decision isn't effectively determined by one person's biases and limited perspective? [Devil's Advocate]
3. **False consensus on the team**: Six engineers likely have six different opinions about which features constitute the "core," and each may unconsciously champion features they personally built — what decision framework could objectively identify core value without letting ownership bias or team politics drive the outcome? [Devil's Advocate]
4. **Feature popularity vs. feature value**: Features used early by churning users might appear "popular" while actually being on-ramps to nowhere — how can we distinguish features that drive retention from those that merely attract initial engagement before users quit? [Devil's Advocate]
5. **Power dynamics in "essential" framing**: Whose needs and use cases might be systematically overlooked when we decide what's "essential," and what power dynamics are embedded in who gets heard? [Audience Advocate]
6. **User co-creation**: What would genuine user co-creation look like in determining which features survive — bringing the community into the decision-making process rather than communicating decisions after they're made? [Audience Advocate, Questioner]

## Topic Cluster 04: Simplification Strategy — Incremental vs. Relaunch

1. **Is simplification even the right lever?**: How do we distinguish between "overwhelming because too much" and "overwhelming because poorly designed"? What if simplification means better UX design or better discoverability rather than fewer features? [Questioner, Devil's Advocate]
2. **Testing removal before committing**: Could we ship a version with one feature temporarily disabled, remove one feature per month, or otherwise validate each cut empirically before making irreversible decisions? [Questioner]
3. **Incremental vs. big-bang risk profiles**: What are the comparative risk profiles of gradual simplification versus a clean relaunch — user confusion, technical complexity, market perception, team bandwidth — and how do we model outcome distributions for each? [Analyst, Systems Thinker]
4. **Erosion of goals in incremental mode**: If we simplify incrementally, how do we avoid the pattern where each round of cuts has to justify itself, we keep "just one more feature," and the product never becomes truly focused? [Systems Thinker]
5. **The relaunch assumption itself**: A "clean relaunch" assumes users will give us a second chance — what evidence suggests our existing user base will return, and are we over-indexing on retention versus net-new acquisition? [Devil's Advocate]
6. **A/B testing and validation before commitment**: What experimental design allows us to scientifically validate that our chosen 3-4 features actually represent the core value proposition without alienating users? [Analyst]

## Topic Cluster 05: Feature Removal Mechanics and Technical Debt

1. **Unit economics and ROI of cutting features**: What does the cost structure look like per feature — engineering maintenance, support burden, server costs, opportunity cost — and how do we calculate ROI of cuts in terms of resource freed versus revenue/user impact risk? [Analyst]
2. **Technical debt quantification and removal cost**: How do we measure the maintenance cost of each feature, and what's the difference between "delete-and-forget" features and "excise-carefully" features with deep system integration? [Analyst]
3. **Technical debt explosion from removal**: Could removing deeply integrated features create more bugs and complexity than maintaining them, especially when 15 features share code, data models, or infrastructure — and could the engineering cost of removal itself consume the runway? [Devil's Advocate, Systems Thinker]
4. **Ghost code and "Fixes that Fail" risk**: How do we avoid the pattern where we cut features in the UI but the technical complexity remains as hidden code the team still maintains — so we never actually capture the simplicity benefit? [Systems Thinker]
5. **Notifications as a dependency map**: Could analyzing which notifications users actually engage with reveal which features are truly core versus peripheral, since features that don't generate meaningful notifications may be features users don't value? [Connector]

## Topic Cluster 06: Churn, Trust, and the Transition Experience

1. **Cascading user loss and contingency**: What's the maximum acceptable user loss we can sustain during simplification, and what contingency plans exist if simultaneous cuts trigger compounding churn that exceeds current attrition? [Devil's Advocate]
2. **Churn risk by segment and LTV impact**: How do we identify "feature-dependent" versus "feature-agnostic" users and quantify the trade-off between simplification and user loss in lifetime value terms? [Analyst]
3. **Simplification as loss vs. liberation**: How might users experience a feature reduction — as simplification or as loss — and what would it feel like to be a user who deeply relied on a now-removed feature? [Audience Advocate]
4. **Withdrawal period dynamics**: What happens to user behavior in the 3-6 month period after removal when habits formed around removed features persist but the features are gone — and what determines whether frustration transitions to relief or accelerates churn? [Systems Thinker]
5. **Passionate niche users**: How might we identify features with small but passionate user bases before we cut them, honor their commitment gracefully, and distinguish "early adopters of the future core" from "enthusiasts of a peripheral feature"? [Appreciative Inquirer, Audience Advocate, Questioner, Systems Thinker]
6. **Rebuilding trust with burned users**: What would it take to demonstrate genuine commitment to user needs rather than just business survival, and how could the relaunch be an invitation into a new chapter rather than just a product change? [Audience Advocate]
7. **Communication strategy and avoiding dependency**: What's the optimal sequence and messaging for announcing feature removal that balances transparency and trust-building against minimizing churn — without creating a "Shifting the Burden" pattern where external reassurance replaces intrinsic user motivation? [Analyst, Systems Thinker]

## Topic Cluster 07: Team Dynamics and Morale

1. **Peak team moments and amplifiable strengths**: When has the team felt most energized, proud, or effective, and what strengths does each member bring that could be amplified in a leaner, more focused environment? [Appreciative Inquirer]
2. **Team morale through "killing darlings"**: How do engineers stay motivated through a relaunch after months of work is deleted, and what mechanisms rebuild psychological investment — especially when "core" features require working on code they didn't originally write? [Devil's Advocate, Questioner]
3. **Ownership attachment and the bloat feedback loop**: How do we flip the dynamic where people feel ownership over "their" features and resist cuts, which maintains bloat, which increases maintenance burden, which lowers morale — into a virtuous loop of proactive pruning? [Systems Thinker]
4. **Team-aligned product vision**: Given the team's existing strengths, what kind of simplified product would let them do their best work and make the simplification feel like liberation rather than loss? [Appreciative Inquirer]
5. **Capacity reclamation and preventing re-bloat**: After simplification, six engineers maintaining 3 features have excess capacity — what structural constraints or processes prevent the "slow return to bloat" pattern where teams add features back over time? [Systems Thinker]

## Topic Cluster 08: Metrics, Experiments, and Post-Launch Validation

1. **Redefining the north star**: The current metrics (2% DAU/MAU, 47-second sessions, 8% retention) signal product-market fit failure — what leading indicators should we target instead, and how do we distinguish "better engagement" from "fewer features masking the same problems"? [Analyst]
2. **Avoiding perverse engagement metrics**: A simpler app might have shorter sessions because users accomplish what they need faster, which would look "worse" on engagement metrics — what would a success metric that actually captures core value delivery look like? [Systems Thinker]
3. **Small, low-risk experiments this month**: What small experiments could the team run immediately to test which features truly represent core value, and how do we involve users as co-investigators rather than subjects? [Appreciative Inquirer]
4. **Post-launch validation dashboard**: In the first 30/60/90 days after relaunch, what early warning signs distinguish "users mourning removed features" from "genuine product-market fit" from "solved the wrong problem"? [Analyst]

## Topic Cluster 09: Runway, Timeline, and Market Position

1. **Runway optimization scenarios**: With 8 months of runway and a team of 8, what's the break-even across different simplification strategies, and at what point does simplification trade long-term viability for short-term survival? [Analyst]
2. **Runway as a false constraint**: If feature removal uncovers hidden dependencies, database migrations, or backlash, 8 months may not be enough — what does a realistic timeline with buffer look like, and at what point do we pivot to incremental simplification? [Devil's Advocate]
3. **Structural time pressure vs. decision quality**: The minimum time to know if the simplified product works (3-6 months post-launch) is close to total runway — what's the minimum viable timeline for doing this right, and what do we trade if we compress it? [Systems Thinker]
4. **Competitive positioning during simplification**: If we strip down while competitors add features, we'll look feature-poor on comparison charts — what does the transition curve look like, and where are the inflection points where simplicity becomes a compounding advantage? [Systems Thinker]
5. **Marketing and growth alignment**: A focused app attracts fewer but better-fit users — how do we align marketing promise with delivery, accepting that alignment means turning away users who want features we no longer offer? [Systems Thinker]

---

## Appended Questions (Perspective Personas)

### Provocateur (Append)

1. **What if you kept exactly ONE feature and made it absurdly worse?** Imagine you stripped the app down to just workout tracking, but then removed all logging, history, progress visualization, and data—leaving only the immediate act of pressing a button that says "I worked out" before the app closes itself. What would this useless button reveal about what users actually crave from the tracking experience? *The real insight: is the value in the data or in the ritual of acknowledgment?*

2. **What if the app did nothing but DELETE features for the next 8 months?** Every week, one feature disappears permanently with no replacement, no explanation, and no user choice—until month 9 when the app becomes entirely blank. What would user behavior and retention patterns in this controlled demolition reveal about which features create genuine dependence versus which create mere noise? *The real insight: what if feature removal itself—rather than the final simplified state—was the product experience that taught you what matters?*

3. **What if you launched a "competitor" that was intentionally terrible?** Create a clone app with all 15 features, but each one is broken in a specific, maddening way—workout tracking only logs every third workout, meal planning displays recipes you can't actually cook, social feed shows posts from people who don't exist. Market it aggressively to your existing users. What does watching them struggle with the anti-version reveal about which brokenness they'll tolerate and which sends them away forever? *The real insight: what if you could discover core value by studying which imperfections function as dealbreakers?*

4. **What if your 180K downloads were 180K different people who never opened the app twice?** Imagine the retention disaster is actually a feature—your app is designed for single-use transformation, like a ceremonial rite of passage after which users are "graduated" and should never return. How would you redesign the onboarding experience to complete someone's entire fitness journey in 47 seconds? *The real insight: what if the lifetime value model is wrong for this problem and the real opportunity is in perfect, self-contained moments?*

5. **What if you had to explain this app to someone from 1995 who has never seen a mobile phone?** They understand "fitness," "food," "friends," and "shopping" as physical, non-digital experiences. As you describe your app, which features make sense in their world and which become meaningless? What does the alien-ness of "social fitness" or "digital meal planning" reveal about assumptions you've never questioned? *The real insight: which parts of your product exist only because they're possible in software, not because they actually solve human problems?*

### Storyteller (Append)

1. **What would the "first five minutes" experience look like for a returning user who opens the simplified app for the first time, and what emotional state should we be designing toward?** Imagine it's Tuesday morning and Sarah, who previously faced 15 features and 6 navigation tabs, opens the new version. Walk through what she sees, what she feels, and what she can accomplish in those critical first minutes. How do we ensure the transition from confusion to clarity happens within a single session? What does "success" look like in that first interaction—should she feel relief, excitement, curiosity, or something else entirely?

2. **How might the "moment of deletion" unfold for different types of users when features they've incorporated into their routines disappear, and what narrative threads could help them feel excited rather than abandoned?** Consider Marcus, who uses the supplement store feature weekly, versus Priya, who relies on the progress journal as her primary touchpoint. When they open the simplified app and discover these features gone, what happens in the seconds before they either delete the app or give the new version a chance? What story could the app tell them in that moment—and through what channels (push notifications, onboarding, email, in-app messaging)—that would transform a sense of loss into curiosity about the newly focused experience?

3. **What would a "day in the life" of a power user look like if the app successfully delivered on its core promise with just 3-4 features, and how would that differ from their current experience of fragmented engagement across 15 half-baked tools?** Paint the picture of someone who currently spends 47 seconds per session bouncing between features, trying to extract value from a buffet of mediocrity. Now show us what their day becomes when the app provides one or two moments of genuine delight or utility, and how those moments compound into daily habit formation. What does the notification ecosystem look like when you're not fighting for attention across 15 features, and how does the user's relationship with the app fundamentally change?

4. **How might the engineering team's daily work life transform when they shift from maintaining 15 half-built features to perfecting 3-4 world-class experiences, and what "micro-moments" of professional satisfaction will replace the current burnout cycle?** Walk us through the standup meeting six months from now. What language are engineers using to describe their work? How do conversations about quality, testing, and user feedback change when they're not spread thin across a feature graveyard? What moments of pride—seeing a user review, watching usage metrics, shipping a polished experience—replace the current reality of constant bug fixes and technical debt management? How does the team's relationship with the codebase itself evolve when they're not afraid to touch it?

5. **What does the "funeral" scene look like when the team decides which features to cut, and how can we turn a potentially demoralizing process into a moment of clarity and shared purpose?** Imagine the product owner standing at the whiteboard with 15 feature cards, knowing that 11 of them are about to be "killed." How does that conversation unfold? What frameworks or rituals could transform this from a series of painful decisions into a collective act of strategic vision? How do we ensure that every person in that room—whether they built the meditation guide or the friend finder—leaves feeling energized about the new direction rather than mourning their specific contribution? What narrative about the company's future could make sacrificing the present feel like a victory rather than a loss?

### Visionary (Append)

1. **[What if fitness wasn't something you track, but something that emerges naturally through a fundamentally different relationship with your body?]** Instead of asking which features to keep or cut, what if we completely reimagined the category: What would a fitness product look like if it were designed around joy, emergence, and organic behavior change rather than metrics, tracking, and discipline? What if the core value isn't "helping people work out" but something entirely different that doesn't have a current analog in the fitness app space?

2. **[Imagine if the app could disappear entirely as an interface and instead become a presence that anticipates and supports without requiring active engagement?]** What would it mean to invert the relationship between user and app — where the app exists not as something you open, but as something that works on your behalf in the background, creating interventions at the moment they're needed without requiring you to navigate tabs or manage features? What would a zero-UI fitness product look like?

3. **[What if the core value isn't any single feature, but the emotional state users hope to achieve through using the product — and what if we could reverse-engineer from that destination rather than from existing features?]** Rather than asking "what features do people use most," what if we asked "what emotional transformation do people seek when they download this app" and built backward from there? What if the product that delivers that transformation doesn't look like a fitness app at all, but resembles something from a completely different domain (therapy, coaching, entertainment, community)?

4. **[What if user retention isn't about features at all, but about identity transformation — and what if we designed for that psychological shift instead of for engagement?]** Consider that the 2% DAU/MAU ratio might not be a feature problem but an identity problem: users don't see themselves as "people who use this app." What if we completely rethought onboarding, not as a tutorial, but as an identity-forming ritual that fundamentally reshapes how users view themselves? What would an app look like if its primary function was identity construction rather than fitness tracking?

5. **[What if instead of choosing 3-4 core features, we created a product with no features at all — just a single, coherent behavior that users engage in repeatedly?]** Imagine a fitness app with no tracking, no planning, no social features, no content — just one elegant, repeatable action that somehow produces fitness outcomes. What would that one action be? What if the app became a "one-button" product where pressing that button initiates a cascade of value without requiring navigation, configuration, or decisions?

### Connector (Append)

1. **Feature pruning as ecosystem succession** The challenge of cutting features mirrors ecological succession, where crowded ecosystems self-thin to let dominant species thrive. In forest ecology, "self-thinning" creates space for the strongest organisms to flourish. What if we viewed the 15 features as competing species in an ecosystem — how would we identify which features are the "keystone species" whose presence enables the entire ecosystem to function, and which are the invasive species crowding out the core value?

2. **The IKEA effect paradox in user attachment** There's a structural parallel between users attached to niche features and the psychological phenomenon known as the IKEA effect — people overvalue things they've invested effort in building or using. But behavioral economics also shows the "endowment effect" creates irrational attachment to things simply because we own them. How do we distinguish between genuine value-creating features and features users are irrationally attached to due to sunk-cost fallacy — and could we borrow techniques from "loss aversion" research to help users let go without feeling betrayed?

3. **UI complexity as information entropy** Information theory uses entropy to measure uncertainty and complexity in communication systems. The current app's 6 navigation tabs plus hamburger menu represents high interface entropy — users must process too much information before finding value. Claude Shannon's work showed that reducing noise increases signal transmission. If we treated every UI element as adding "noise" to the user's cognitive load, what entropy-reduction principles from information theory could guide which elements are signal (essential) versus noise (eliminable)?

4. **Museum curation as a model for feature preservation** When museums face space constraints, they don't simply throw away lesser works — they rotate collections, loan to other institutions, or create digital archives. The 15 features likely each have some users (even if small). Rather than binary keep/kill decisions, what if we borrowed from museum curation practices: could some features be "rotated out" (temporarily disabled but preserved), "loaned" (spun off as separate apps), or "digitized archived" (export functionality for power users while removing from core experience)?

5. **Surgical triage vs. architectural restoration** There are two different structural parallels for feature removal: surgical triage (emergency room — save what can be saved, let go of what's too far gone) and architectural restoration (preserve historical integrity while modernizing function). Triage is fast but destructive; restoration is slow but honors the original vision. The 8-month runway creates urgency, but the "jack of all trades" problem suggests vision clarity is needed. Which metaphor better serves this situation — and how does that choice change the feature selection criteria?

---

**Synthesize stream total**: 48 across 9 clusters
**Append stream total**: 20 across 4 personas
**Combined total**: 68
