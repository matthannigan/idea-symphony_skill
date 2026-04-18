---
project-name: "Mobile App Simplification"
effort: "low"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App Simplification

---

## Topic Cluster 01: Defining Core Value and the "One Thing"

1. **What "core value" actually means**: What does "core value" mean in practice for this app — the features most people use, the features that create passionate engagement, or the underlying job users hired us to do when they downloaded it? How do we distinguish between stated preferences ("too many features") and revealed behaviors, and are we even sure we should remain in the fitness app category rather than an adjacent space we've accidentally stumbled into? [Questioner, Audience Advocate]

2. **The "one thing" evolution and true differentiator**: If this app became known for doing one thing exceptionally well — the thing that makes users think "I can't live without this" — what would that be, and what is our true differentiator if we couldn't see any usage data at all? How would that single focus shape onboarding, daily use, and word-of-mouth, and what would users accomplish or feel that they couldn't elsewhere? [Appreciative Inquirer, Questioner]

3. **Core feature isolation and self-reinforcing loops**: What quantitative framework should we use to rank the 15 features by true value delivery — distinguishing correlation (features associated with retention) from causation (features that actually drive retention), and which features, if executed exceptionally well, would create a self-reinforcing engagement loop where users' outcomes attract more users and generate network effects? Which are merely additive without compounding dynamics? [Analyst, Systems Thinker]

## Topic Cluster 02: Evidence, Usage Data, and Feature Value

4. **Feature popularity vs. feature value with retention-driver decomposition**: The 8% 30-day retention suggests usage data is potentially misleading — features used early by churning users may appear "popular" while actually being on-ramps to nowhere. What cohort analysis would reveal retention curves within each feature, where are the steepest drop-offs in the onboarding-to-habit pipeline, and how can we distinguish features that drive retention from those that merely attract initial engagement before users quit? [Analyst, Devil's Advocate]

5. **DAU/MAU diagnostic and 47-second sessions**: A 2% DAU/MAU ratio and 47-second average sessions suggest sessions are not sticky — what behavioral sequence analysis would reveal whether users are failing to find what they need, completing tasks too quickly (indicating low depth), or bouncing due to decision paralysis? How does this pattern vary by user segment, and what fundamental human needs might we be failing to meet that users may not realize could be addressed differently? [Analyst, Audience Advocate]

6. **Feature interdependency and keystone mapping**: Before cutting any feature, what is the complete causal chain showing how its removal affects others — both obvious dependencies (data sharing, navigation) and subtle reinforcing patterns (on-ramps that introduce users to other features, data powering recommendations)? Which features create synergistic network effects that would be lost if eliminated, and are there "keystone features" whose removal would cause disproportionate system collapse? [Analyst, Systems Thinker]

7. **Dormant gems and data-informed reduction blind spots**: If we use retention data to identify core features, what reinforcing loops might this create — could low engagement on a feature simply reflect poor discoverability in the bloated interface rather than lack of intrinsic value? What methods would reveal "dormant gems" (features that would thrive if liberated from interface clutter), and how do we distinguish "overwhelming because too much" from "overwhelming because poorly designed"? [Systems Thinker, Questioner]

## Topic Cluster 03: Hidden Assets, Peak Moments, and Passionate Users

8. **Peak user experiences and hidden user assets**: Tell me about moments when users genuinely loved this app — sessions beyond 47 seconds, times someone told a friend. What exactly were they doing, what problem was solved so well they felt grateful, and among the 180K downloads, who are the 2% showing up daily and what are they doing that keeps them coming back? How might we design the entire product to create more of those specific moments? [Appreciative Inquirer]

9. **Features that sparked joy**: Among the 15 features, at least one must have elicited enthusiasm, sustained engagement, or strong loyalty. Which feature resonated most, and what made it work — the utility, the experience, the social connection, or something else entirely? [Appreciative Inquirer]

10. **Passionate minority valuation and cascade dynamics**: For features with small but passionate user bases (say, <5% of users but 80% engagement within that segment), what is the analytical framework for determining whether they represent a defensible niche worth preserving, a distraction to be cut, or an opportunity to spin off — and when we remove them, what are the second- and third-order consequences (departing users taking friends, user-generated content, community moderation contributions) that could trigger a death-spiral cascade through the social ecosystem? [Analyst, Systems Thinker, Devil's Advocate]

## Topic Cluster 04: User Experience, Equity, and Accessibility

11. **First 30 seconds and navigation complexity across diverse users**: What does the first 30 seconds feel like for a new user expecting a fitness tracker but encountering 15 features, and how does the current 6-tab-plus-hamburger navigation differ for users with varying digital literacy, visual impairments, or cognitive processing differences? Map the cognitive load, the emotional journey from excitement to overwhelm, and whether complexity itself creates barriers that exclude entire segments from a simplified fitness experience. [Audience Advocate]

12. **User archetypes, limited-bandwidth users, and who we leave behind**: What different user archetypes are currently served (or underserved) by the 15 features — the social butterfly who loves challenges versus the privacy-focused person who just wants workouts — and how would a "do one thing well" approach actually serve people dealing with stress, burnout, limited time or mental bandwidth? If we cut to 3-4 features, who are we leaving behind, and is that acceptable? [Audience Advocate]

13. **Notifications, agency, and user voice in simplification decisions**: What power dynamics exist when a product team decides which features matter, and how do current notification patterns affect users' sense of agency and control? What mechanisms (surveys, interviews, beta testing, advisory boards) would ensure user voices shape the core-value decision rather than top-down assumptions — designing this simplification *with* users rather than *for* them? [Audience Advocate]

## Topic Cluster 05: Risks, Failure Modes, and the Relaunch Assumption

14. **The "simplify into nothing" trap and assumption of unified core value**: If users are frustrated with "overwhelming" complexity, what if the true issue isn't feature count but poor information architecture, onboarding, or feature discoverability? What if retention is low not because the app is unfocused but because no single feature is good enough to compete with dedicated alternatives — could the real problem be execution quality across all features, such that simplification would leave us with nothing compelling? [Devil's Advocate, Questioner]

15. **The relaunch assumption and churn risk modeling**: A "clean relaunch" assumes users will give us a second chance, but app stores are littered with "2.0" relaunches that failed because users moved on. What evidence suggests our existing user base will return versus being fundamentally the wrong audience for the simplified product (implying a pivot to a different market)? For each feature on the chopping block, what is the expected churn rate, how do we distinguish transient churn from permanent alienation of power users, and what is the maximum acceptable user loss we can sustain? [Devil's Advocate, Analyst, Questioner]

16. **Self-selection and one-PM decision-making bias**: Users who respond to surveys or interviews are likely the most engaged minority, risking overoptimization for power users while ignoring the 92% who leave. With only one PM determining which feedback matters and what "core value" means, what research methods can help us understand why the majority abandon the app — and what guardrails ensure this decision isn't essentially driven by one person's biases or by a 6-engineer team's ownership politics around features they personally built? [Devil's Advocate]

## Topic Cluster 06: Team, Runway, and Execution Strategy

17. **Incremental vs. clean slate methodology and the 8-month runway**: How should we structure the decision between incremental simplification (removing one feature per month and measuring each time) versus clean relaunch, given that feature removal could uncover hidden dependencies, require database migrations, or trigger backlash that consumes the entire 8-month runway? At what point do we pivot to incremental simplification instead, and could we test feature removal by temporarily disabling a feature to see who complains or doesn't notice? [Analyst, Devil's Advocate, Questioner]

18. **Technical debt as a balancing loop**: Removing deeply integrated features could create more bugs than maintaining them — what is the unit economics of feature removal (engineering maintenance cost per month, cognitive load reduction, performance improvement) weighed against short-term implementation cost, and what feedback loops does each choice create between surgical extraction (expensive now, cleaner long-term) versus abandon-in-place (cheap now, accumulating cruft that paradoxically makes future simplification harder)? [Analyst, Systems Thinker, Devil's Advocate]

19. **Team capacity, morale, and psychological investment after "killing darlings"**: With 6 engineers, 1 designer, and 1 PM burned out maintaining 15 half-built features, how do we redeploy capacity without creating new bloat or undermining iteration — and how do engineers stay motivated executing a relaunch that deletes code they built, working on features they didn't originally own? What mechanisms rebuild psychological investment, and how do we help team members feel proud of simplification rather than feeling they "failed"? [Analyst, Devil's Advocate, Questioner]

## Topic Cluster 07: Aspirational Vision and Team Energy

20. **The app users champion and team reimagined**: Imagine three years from now: users actively recommend this app — what specific feeling or outcome do they describe, how does it fit into their daily routine in a way that feels indispensable rather than overwhelming, and what would the engineering, design, and product team's day-to-day look like when they're energized, creative, and proud rather than burned out? What product culture would they be building? [Appreciative Inquirer]

21. **Team-aligned product vision and amplifying what works**: Given the team's existing technical capabilities, design sensibilities, and domain expertise, what simplified product focus would allow them to do their best work — making simplification feel like liberation rather than loss? Based on the features already showing promise, what structures, practices, or product principles would reliably amplify those strengths (for example, if social connection features work best, what would the entire app look like if built around that core)? [Appreciative Inquirer]

## Topic Cluster 08: Migration, Communication, and Transition

22. **Migration with grace and honoring existing routines**: How might we honor the commitment of passionate niche users and users who've built routines around specific features while simplifying — what does a graceful transition look like that acknowledges their loyalty while guiding them toward the core value? What communication strategies, transparency, timelines, and support would preserve trust and turn potential churn into deeper engagement rather than making users feel abandoned or betrayed? [Appreciative Inquirer, Audience Advocate]

23. **Communication-fragmentation feedback loop and transparency framing**: The simplification message itself creates a system — how we announce changes, how early adopters react, how sentiment spreads through reviews and social media, and how that influences retention of fence-sitters and future product decisions. What are the leverage points, and could we frame this as "we're focusing on what matters most" rather than "we're taking things away" to shift the feedback loop? [Systems Thinker, Questioner]

## Topic Cluster 09: Metrics, Experiments, and Guardrails for the Future

24. **Success metric realignment and leading indicators**: Current metrics (downloads, 30-day retention, DAU/MAU, session length) were designed for a bloated engagement-maximizing app — a focused utility might have shorter sessions but higher retention. What new leading micro-metrics would signal users are finding the core value within their first week, what feedback loops would the new metric system create, and what are the risks of measuring the new product with old rulers? [Analyst, Systems Thinker]

25. **First experiments and user-involving tests**: What small, low-risk experiments could the team run this month to test which features truly represent core value — what would you measure, and how would you engage users in these experiments so they feel part of the product's evolution rather than subjects of it? [Appreciative Inquirer]

26. **Simplification-creep vigilance and user-adapted behaviors**: Every product adds features over time through a reinforcing loop driven by competitive pressure and user requests — what early-warning systems or structural constraints (e.g., a "zero-sum feature budget" where adding requires removing) could resist feature creep? And when we do remove features, what compensatory adaptations should we anticipate (users flooding challenge platforms with social posts if the feed is cut, cluttering forums with transaction requests if the marketplace is eliminated) that could undermine simplification? [Systems Thinker]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if you kept exactly ONE feature and made it absurdly worse?** Imagine you stripped the app down to just workout tracking, but then removed all logging, history, progress visualization, and data—leaving only the immediate act of pressing a button that says "I worked out" before the app closes itself. What would this useless button reveal about what users actually crave from the tracking experience? *The real insight: is the value in the data or in the ritual of acknowledgment?*

2. **What if your 180K downloads were 180K different people who never opened the app twice?** Imagine the retention disaster is actually a feature—your app is designed for single-use transformation, like a ceremonial rite of passage after which users are "graduated" and should never return. How would you redesign the onboarding experience to complete someone's entire fitness journey in 47 seconds? *The real insight: what if the lifetime value model is wrong for this problem and the real opportunity is in perfect, self-contained moments?*

3. **What if the 2% who actually use the app daily are the problem, not the solution?** Imagine your power users are actually tumors—pathological attachments to features that represent the app's worst impulses, and their retention is preventing the product from evolving into something healthy for normal humans. What would happen if you actively tried to drive away your most engaged users? *The real insight: what if your retention metrics are optimized for a tiny minority of freak users while everyone else is correctly recognizing that the product doesn't serve them?*

### Storyteller (Append)

1. **What would the "first five minutes" experience look like for a returning user who opens the simplified app for the first time, and what emotional state should we be designing toward?** Imagine it's Tuesday morning and Sarah, who previously faced 15 features and 6 navigation tabs, opens the new version. Walk through what she sees, what she feels, and what she can accomplish in those critical first minutes. How do we ensure the transition from confusion to clarity happens within a single session? What does "success" look like in that first interaction—should she feel relief, excitement, curiosity, or something else entirely?

2. **How might the engineering team's daily work life transform when they shift from maintaining 15 half-built features to perfecting 3-4 world-class experiences, and what "micro-moments" of professional satisfaction will replace the current burnout cycle?** Walk us through the standup meeting six months from now. What language are engineers using to describe their work? How do conversations about quality, testing, and user feedback change when they're not spread thin across a feature graveyard? What moments of pride—seeing a user review, watching usage metrics, shipping a polished experience—replace the current reality of constant bug fixes and technical debt management? How does the team's relationship with the codebase itself evolve when they're not afraid to touch it?

3. **How might the press release, app store description, and launch announcement tell a story that frames simplification as innovation rather than retreat, and what metaphors or analogies would help users and investors see this as a bold step forward?** Consider the difference between "we're removing features because we couldn't make them work" versus "we've discovered what users actually need, and we're cutting away everything else." What story positions this as the company's bravest decision rather than its most desperate? How do we communicate to new users that this simplified version isn't a downgrade, but rather the first version of the product that actually works? What cultural references or parallels—from other companies, from product design history, from everyday life—could make this pivot feel obvious and inevitable in retrospect?

### Visionary (Append)

1. **[What if fitness wasn't something you track, but something that emerges naturally through a fundamentally different relationship with your body?]** Instead of asking which features to keep or cut, what if we completely reimagined the category: What would a fitness product look like if it were designed around joy, emergence, and organic behavior change rather than metrics, tracking, and discipline? What if the core value isn't "helping people work out" but something entirely different that doesn't have a current analog in the fitness app space?

2. **[What if user retention isn't about features at all, but about identity transformation — and what if we designed for that psychological shift instead of for engagement?]** Consider that the 2% DAU/MAU ratio might not be a feature problem but an identity problem: users don't see themselves as "people who use this app." What if we completely rethought onboarding, not as a tutorial, but as an identity-forming ritual that fundamentally reshapes how users view themselves? What would an app look like if its primary function was identity construction rather than fitness tracking?

3. **[What if the 47-second average session isn't a problem to be solved, but the actual product — and what if we leaned into that rather than trying to extend engagement?]** What would it mean to embrace the micro-session pattern and design something that delivers maximum value in under a minute? Could this become a fundamentally new product category — the "instant fitness intervention" that exists in the interstitial moments of daily life? What if the app's role isn't to occupy attention but to punctuate it with brief, transformative experiences?

### Connector (Append)

1. **Feature pruning as ecosystem succession** The challenge of cutting features mirrors ecological succession, where crowded ecosystems self-thin to let dominant species thrive. In forest ecology, "self-thinning" creates space for the strongest organisms to flourish. What if we viewed the 15 features as competing species in an ecosystem — how would we identify which features are the "keystone species" whose presence enables the entire ecosystem to function, and which are the invasive species crowding out the core value?

2. **Museum curation as a model for feature preservation** When museums face space constraints, they don't simply throw away lesser works — they rotate collections, loan to other institutions, or create digital archives. The 15 features likely each have some users (even if small). Rather than binary keep/kill decisions, what if we borrowed from museum curation practices: could some features be "rotated out" (temporarily disabled but preserved), "loaned" (spun off as separate apps), or "digitized archived" (export functionality for power users while removing from core experience)?

3. **The retention-burnout feedback loop** These seem like separate problems: user retention is 8% and the team is burned out. But there's a structural parallel here — both users and the team are experiencing cognitive overload from the same source: the 15-feature sprawl. This suggests that solving the user retention problem (simplifying the experience) might simultaneously solve the team burnout problem (simplifying the codebase and maintenance burden). If we view these as one problem manifesting in two stakeholder groups, what does that reveal about prioritization — should features be evaluated based on their compound cost (user confusion + team maintenance) rather than user value alone?

---

**Synthesize stream**: 26 questions across 9 clusters
**Append stream**: 12 questions across 4 personas
**Combined total**: 38
