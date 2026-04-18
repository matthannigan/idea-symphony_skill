---
project-name: "Mobile App Simplification"
effort: "medium"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App Simplification

---

## Topic Cluster 01: Defining Core Value and True North

1. **What does "core value" actually mean in practice?** Are we looking for features most people use, or features that create the most passionate engagement — and what if those aren't the same thing? What is our true differentiator if we couldn't see any usage data, and what job are users actually hiring us to do? [Questioner]

2. **Reframing the product category**: Why do we assume we need to be in the fitness app category at all? What if our actual value lies in an adjacent space we've accidentally stumbled into, and have we asked users directly what problem they thought they were solving when they downloaded the app? [Questioner]

3. **Redefining the North Star metric**: The current metrics (2% DAU/MAU, 47-second sessions, 8% retention) signal product-market fit failure — what leading indicators should we target instead, and how do we distinguish between "better engagement" versus "fewer features masking the same problems"? A simpler app might have shorter sessions because users accomplish what they need faster, which would look "worse" on engagement metrics but represent better product design — what would a success metric that actually captured core value delivery look like? [Analyst, Systems Thinker]

4. **The "One Thing" Evolution**: If this app became known for doing one thing exceptionally well — the thing that makes users think "I can't live without this" — what would that be? How would that single focus shape every aspect of the product, and what would users accomplish or feel that they couldn't elsewhere? [Appreciative Inquirer]

5. **Keystone features and hidden dependencies**: If we remove certain features, what's the structural impact on remaining functionality — which features have hidden dependencies that create cascading effects, and how do we identify "keystone features" (borrowing the ecological metaphor of keystone species) whose removal would disproportionately harm the ecosystem? If the core value is actually an unexpected combination of 2-3 features working together, how would we detect it through usage data that treats each feature as an independent silo? [Analyst, Systems Thinker]

## Topic Cluster 02: User Research, Segmentation, and Unspoken Needs

1. **Cohort Segmentation Framework**: The key variables for feature prioritization seem to be user segments rather than aggregate metrics — what distinct user cohorts exist (e.g., social users, solo trackers, content consumers), and which features serve as "gateway drugs" versus "retention anchors" for each cohort? [Analyst]

2. **Gaps between stated and actual behavior**: What gaps exist between what users say they want and what they actually do daily? The 47-second average session suggests users aren't engaging with the app as intended — what might users' actual behavior patterns reveal about which features they genuinely value versus which ones they ignore or actively avoid? [Audience Advocate]

3. **Unarticulated needs and normalized frustrations**: What unarticulated needs might users be struggling with that they never complain about? People often accept bad UX as "just how apps work" — what frustrations or workarounds have users normalized that could illuminate what the app's true core value should be? [Audience Advocate]

4. **Understanding why the majority churned (avoiding self-selection bias)**: Users who respond to surveys are likely the most engaged minority, leading us to overoptimize for power users while ignoring the 92% who leave within 30 days. What research methods can help us understand why the majority of users abandon the app without alienating the only users who still care? What would happen if we interviewed the 8% who stayed past 30 days and asked specifically what they'd stop using if we removed it? [Devil's Advocate, Questioner]

5. **Context beyond in-app behavior**: What opportunities exist to understand users' contexts beyond their in-app behavior? The data shows what users do in the app, but what might we learn about their broader lives — their constraints, motivations, and environments — that would inform which features actually matter in their real, messy lives? [Audience Advocate]

## Topic Cluster 03: Unit Economics, Runway, and Feature Cost

1. **Unit Economics of Feature Simplification**: What does the cost structure look like per feature — considering engineering maintenance load, customer support burden, server costs, and opportunity cost — and how do we calculate the ROI of cutting features in terms of resource freed versus revenue/user impact risk? [Analyst]

2. **Runway Optimization Scenarios**: With 8 months of funding remaining and a team of 8, what's the break-even analysis for different simplification strategies — how much does reducing the feature surface area lower burn rate versus extending runway, and at what point does simplification trade long-term viability for short-term survival? [Analyst]

3. **Technical Debt Quantification and the removal-cost explosion**: How do we measure the maintenance cost of technical debt embedded in each feature — what's the difference between "delete-and-forget" features versus "excise-carefully" features with deep system integration? Removing deeply integrated features could create more bugs and complexity than maintaining them, especially if 15 features share code, data models, or infrastructure — how can we assess whether the engineering cost of removal might consume the entire 8-month runway without delivering a working product? What if the technical debt of feature removal is worse than the technical debt of keeping poorly used features? [Analyst, Devil's Advocate, Questioner]

4. **The 8-month runway as a false constraint — and a dangerous delay**: Eight months sounds like sufficient time for a relaunch, but if feature removal uncovers hidden dependencies, requires database migrations, or triggers unexpected user backlash, we could run out of funding before launching anything viable. We won't know if the simplified product works until 3-6 months after launch, but we only have 8 months of runway total — this structural time pressure can force "Shifting the Burden" decisions. What does a realistic timeline look like with buffer for unknown unknowns, and at what point do we pivot to incremental simplification? [Devil's Advocate, Systems Thinker]

## Topic Cluster 04: Churn Risk, Passionate Minorities, and Niche Users

1. **Churn Risk Assessment and cascading user loss**: When we remove features, what's the expected churn from affected user segments — how do we identify "feature-dependent users" versus "feature-agnostic users," and what's the quantifiable trade-off between simplification and user loss in terms of lifetime value impact? Each feature cut might trigger abandonment from its passionate niche users, and cutting multiple features simultaneously could cause compounding churn. What's the maximum acceptable user loss we can sustain, and what contingency plans exist if simplification backfires? [Analyst, Devil's Advocate]

2. **Small but passionate user bases as leading indicators**: How might we identify which features have small but passionate user bases, and what do those users' experiences teach us about genuine value? A feature with only 2% adoption but 80% retention among those users could be a foothold into an underserved niche that will grow — or it could be a dead-end. What leading indicators would help us distinguish between "early adopters of the future core" and "enthusiastic users of a peripheral feature," and could these micro-communities reveal the app's true north? [Audience Advocate, Systems Thinker, Questioner]

3. **Migration with Grace**: Considering the small but passionate user bases for certain features, how might we honor their commitment while simplifying? What would a graceful transition look like — one that acknowledges their loyalty while guiding them toward the core value? What communication strategies or product choices might turn potential churn into deeper engagement? [Appreciative Inquirer]

4. **Are we designing for the wrong users?**: The 180K downloads with 8% retention means ~165K users have already churned — the current user base is the tail end of a leaky funnel, and the most engaged users are likely using a tiny subset of features. If we optimize for keeping current users happy, we may be optimizing for the survivors of a broken system — what would it look like to design for the users we *want* rather than the users we *have*? [Systems Thinker]

## Topic Cluster 05: Equity, Access, and Who Gets Heard

1. **Accessibility barriers across literacy, language, and ability**: Which features create barriers for users with different levels of tech literacy, language proficiency, or accessibility needs? An app with 15 features and complex navigation likely presents significant barriers — how might feature prioritization change if we centered users with limited digital literacy, non-English speakers, or users who rely on assistive technologies? [Audience Advocate]

2. **Redefining "essential" from the margins**: What might "essential" mean from the perspective of users with limited time, attention, or mental bandwidth? The team is thinking about essential features from a product strategy perspective, but what would essential mean to a single parent with 5 minutes to spare, or someone managing chronic illness who needs simple tracking without cognitive overload? How might the current notification and feature overload be disproportionately affecting certain user groups — are we driving away the very users who might benefit most from a simplified experience? [Audience Advocate]

3. **Power dynamics in feature prioritization**: What power dynamics are embedded in which features get considered "core" versus "nice-to-have"? Feature prioritization often reflects the perspectives of those with the loudest voices or most data visibility — whose needs and use cases might be systematically overlooked in determining what's "essential"? With only one PM on the team, who determines which user feedback matters — what guardrails can ensure this critical decision isn't essentially determined by one person's biases? [Audience Advocate, Devil's Advocate]

4. **Genuine user co-creation**: What would genuine user co-creation look like in determining which features survive and which don't? Rather than communicating decisions *after* they're made, how could the community be brought into the decision-making process in a way that respects their agency and acknowledges their investment in the app? [Audience Advocate]

## Topic Cluster 06: Incremental vs. Clean Relaunch Strategy

1. **Incremental vs. Big-Bang Transition Analysis**: What are the comparative risk profiles of gradual simplification versus clean relaunch — considering factors like user confusion, technical complexity, market perception, and team bandwidth, how do we model the probability distribution of outcomes for each approach? Why do we assume a clean relaunch is better than incremental simplification — what would happen if we removed one feature per month and measured the impact each time? [Analyst, Questioner]

2. **The "erosion of goals" risk in incremental approaches**: Incremental simplification feels safer but creates a self-reinforcing pattern of compromise: each round of cuts has to justify itself to existing users, so we keep "just one more feature," and the product never becomes truly focused. But a clean relaunch risks alienating all 180K users at once. The delay between relaunch and user re-acquisition means we won't know if we made the right call until months after the point of no return. [Systems Thinker]

3. **Questioning the relaunch assumption itself**: A "clean relaunch" assumes users will give us a second chance after we've burned them with a confusing first experience, but app stores are littered with "2.0" relaunches that failed because users had already moved on. What evidence suggests our existing user base will return, and are we over-indexing on retention versus acquisition of net-new users? [Devil's Advocate]

4. **Testing feature removal before committing**: What if we tested feature removal before committing to it? Could we ship a version with one feature temporarily disabled and see who complains — or who doesn't notice? How do we scientifically validate that our chosen 3-4 features actually represent the core value proposition — what experimental design allows us to test feature combinations without alienating users? [Questioner, Analyst]

## Topic Cluster 07: Communication, Trust, and the Feedback Loop

1. **Communication Strategy Framework**: Breaking down the user communication problem, what's the optimal sequence and messaging for announcing feature removal — how do we balance transparency and trust-building against minimizing churn, and what metrics tell us if we're getting this right? What would happen if we were transparent about our struggles — could we frame the simplification as "we're focusing on what matters most" rather than "we're taking things away"? [Analyst, Questioner]

2. **Rebuilding trust with burned-out users**: How might the team rebuild trust with users who feel burned by the app's current state? Users who stuck around despite poor experience may feel betrayed or skeptical — what would it take to demonstrate genuine commitment to their needs rather than just business survival? How might the relaunch be an opportunity to repair the relationship and invite burned-out users into a new chapter, designing a product *with* the community rather than *for* them? [Audience Advocate]

3. **Shifting the Burden in communication**: What communication strategy would minimize churn while preventing the "Shifting the Burden" pattern where external prompts replace intrinsic motivation? If we rely heavily on "we're simplifying for you" messaging and reassurance, users may become dependent on us to frame the change rather than discovering the value themselves — the short-term relief of clear communication could erode users' capacity to self-motivate around the new product. How do we communicate without creating dependency? [Systems Thinker]

4. **Experiencing reduction as simplification vs. loss**: How might users experience a feature reduction — as simplification or as loss? The team sees this as "refocusing," but users might experience it differently. What would it feel like to be a user who deeply relied on a now-removed feature, and how might we understand and address that experience of loss? [Audience Advocate]

## Topic Cluster 08: Team, Morale, and the Human Cost of Cutting

1. **Team's Brightest Moments and aligned vision**: Think about a time when this team felt most energized, proud, or effective — perhaps when shipping something that felt meaningful, or when user feedback validated their work. What conditions made that moment possible, and what strengths does each team member bring that could be amplified in a leaner environment? Given the team's existing strengths, what kind of simplified product would allow them to do their best work — a focus that would align with what they're already good at, making the simplification feel like liberation rather than loss? [Appreciative Inquirer]

2. **Team Reimagined — from burnout to craft**: Picture the engineering, design, and product team feeling energized, creative, and proud of their work — no longer burned out from maintaining 15 half-built features. What would their day-to-day look like? What kind of product culture would they be building? What kind of impact would they feel they were having on users' lives? [Appreciative Inquirer]

3. **Psychological impact of "killing darlings"**: If engineers have spent months or years building features that are now being deleted, how will they stay motivated to execute the relaunch — especially if the "core" features require them to work on code they didn't originally write? What mechanisms can rebuild psychological investment, and how do we help engineers and designers feel proud of simplification rather than feeling like they "failed" by building features that are now being cut? [Devil's Advocate, Questioner]

4. **False consensus in team decision-making**: A 6-engineer team likely has 6 different opinions about which features constitute the "core," and each person may unconsciously champion features they personally built or use. What decision framework could objectively identify core value without letting ownership bias or team politics drive the outcome? [Devil's Advocate]

5. **Turning defensive attachment into proactive pruning**: If people feel ownership over "their" features, they resist cuts, which maintains bloat, which increases maintenance burden, which lowers morale further. Conversely, if the team experiences the relief of a focused product, that success creates momentum for further simplification. What's the smallest intervention that could flip this dynamic from defensive attachment to proactive pruning? [Systems Thinker]

## Topic Cluster 09: Reinforcing Loops, System Dynamics, and Unintended Consequences

1. **Success to the Successful in the feature portfolio**: The current 15-feature structure creates a "Success to the Successful" dynamic where popular features get more attention and investment, which makes them more popular, while neglected features atrophy — but this self-reinforcing pattern may be amplifying the wrong things. How do we break out of this dynamic to see features that could be central but have been starved? [Systems Thinker]

2. **Fixes that Fail — ghost code and hidden complexity**: Features that look independent in the UI may share authentication, data models, notification systems, or analytics pipelines in the backend. Cutting a feature might leave ghost code that still runs or might break other features. This creates a "Fixes that Fail" pattern: we cut features to simplify the product, but the technical complexity remains — the team is now maintaining hidden code for features users can't even access. [Systems Thinker]

3. **The "simplify into nothing" trap**: If the current app offers 15 features and users are already frustrated with "overwhelming" complexity, what if the true issue isn't feature count but poor information architecture or onboarding? How do we distinguish between "overwhelming because too much" and "overwhelming because poorly designed" — and what if simplification means better UX design rather than fewer features, or better discoverability rather than removal? [Devil's Advocate, Questioner]

4. **The withdrawal period and competing loops**: What happens to user behavior during the 3-6 month period after feature removal when habits formed around removed features are still present but the features are gone? Users who built routines around the meal planner or meditation guide will experience a "withdrawal" period. This creates a balancing loop (frustration drives disengagement) competing with a virtuous cycle (if simplification is genuinely better, frustration transitions to relief) — what determines which loop dominates? [Systems Thinker]

5. **Preventing the "slow return to bloat"**: Six engineers maintaining 15 features are stretched thin, but six engineers maintaining 3 features suddenly have excess capacity. This creates both opportunity (each remaining feature can become dramatically better) and risk (scope creep, slowly adding features back). What structural constraints or processes would prevent the "slow return to bloat" pattern? [Systems Thinker]

## Topic Cluster 10: Peak Moments, Hidden Assets, and Experiments to Build On

1. **Peak User Experiences**: Tell me about a moment when a user genuinely loved this app — perhaps a session that went beyond 47 seconds, or a time someone told a friend about it. What exactly were they doing? What problem did the app solve so well that they felt grateful for it? How might we design the entire product to create more of those specific moments? [Appreciative Inquirer]

2. **Features That Sparked Joy**: Among the 15 features, there must be at least one that users responded to with enthusiasm or delight. Which feature elicited the most positive feedback, the most sustained engagement, or the strongest user loyalty? What made that feature resonate — the utility, the experience, the social connection, or something else entirely? [Appreciative Inquirer]

3. **Hidden Assets in User Base**: With 180K downloads, even with low retention, there are users who found value. Who are they? What specific use case or demographic found this app worthwhile? What might we learn from the 2% who show up daily — what are they doing that keeps them coming back? [Appreciative Inquirer]

4. **The App Users Champion (3-year vision)**: Imagine it's three years from now, and this app has become something users genuinely champion — not just use, but actively recommend to friends. What would users say about it? What specific feeling or outcome would they describe? How would it fit into their daily routine in a way that feels indispensable rather than overwhelming? [Appreciative Inquirer]

5. **Amplifying what already works**: Based on the features that already show promise, what structures, practices, or product principles would reliably amplify those strengths? For example, if the social connection features work best, what might the entire app look like if built around that core — and what technical, design, and product choices would make that focus successful? [Appreciative Inquirer]

6. **First Experiments and Building from Existing Assets**: What small, low-risk experiments could the team try this month to test which features truly represent the app's core value? What resources, capabilities, or assets are already in place — technical infrastructure, user insights, team skills, community relationships, learnings from the current feature set — that could accelerate the move toward a focused product and make the MVP reset feel like evolution rather than restart? [Appreciative Inquirer]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

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

**Synthesize stream**: 44 across 10 clusters
**Append stream**: 20 across 4 personas
**Combined total**: 64

**Structural check:**
- Cluster count: 10 (target: 9–11) — Within band
- Compaction ratio (Synthesize): 1.77× (target: 2.5–3.2×) — Out of band (under-compression; preserved distinct voices over aggressive merging, per prompt's "lean toward preserving distinct" guidance)
- AI orphan register floor: 6 AI orphan-register questions preserved (Peak User Experiences, Features That Sparked Joy, Hidden Assets, Users Champion, Team's Brightest Moments, Team Reimagined, Amplifying what works, First Experiments) — Met
- ST named-archetype floor: 3 verbatim archetypes preserved (Success to the Successful, Fixes that Fail, Shifting the Burden) — Met
- Dimension balance (S/T/C/A/H): 32/14/5/27/23 % — Strategic within 20–32% band (technical/regulated-product); Human-centered within 22–30% band — Within topic-typed bands
