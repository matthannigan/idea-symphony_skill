---
project-name: "Mobile App MVP Reset"
effort: "medium"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App MVP Reset

---

## Topic Cluster 01: Defining Core Value and the Product's True "Job"

1. **What does "core value" actually mean, and what job are users hiring the app to do?**: Is "core value" the most-used features, the features driving the most passionate engagement, or the underlying job users think they're solving when they download — and have we asked them directly? What does our product do that no other fitness app does, regardless of whether current usage data highlights it? [Questioner, Analyst]

2. **Is the category itself wrong?**: Why do we assume we need to be in the fitness app category at all — what if our actual value lies in an adjacent space (coaching, identity formation, ritual, micro-intervention) we've stumbled into accidentally, and would leaving the fitness framing unlock a truer core? [Questioner]

3. **The "One Thing" the app could become known for (AI orphan-register)**: If this app became known for doing one thing exceptionally well — the thing that makes users think "I can't live without this" — what would that be, how would that single focus shape every aspect of the product (onboarding, daily use, word-of-mouth), and what would users accomplish or feel here that they couldn't anywhere else? [Appreciative Inquirer]

4. **Does a unified "core value" even exist?**: What if retention is low not because the app is unfocused but because no single feature is good enough to compete with dedicated alternatives — is the real problem execution quality across all 15 features rather than scope, and would simplification leave us with nothing compelling? [Devil's Advocate]

---

## Topic Cluster 02: Feature Signal vs. Noise — What Data Can and Cannot Tell Us

5. **Distinguishing retention-driving features from churn-accelerating on-ramps (Success-to-the-Successful dynamic)**: Usage data is potentially misleading when 92% of users abandon within 30 days — features that look "popular" may merely be on-ramps to nowhere, while the current 15-feature structure creates a "Success-to-the-Successful" dynamic where already-popular features get more investment and neglected ones atrophy. How do we measure feature stickiness, dependency patterns, 30-day retention correlation, and detect whether core value is actually an unexpected combination of 2-3 features working together rather than any single feature in isolation? [Analyst, Devil's Advocate, Systems Thinker]

6. **Feature interaction, keystone features, and dependency mapping**: If we remove certain features, what's the structural impact on remaining functionality — which features have hidden dependencies that create cascading effects, and how do we identify "keystone features" whose removal would disproportionately harm the ecosystem? [Analyst]

7. **Small-but-passionate user bases: foothold to the future or dead-end niche?**: A feature with 2% adoption but 80% retention among those users could be a foothold into an underserved niche or a dead-end — what leading indicators distinguish "early adopters of the future core" from "enthusiastic users of a peripheral feature," and how do we identify these micro-communities before we cut features that drive away our most vocal advocates? [Systems Thinker, Questioner, Audience Advocate]

8. **Self-selection bias in who we listen to**: Users who respond to surveys or agree to interviews are likely the most engaged minority, risking overoptimization for power users while ignoring the 92% who silently leave. What research methods reach the majority without alienating the few who still care, and how do we avoid letting one PM's limited perspective determine "core value" for everyone? [Devil's Advocate]

9. **Is it bloat, or is it bad UX and discoverability?**: How do we distinguish "overwhelming because too much" from "overwhelming because poorly designed" — could better information architecture, onboarding, or feature discoverability be the fix rather than cutting features, and can we validate that simplification will improve retention before irreversibly removing features that might be working for some users? [Questioner, Devil's Advocate]

---

## Topic Cluster 03: User Segments, Equity, and Whose Needs Count

10. **Segmented cohorts, equity dimensions, and the power dynamics of "essential"**: What distinct user cohorts exist (e.g., social users, solo trackers, content consumers), which features serve as "gateway drugs" versus "retention anchors" for each — and whose needs get systematically overlooked when "essential" is defined by the loudest voices or the data visibility of power users? How might feature prioritization change if we centered users with limited tech literacy, non-English speakers, users relying on assistive technologies, single parents with 5 minutes, or people managing chronic illness who need low-cognitive-load tracking? [Analyst, Audience Advocate]

11. **Notification overload as disparate-impact lens (AA-distinctive)**: Users report "too many notifications," but which communities are disproportionately affected — are we driving away the very users who might benefit most from a simplified, focused experience, and whose experience of "overwhelm" is being flattened into an aggregate complaint? [Audience Advocate]

12. **Are current users the right audience for the simplified product?**: Why do we assume our existing user base is who the simplified product should serve — what if we're fundamentally pivoting to a different market and the current 180K downloads are the wrong signal to optimize against? [Questioner, Systems Thinker]

---

## Topic Cluster 04: Emotional Experience, Gaps, and Unarticulated Needs

13. **Gaps between stated wants and actual behavior, and unarticulated needs users have normalized**: The 47-second session and 2% DAU/MAU suggest users aren't engaging as intended — what do actual behavior patterns reveal about which features they value versus ignore, and what frustrations or workarounds have users accepted as "just how apps work" that could illuminate the app's true core value? [Audience Advocate]

14. **Emotional journey from open to close (AI peak-moments register)**: What exact emotional states do users move through from the moment they open the app — confusion, frustration, relief — and at what precise micro-moments do they decide to disengage? Tell me about a session that went beyond 47 seconds, a moment when a user genuinely loved this app or told a friend about it: what were they doing, what problem did it solve so well they felt grateful, and how might we design the product to create more of those specific moments? [Audience Advocate, Appreciative Inquirer]

15. **Simplification as loss, and rebuilding trust with burned users (AI-strengths register)**: How might users experience feature reduction — as simplification or as loss, particularly users who deeply relied on a now-removed feature — and what would it take to demonstrate genuine commitment to their needs rather than just business survival? Considering the small but passionate user bases, how might we honor their commitment with a graceful migration that turns potential churn into deeper engagement? [Audience Advocate, Appreciative Inquirer]

---

## Topic Cluster 05: Cutting Features — Risk, Cascades, and Technical Reality (Fixes-that-Fail)

16. **Cascading churn and the "simplify into nothing" risk**: Each feature cut might trigger abandonment from its passionate niche, and cutting several simultaneously could cause compounding churn beyond current attrition. What's the maximum acceptable user loss we can sustain, what contingency plans exist if simplification accelerates decline, and at what point does simplification trade long-term viability for short-term survival? [Devil's Advocate, Analyst]

17. **Fixes-that-Fail: when feature removal leaves technical debt behind**: Features that look independent in the UI may share authentication, data models, notification systems, or analytics pipelines in the backend — cutting a feature can leave ghost code (maintenance burden without user value) or break dependent features, creating a "Fixes-that-Fail" pattern where we cut features to simplify but the technical complexity remains. How do we measure which features are "delete-and-forget" versus "excise-carefully," and could removal cost consume the entire 8-month runway without delivering a working product? [Systems Thinker, Analyst, Devil's Advocate]

18. **Notification architecture as hidden dependency map**: Notifications are a symptom of feature interdependencies — each of the 15 features generates its own notification types. Could analyzing which notifications users actually engage with reveal which features are truly "core" versus peripheral, since features that don't generate meaningful notifications may be features users don't actually value? [Connector]

---

## Topic Cluster 06: Unit Economics, Runway, and Timing

19. **Unit economics, ROI of simplification, and runway trade-offs**: What's the cost structure per feature — engineering maintenance load, customer support burden, server costs, opportunity cost — and with 8 months of funding and a team of 8, what's the break-even analysis for different simplification strategies in terms of burn-rate reduction versus revenue/user impact risk? [Analyst]

20. **8-month runway as false constraint (delayed-feedback risk)**: Eight months sounds sufficient, but we won't know if the simplified product works until 3-6 months after launch — if feature removal uncovers hidden dependencies, requires database migrations, or triggers user backlash, we could run out of funding before launching anything viable. What's the minimum viable timeline, and at what point do we pivot to incremental simplification rather than a clean relaunch? [Devil's Advocate, Systems Thinker]

---

## Topic Cluster 07: Incremental vs. Big-Bang (Drifting Goals and Relaunch Risk)

21. **Incremental simplification vs. clean relaunch — and the "Drifting Goals" erosion pattern**: Incremental cuts feel safer but risk a "Drifting Goals" pattern where each round justifies itself to existing users and "just one more feature" creeps back in so the product never becomes truly focused; a clean relaunch risks alienating all 180K users at once. We could also test removal by shipping a version with one feature temporarily disabled to see who complains — what's the comparative risk profile (user confusion, market perception, team bandwidth), and what evidence suggests users will return for a "2.0" after being burned? [Analyst, Systems Thinker, Questioner, Devil's Advocate]

---

## Topic Cluster 08: Communication, Trust, and the Shifting-the-Burden Trap

22. **Communication strategy that avoids the Shifting-the-Burden trap**: What's the optimal sequence and messaging for announcing feature removal — balancing transparency and trust against minimizing churn — while avoiding a "Shifting-the-Burden" pattern where heavy "we're simplifying for you" reassurance erodes users' capacity to self-motivate and creates dependency on continual handholding? Could we reframe this as "focusing on what matters most" rather than "taking things away," and be transparent about our struggles? [Analyst, Systems Thinker, Questioner]

23. **User co-creation rather than post-hoc announcement**: Rather than communicating decisions after they're made, how could the community be brought into the decision-making process in a way that respects their agency and acknowledges their investment — and could the relaunch become a moment to invite users into a new chapter, designing *with* the community rather than *for* them? [Audience Advocate]

---

## Topic Cluster 09: Metrics, Validation, and Success Definition

24. **Redefining the north star — engagement vs. value delivered**: The current metrics (2% DAU/MAU, 47-second sessions, 8% retention) signal product-market fit failure, but engagement isn't the same as value delivered — a simpler app might have shorter sessions because users accomplish what they need faster, which looks "worse" on metrics but is actually better design. What leading indicators should we target, what would a metric that captures core-value delivery look like, and how do we avoid the perverse incentive where bloat inflates engagement numbers? [Analyst, Systems Thinker]

25. **Experimental validation before commitment**: How do we scientifically validate that our chosen 3-4 features represent the core value proposition — what experimental design tests feature combinations without alienating users, what statistical thresholds should we set, and could we use small low-risk experiments this month that make users feel part of the product's evolution rather than subjects of it? [Analyst, Appreciative Inquirer, Questioner]

26. **Post-launch validation: mourning vs. fit vs. wrong problem**: Once we relaunch, what early-warning signs and success metrics should we monitor at 30, 60, and 90 days, and how do we distinguish "users mourning removed features" from "genuine product-market fit" from "we solved the wrong problem"? [Analyst]

---

## Topic Cluster 10: Team Morale, Capacity, and the Pruning Paradox

27. **Team morale through "killing darlings" and rebuilding psychological ownership (AI-strengths register)**: How do we help engineers and designers feel proud of simplification rather than feeling like they "failed" by building features now being cut — especially when the remaining features require working on code they didn't author? Picture the team energized, creative, and proud, no longer burned out from maintaining 15 half-built features: what product culture would they build, what strengths would each of the six engineers, one designer, and one PM bring that a leaner environment would amplify, and what mechanisms can rebuild psychological investment after a round of cuts? [Questioner, Devil's Advocate, Appreciative Inquirer, Systems Thinker]

28. **Preventing the slow return to bloat after simplification**: Six engineers maintaining 3 features instead of 15 suddenly have excess capacity — a self-amplifying opportunity for each remaining feature to become dramatically better, but also a risk of scope creep where the team slowly adds features back. What structural constraints or processes would prevent the "slow return to bloat" pattern, and what would a product focus look like that aligns with the team's existing strengths so simplification feels like liberation rather than loss? [Systems Thinker, Appreciative Inquirer]

---

## Topic Cluster 11: Competitive Position and Growth After Simplification

29. **Marketing-delivery alignment and the promise-of-breadth trap**: The bloated app attracts users by promising everything, which sets unrealistic expectations and leads to disappointment. If marketing still emphasizes breadth after simplification, users will feel betrayed when the app only does 2-3 things — alignment requires turning away users who want what we no longer offer. What growth strategy accepts this constraint rather than fighting it, and where are the inflection points in the transition curve? [Systems Thinker]

30. **Looking feature-poor while competitors add features — worse-before-better?**: Competitors keep adding features and marketing emphasizes "more stuff" — if we strip down, we'll look feature-poor on comparison charts and may lose short-term downloads, but simplicity may create compounding retention advantage through word-of-mouth. Is the delay short enough that we survive the transition? [Systems Thinker]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if you kept exactly ONE feature and made it absurdly worse?**: Imagine you stripped the app down to just workout tracking, but then removed all logging, history, progress visualization, and data—leaving only the immediate act of pressing a button that says "I worked out" before the app closes itself. What would this useless button reveal about what users actually crave from the tracking experience? *The real insight: is the value in the data or in the ritual of acknowledgment?*

2. **What if your 180K downloads were 180K different people who never opened the app twice?**: Imagine the retention disaster is actually a feature—your app is designed for single-use transformation, like a ceremonial rite of passage after which users are "graduated" and should never return. How would you redesign the onboarding experience to complete someone's entire fitness journey in 47 seconds? *The real insight: what if the lifetime value model is wrong for this problem and the real opportunity is in perfect, self-contained moments?*

3. **What if you had to explain this app to someone from 1995 who has never seen a mobile phone?**: They understand "fitness," "food," "friends," and "shopping" as physical, non-digital experiences. As you describe your app, which features make sense in their world and which become meaningless? What does the alien-ness of "social fitness" or "digital meal planning" reveal about assumptions you've never questioned? *The real insight: which parts of your product exist only because they're possible in software, not because they actually solve human problems?*

4. **What if the app did nothing but DELETE features for the next 8 months?**: Every week, one feature disappears permanently with no replacement, no explanation, and no user choice—until month 9 when the app becomes entirely blank. What would user behavior and retention patterns in this controlled demolition reveal about which features create genuine dependence versus which create mere noise? *The real insight: what if feature removal itself—rather than the final simplified state—was the product experience that taught you what matters?*

5. **What if the 2% who actually use the app daily are the problem, not the solution?**: Imagine your power users are actually tumors—pathological attachments to features that represent the app's worst impulses, and their retention is preventing the product from evolving into something healthy for normal humans. What would happen if you actively tried to drive away your most engaged users? *The real insight: what if your retention metrics are optimized for a tiny minority of freak users while everyone else is correctly recognizing that the product doesn't serve them?*

### Storyteller (Append)

1. **What would the "first five minutes" experience look like for a returning user who opens the simplified app for the first time, and what emotional state should we be designing toward?**: Imagine it's Tuesday morning and Sarah, who previously faced 15 features and 6 navigation tabs, opens the new version. Walk through what she sees, what she feels, and what she can accomplish in those critical first minutes. How do we ensure the transition from confusion to clarity happens within a single session? What does "success" look like in that first interaction—should she feel relief, excitement, curiosity, or something else entirely?

2. **What would a "day in the life" of a power user look like if the app successfully delivered on its core promise with just 3-4 features, and how would that differ from their current experience of fragmented engagement across 15 half-baked tools?**: Paint the picture of someone who currently spends 47 seconds per session bouncing between features, trying to extract value from a buffet of mediocrity. Now show us what their day becomes when the app provides one or two moments of genuine delight or utility, and how those moments compound into daily habit formation. What does the notification ecosystem look like when you're not fighting for attention across 15 features, and how does the user's relationship with the app fundamentally change?

3. **What does the "funeral" scene look like when the team decides which features to cut, and how can we turn a potentially demoralizing process into a moment of clarity and shared purpose?**: Imagine the product owner standing at the whiteboard with 15 feature cards, knowing that 11 of them are about to be "killed." How does that conversation unfold? What frameworks or rituals could transform this from a series of painful decisions into a collective act of strategic vision? How do we ensure that every person in that room—whether they built the meditation guide or the friend finder—leaves feeling energized about the new direction rather than mourning their specific contribution? What narrative about the company's future could make sacrificing the present feel like a victory rather than a loss?

4. **How might the "moment of deletion" unfold for different types of users when features they've incorporated into their routines disappear, and what narrative threads could help them feel excited rather than abandoned?**: Consider Marcus, who uses the supplement store feature weekly, versus Priya, who relies on the progress journal as her primary touchpoint. When they open the simplified app and discover these features gone, what happens in the seconds before they either delete the app or give the new version a chance? What story could the app tell them in that moment—and through what channels (push notifications, onboarding, email, in-app messaging)—that would transform a sense of loss into curiosity about the newly focused experience?

5. **How might the press release, app store description, and launch announcement tell a story that frames simplification as innovation rather than retreat, and what metaphors or analogies would help users and investors see this as a bold step forward?**: Consider the difference between "we're removing features because we couldn't make them work" versus "we've discovered what users actually need, and we're cutting away everything else." What story positions this as the company's bravest decision rather than its most desperate? How do we communicate to new users that this simplified version isn't a downgrade, but rather the first version of the product that actually works? What cultural references or parallels—from other companies, from product design history, from everyday life—could make this pivot feel obvious and inevitable in retrospect?

### Visionary (Append)

1. **[What if fitness wasn't something you track, but something that emerges naturally through a fundamentally different relationship with your body?]**: Instead of asking which features to keep or cut, what if we completely reimagined the category: What would a fitness product look like if it were designed around joy, emergence, and organic behavior change rather than metrics, tracking, and discipline? What if the core value isn't "helping people work out" but something entirely different that doesn't have a current analog in the fitness app space?

2. **[What if user retention isn't about features at all, but about identity transformation — and what if we designed for that psychological shift instead of for engagement?]**: Consider that the 2% DAU/MAU ratio might not be a feature problem but an identity problem: users don't see themselves as "people who use this app." What if we completely rethought onboarding, not as a tutorial, but as an identity-forming ritual that fundamentally reshapes how users view themselves? What would an app look like if its primary function was identity construction rather than fitness tracking?

3. **[What if the 47-second average session isn't a problem to be solved, but the actual product — and what if we leaned into that rather than trying to extend engagement?]**: What would it mean to embrace the micro-session pattern and design something that delivers maximum value in under a minute? Could this become a fundamentally new product category — the "instant fitness intervention" that exists in the interstitial moments of daily life? What if the app's role isn't to occupy attention but to punctuate it with brief, transformative experiences?

4. **[Imagine if the app could disappear entirely as an interface and instead become a presence that anticipates and supports without requiring active engagement?]**: What would it mean to invert the relationship between user and app — where the app exists not as something you open, but as something that works on your behalf in the background, creating interventions at the moment they're needed without requiring you to navigate tabs or manage features? What would a zero-UI fitness product look like?

5. **[What if we didn't just cut features, but fundamentally altered the architecture of value creation — moving from a "feature buffet" to a "guided journey" with no user choice at all?]**: Consider inverting the relationship between user and product: instead of giving users options and features to navigate, what if the product became a curated experience that makes every decision for you based on inferred goals and context? What would a fitness product look like if it had no menus, no settings, no choices — just a seamless, personalized path that unfolds based on who you are and what you need?

### Connector (Append)

1. **Feature pruning as ecosystem succession**: The challenge of cutting features mirrors ecological succession, where crowded ecosystems self-thin to let dominant species thrive. In forest ecology, "self-thinning" creates space for the strongest organisms to flourish. What if we viewed the 15 features as competing species in an ecosystem — how would we identify which features are the "keystone species" whose presence enables the entire ecosystem to function, and which are the invasive species crowding out the core value?

2. **Museum curation as a model for feature preservation**: When museums face space constraints, they don't simply throw away lesser works — they rotate collections, loan to other institutions, or create digital archives. The 15 features likely each have some users (even if small). Rather than binary keep/kill decisions, what if we borrowed from museum curation practices: could some features be "rotated out" (temporarily disabled but preserved), "loaned" (spun off as separate apps), or "digitized archived" (export functionality for power users while removing from core experience)?

3. **The retention-burnout feedback loop**: These seem like separate problems: user retention is 8% and the team is burned out. But there's a structural parallel here — both users and the team are experiencing cognitive overload from the same source: the 15-feature sprawl. This suggests that solving the user retention problem (simplifying the experience) might simultaneously solve the team burnout problem (simplifying the codebase and maintenance burden). If we view these as one problem manifesting in two stakeholder groups, what does that reveal about prioritization — should features be evaluated based on their compound cost (user confusion + team maintenance) rather than user value alone?

4. **The IKEA effect paradox in user attachment**: There's a structural parallel between users attached to niche features and the psychological phenomenon known as the IKEA effect — people overvalue things they've invested effort in building or using. But behavioral economics also shows the "endowment effect" creates irrational attachment to things simply because we own them. How do we distinguish between genuine value-creating features and features users are irrationally attached to due to sunk-cost fallacy — and could we borrow techniques from "loss aversion" research to help users let go without feeling betrayed?

5. **UI complexity as information entropy**: Information theory uses entropy to measure uncertainty and complexity in communication systems. The current app's 6 navigation tabs plus hamburger menu represents high interface entropy — users must process too much information before finding value. Claude Shannon's work showed that reducing noise increases signal transmission. If we treated every UI element as adding "noise" to the user's cognitive load, what entropy-reduction principles from information theory could guide which elements are signal (essential) versus noise (eliminable)?

---

**Synthesize stream**: 30 across 11 clusters
**Append stream**: 20 across 4 personas
**Combined total**: 50
