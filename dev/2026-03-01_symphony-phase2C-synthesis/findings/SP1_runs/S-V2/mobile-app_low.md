---
project-name: "Mobile App Simplification"
effort: "low"
stage: "Phase 2: Question Synthesis (SP1 test run)"
---

# Brainstorming Questions: Mobile App Simplification

---

## Topic Cluster 01: Defining Core Value and the "One Thing"

1. **What "core value" actually means**: Before choosing features, interrogate the definition itself — are we looking for features with the broadest usage or those driving the most passionate engagement, and have we asked users directly what job they hired the app to do? The Questioner's framing of "which job users are hiring us to do" sits alongside the Appreciative Inquirer's aspirational "one thing evolution" — the single thing the app could become known for doing exceptionally well such that users say "I can't live without this." [Questioner, Appreciative Inquirer]

2. **True differentiator without usage data**: How would we identify our genuine differentiator if we couldn't see any retention numbers — what does this product do that no other fitness app does, regardless of current user prioritization? Combine with the assumption-testing frame: a unified "core value" may not even exist, and low retention may reflect execution quality across all features rather than lack of focus, which would mean simplification leaves us with nothing compelling. [Questioner, Devil's Advocate]

3. **Peak user experiences as design anchors**: Tell the story of a moment when a user genuinely loved this app — a session beyond 47 seconds, a recommendation to a friend, a problem solved so well they felt grateful. What exactly were they doing? The Appreciative Inquirer's strengths-based framing asks how we design the whole product to create more of those specific moments, while the Analyst would want cohort-level retention decomposition of which features show the steepest drop-off points in the onboarding-to-habit formation pipeline. [Appreciative Inquirer, Analyst]

4. **Hidden assets in the existing user base**: With 180K downloads and 8% retention, who are the users who found value, and what might we learn from the 2% who show up daily? Pair this Appreciative Inquirer "hidden assets" inquiry with the Analyst's passionate-minority framework: for features with small but passionate user bases (<5% of users, 80% engagement within), what analytical approach determines whether they represent a defensible niche, a distraction, or a spin-off opportunity? [Appreciative Inquirer, Analyst]

---

## Topic Cluster 02: Diagnosing What "Overwhelming" Really Means

5. **Unpacking the "overwhelming" signal**: When users say the app is "overwhelming," are they referring to feature count, cognitive load, decision paralysis, or something else — and how would we know the difference without asking? The Audience Advocate surfaces the gap between what users articulate ("too many features") and what they actually experience ("I can't find what I need"), while the Questioner challenges whether the problem is "overwhelming because too much" or "overwhelming because poorly designed" — simplification as better UX rather than fewer features. [Audience Advocate, Questioner]

6. **First-30-seconds experience and accessibility**: What does the first 30 seconds feel like for a new user expecting a fitness tracker but encountering 15 features across 6 tabs plus a hamburger menu? Map the emotional arc from excitement to overwhelm, and extend to the structural-equity dimension: how does this experience differ for users with varying digital literacy, visual impairments, or cognitive processing differences — does the complexity itself create documentation barriers and cultural-inclusion failures that exclude entire segments who might benefit? [Audience Advocate]

7. **Feature popularity vs. feature value**: The 8% retention rate means usage data is potentially misleading — features used early by churning users may appear "popular" while actually being on-ramps to nowhere. How do we distinguish features that drive retention from those that merely attract initial engagement? Pair with the discoverability question: we may be looking at a dormant-gems problem where low engagement reflects poor discoverability in a bloated interface rather than lack of intrinsic value. [Devil's Advocate, Questioner]

---

## Topic Cluster 03: Whose Voice Shapes the Decision

8. **Power dynamics in deciding what matters**: What power dynamics exist when a product team decides which features matter, and how can we involve users in determining the app's core value rather than making top-down assumptions? The Audience Advocate frames this as a structural-equity concern about designing with users rather than for them. The Devil's Advocate sharpens it: with only one PM, one person's biases and limited perspective could determine "core value," and survey-respondents skew toward the engaged minority — self-selection bias means we risk over-optimizing for power users while ignoring the 92% who churn. [Audience Advocate, Devil's Advocate]

9. **False consensus on the team**: A 6-engineer team likely has 6 different opinions about "core," with each person unconsciously championing features they built. What decision framework could objectively identify core value without letting ownership bias or team politics drive the outcome? The Questioner extends: how do we help engineers feel proud of simplification rather than feeling they "failed" by building features now being cut? [Devil's Advocate, Questioner]

---

## Topic Cluster 04: Feature Interdependencies and Removal Cascades

10. **Keystone features and dependency mapping**: Before cutting any feature, what is the complete causal chain showing how its removal affects other features — both obvious dependencies (data sharing, navigation pathways) and subtle reinforcing patterns (on-ramp features, features whose data powers others)? The Systems Thinker names this keystone-feature analysis, while the Analyst frames it as feature cannibalization analysis: does the workout tracker reduce coaching usage because users feel they can "go it alone," and how do we measure whether simplification increases total engagement rather than reducing it? [Systems Thinker, Analyst]

11. **Feature-loss cascade and Shifting-the-Burden dynamics**: When you remove features with passionate but small user bases, what are the second- and third-order consequences? Some users leave immediately, but what about network effects — departing users taking friends, user-generated content, community moderation contributions? The Systems Thinker flags this as a potential Shifting-the-Burden archetype where quick simplification shifts the burden onto remaining infrastructure, while the Devil's Advocate warns of cascading user loss: cutting multiple features could cause compounding churn, and we need a maximum-acceptable-user-loss threshold and contingency plans. [Systems Thinker, Devil's Advocate]

12. **Compensatory user behavior**: How will existing users adapt to feature removal, and what unintended consequences emerge? If you cut the social feed, will users flood the challenge platform with social posts? If you eliminate the marketplace, will they clutter community forums with transaction requests? What Fixes-that-Fail pattern should we anticipate, where our simplification spawns workarounds that re-create complexity in unsanctioned corners of the app? [Systems Thinker]

---

## Topic Cluster 05: Technical Debt, Runway, and the Cost of Removal

13. **Technical debt cost-benefit of removal**: What is the unit economics of feature removal — for each of the 15 features, what is the ongoing engineering maintenance cost (person-hours/month), the reduction in cognitive load for users, the performance improvement, and how do these quantified benefits weigh against implementation cost and user churn risk? The Devil's Advocate counters that removing deeply integrated features could create more bugs and complexity than maintaining them; we must assess whether engineering cost of removal consumes the entire 8-month runway without delivering a working product. [Analyst, Devil's Advocate]

14. **Abandon-in-place vs. surgical extraction (balancing loop)**: When removing features, you face a choice: surgically extract (expensive now, cleaner long-term) or abandon in place (cheap now, accumulating complexity). What balancing-loop dynamics does each choice create — does abandon-in-place create a hidden maintenance burden that gradually consumes engineering capacity, a self-reinforcing pattern that paradoxically makes future simplification harder? [Systems Thinker]

15. **8-month runway as a potentially false constraint**: Eight months sounds sufficient, but if feature removal uncovers hidden dependencies, requires database migrations, or triggers user backlash, we could run out of funding before launching anything viable. What does a realistic timeline look like with buffer for unknown unknowns, and at what point do we pivot to incremental simplification instead? The Analyst's ROI frame: what is the break-even point where freed engineering capacity improves velocity on remaining features? [Devil's Advocate, Analyst]

---

## Topic Cluster 06: Metrics and Measurement for a Focused Product

16. **Success metric system realignment**: Current metrics (30-day retention, DAU/MAU, session length) were designed for a bloated engagement-maximizing app. If you relaunch as a focused utility, these metrics may mislead — a utility that solves a problem quickly might have SHORTER session lengths but HIGHER long-term retention. What new metric system creates the right feedback loops for a simplified product, and what are the risks of measuring the new product with old rulers? The Analyst adds: what leading indicators should replace lagging download/retention metrics to predict daily habit formation within a user's first week? [Systems Thinker, Analyst]

17. **DAU/MAU diagnostic and stated-vs-revealed behavior**: The 2% DAU/MAU ratio and 47-second sessions suggest stickiness failure — what behavioral sequence analysis distinguishes users failing to find what they need, completing tasks too quickly (low depth), or bouncing from decision paralysis? The Audience Advocate pushes further: where do we see mismatches between stated preferences and revealed behaviors — features users claim to want but never use — and what unarticulated needs are users working around because they've normalized "all fitness apps are like this"? [Analyst, Audience Advocate]

---

## Topic Cluster 07: Transition, Migration, and Honoring Existing Users

18. **Migration with grace**: How do we honor the commitment of users with passionate attachments to features being cut while still simplifying — what would a graceful transition look like that acknowledges their loyalty while guiding them toward the core value? The Appreciative Inquirer's strengths-based register asks how communication strategies might turn potential churn into deeper engagement; the Audience Advocate names the structural-equity and trust dimension: how do we handle users who have built routines around specific features without making them feel abandoned, through transparency, timeline, and support? [Appreciative Inquirer, Audience Advocate]

19. **Relaunch vs. incremental simplification**: The "clean relaunch" assumes users will give us a second chance after a confusing first experience, but app stores are littered with failed "2.0" relaunches. What evidence suggests our existing base will return, and are we over-indexing on retention versus net-new acquisition? The Questioner's counter-test: what would happen if we removed one feature per month and measured impact each time, rather than committing to a clean break? [Devil's Advocate, Questioner]

20. **Communication-fragmentation feedback loop**: The simplification message itself creates a system — how you announce changes, how early adopters react, how sentiment spreads through review channels and social media, how that sentiment influences fence-sitter retention, and how resulting numbers inform future product decisions. What are the leverage points where small messaging changes could dramatically shift user perception? The Questioner adds the reframe test: could transparency about the struggle — "we're focusing on what matters most" rather than "we're taking things away" — change the reception? [Systems Thinker, Questioner]

---

## Topic Cluster 08: Team Health, Capacity, and Guarding Against Feature Creep

21. **Team-capacity reinforcement dynamics**: Currently 6 engineers maintain 15 half-built features. When you eliminate features, do you redeploy engineers to deepen remaining ones (risking new bloat) or reduce headcount (undermining iteration capacity)? What reinforcing system are you creating with team structure, and how does it either sustain simplicity or drift back toward complexity? The Devil's Advocate raises the morale dimension: if engineers have spent years building features now being deleted, how will they stay motivated — especially if "core" features require them to work on code they didn't originally write and may not feel ownership over? [Systems Thinker, Devil's Advocate]

22. **Team's brightest moments and team-aligned product vision**: Think about a time this team of six engineers, one designer, and one PM felt most energized, proud, or effective — perhaps shipping something meaningful, or when user feedback validated their work. What conditions made that moment possible, what strengths does each member bring that could be amplified, and what simplified product would allow them to do their best work — making simplification feel like liberation rather than loss? [Appreciative Inquirer]

23. **Simplification-creep vigilance (zero-sum feature budget)**: Every product adds features over time — a natural reinforcing loop from competitive pressure, user requests, and growth urges, which manifests as a Limits-to-Growth archetype where new features crowd out the core. What early-warning systems or structural constraints could you design now to naturally resist this drift — for example, a "zero-sum feature budget" where adding anything requires removing something else, creating a balancing loop that maintains simplicity? [Systems Thinker]

24. **First small experiments and building from existing assets**: What small, low-risk experiments could the team try this month to test which features truly represent core value — what would you measure, and how would you engage users so they feel part of the product's evolution rather than subjects of it? The Appreciative Inquirer's hidden-assets register asks what existing resources (infrastructure, user insights, team skills, community relationships, learnings from the current feature set) could accelerate the move toward focus, making the MVP reset feel like evolution rather than restart. [Appreciative Inquirer]

---

## Appended Questions (Perspective, Provocation, and Distinctive-Register Personas)

### Provocateur (Append)

1. **What if you kept exactly ONE feature and made it absurdly worse?** Imagine you stripped the app down to just workout tracking, but then removed all logging, history, progress visualization, and data—leaving only the immediate act of pressing a button that says "I worked out" before the app closes itself. What would this useless button reveal about what users actually crave from the tracking experience? *The real insight: is the value in the data or in the ritual of acknowledgment?*

2. **What if the app did nothing but DELETE features for the next 8 months?** Every week, one feature disappears permanently with no replacement, no explanation, and no user choice—until month 9 when the app becomes entirely blank. What would user behavior and retention patterns in this controlled demolition reveal about which features create genuine dependence versus which create mere noise? *The real insight: what if feature removal itself—rather than the final simplified state—was the product experience that taught you what matters?*

3. **What if you launched a "competitor" that was intentionally terrible?** Create a clone app with all 15 features, but each one is broken in a specific, maddening way—workout tracking only logs every third workout, meal planning displays recipes you can't actually cook, social feed shows posts from people who don't exist. Market it aggressively to your existing users. What does watching them struggle with the anti-version reveal about which brokenness they'll tolerate and which sends them away forever? *The real insight: what if you could discover core value by studying which imperfections function as dealbreakers?*

### Storyteller (Append)

1. **What would the "first five minutes" experience look like for a returning user who opens the simplified app for the first time, and what emotional state should we be designing toward?** Imagine it's Tuesday morning and Sarah, who previously faced 15 features and 6 navigation tabs, opens the new version. Walk through what she sees, what she feels, and what she can accomplish in those critical first minutes. How do we ensure the transition from confusion to clarity happens within a single session? What does "success" look like in that first interaction—should she feel relief, excitement, curiosity, or something else entirely?

2. **How might the "moment of deletion" unfold for different types of users when features they've incorporated into their routines disappear, and what narrative threads could help them feel excited rather than abandoned?** Consider Marcus, who uses the supplement store feature weekly, versus Priya, who relies on the progress journal as her primary touchpoint. When they open the simplified app and discover these features gone, what happens in the seconds before they either delete the app or give the new version a chance? What story could the app tell them in that moment—and through what channels (push notifications, onboarding, email, in-app messaging)—that would transform a sense of loss into curiosity about the newly focused experience?

3. **What would a "day in the life" of a power user look like if the app successfully delivered on its core promise with just 3-4 features, and how would that differ from their current experience of fragmented engagement across 15 half-baked tools?** Paint the picture of someone who currently spends 47 seconds per session bouncing between features, trying to extract value from a buffet of mediocrity. Now show us what their day becomes when the app provides one or two moments of genuine delight or utility, and how those moments compound into daily habit formation. What does the notification ecosystem look like when you're not fighting for attention across 15 features, and how does the user's relationship with the app fundamentally change?

### Visionary (Append)

1. **[What if fitness wasn't something you track, but something that emerges naturally through a fundamentally different relationship with your body?]** Instead of asking which features to keep or cut, what if we completely reimagined the category: What would a fitness product look like if it were designed around joy, emergence, and organic behavior change rather than metrics, tracking, and discipline? What if the core value isn't "helping people work out" but something entirely different that doesn't have a current analog in the fitness app space?

2. **[Imagine if the app could disappear entirely as an interface and instead become a presence that anticipates and supports without requiring active engagement?]** What would it mean to invert the relationship between user and app — where the app exists not as something you open, but as something that works on your behalf in the background, creating interventions at the moment they're needed without requiring you to navigate tabs or manage features? What would a zero-UI fitness product look like?

3. **[What if the core value isn't any single feature, but the emotional state users hope to achieve through using the product — and what if we could reverse-engineer from that destination rather than from existing features?]** Rather than asking "what features do people use most," what if we asked "what emotional transformation do people seek when they download this app" and built backward from there? What if the product that delivers that transformation doesn't look like a fitness app at all, but resembles something from a completely different domain (therapy, coaching, entertainment, community)?

### Connector (Append)

1. **Feature pruning as ecosystem succession** The challenge of cutting features mirrors ecological succession, where crowded ecosystems self-thin to let dominant species thrive. In forest ecology, "self-thinning" creates space for the strongest organisms to flourish. What if we viewed the 15 features as competing species in an ecosystem — how would we identify which features are the "keystone species" whose presence enables the entire ecosystem to function, and which are the invasive species crowding out the core value?

2. **The IKEA effect paradox in user attachment** There's a structural parallel between users attached to niche features and the psychological phenomenon known as the IKEA effect — people overvalue things they've invested effort in building or using. But behavioral economics also shows the "endowment effect" creates irrational attachment to things simply because we own them. How do we distinguish between genuine value-creating features and features users are irrationally attached to due to sunk-cost fallacy — and could we borrow techniques from "loss aversion" research to help users let go without feeling betrayed?

3. **UI complexity as information entropy** Information theory uses entropy to measure uncertainty and complexity in communication systems. The current app's 6 navigation tabs plus hamburger menu represents high interface entropy — users must process too much information before finding value. Claude Shannon's work showed that reducing noise increases signal transmission. If we treated every UI element as adding "noise" to the user's cognitive load, what entropy-reduction principles from information theory could guide which elements are signal (essential) versus noise (eliminable)?

---

**Synthesize stream**: 24 across 8 clusters
**Append stream**: 12 across 4 personas
**Combined total**: 36
