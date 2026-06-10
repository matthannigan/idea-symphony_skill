---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-burnout-and-the-build-itself"
persona: "The Pragmatist"
---

# Team Capacity, Burnout, and the Build Itself - The Pragmatist

---

## Modeling Realistic Capacity for Relaunch Under Maintenance Load

* **Summary.** Start by auditing your actual maintenance burden. Ask each engineer: "In a typical week, how many hours go to unplanned bugs, support triage, and patches versus new feature work?" You'll likely find 40–60% of cycles sink into maintenance on the 15-feature surface. Capacity for relaunch sprint = total engineering weeks available minus (maintenance overhead + 10% buffer for emergencies). If the team has 6 engineers and 8 months, that's roughly 190 engineer-weeks gross; subtract 45 weeks for maintenance, you're left with ~145 weeks of relaunch work. Be honest: a degraded launch is worse than a delayed one. Better to announce a 3-month realistic timeline with full team focus than promise a 6-week sprint and ship exhausted code that fails in production. The risk isn't the timeline—it's trading unsustainable tempo for poor outcomes.

---

## Feature Maintenance Mapping: The Hidden Capacity Reservoir

* **Summary.** Run a weekly audit for each of the 15 features: track engineering hours spent in bug fixes, performance tuning, and user support. You'll see a Pareto distribution—4–5 features probably consume 60% of maintenance effort. Those are your candidates for immediate removal because they not only reduce scope but free up concrete engineering cycles. For example, if the meditation guide consumes 15 hours/week in backend sync bugs and user onboarding support, cutting it alone recovers 60 engineering days in 6 months. Build a spreadsheet: feature name, hours/week, hours/release cycle, top 3 pain points. The team becomes advocates for cuts when they see the exact hours they'll recover. This isn't abstract—it's "if we cut these three features, we free up 120 engineering-days to actually finish workout tracking properly." Prioritize cuts by hours recovered per feature, not sentimentality.

---

## Burnout as a Prioritization Oracle: Reading the Team's Immune Response

* **Summary.** Don't frame burnout as a morale problem to solve before deciding on scope—frame it as data. Ask each team member: "Which features make you most exhausted to maintain, and why?" The answers reveal architecture fragility faster than any code review. If the social feed drains attention because it's tightly coupled to the user model, and the meditation guide drains attention because of cross-cutting state management issues, that's signal about which features are architectural anchors. The team's exhaustion is telling you which cuts will have the most immediate benefit. The pragmatic move: prioritize removals based on "which cuts stop the bleeding fastest," not "which features have lowest DAU." A feature with 5% usage but 30% of codebase complexity is a liability masquerading as an asset. Trust the team's fatigue map.

---

## The Emotional Cost of Cuts: Framing Removal as Completion, Not Failure

* **Summary.** When an engineer built a feature, they invested pride and effort—cutting it feels like that work is discarded. Reframe: "We shipped it, we learned it wasn't the core, and now we're simplifying based on data." Publicly acknowledge the cut features in internal comms—"The meditation guide reached 2% of users but taught us a lot about onboarding flows; those lessons are in our core redesign." Don't erase the work; honor it as learning. In the relaunch kickoff, show side-by-side: old 15-feature complexity vs. new 3-feature clarity, with specific metrics on how many hours each engineer will recover. The emotional shift happens when engineers see concrete freedom coming, not abstract "the relaunch is important" rhetoric. Celebrate the choice to cut—make it a strength signal, not a defeat. "We had the discipline to say no" is more energizing than silent removal.

---

## Incremental vs. Clean Break: Reading Team Conviction

* **Summary.** The team's gut tells you the truth. If they hesitate on clean break, it's because they fear user exodus or don't yet believe in the new core. That hesitation is actionable data. Run a quick survey: which of the 15 features have dedicated power users who'll churn if removed? Start with the 8% retention app—users are already leaving anyway. A clean break actually reduces churn risk because it's honest; incremental removal looks like a broken product. The practical path: clean relaunch in one release, but sequence the marketing. Week 1: "We're refocusing on what we do best." Week 2: "Here's the new, simple app." Week 3: migration support for users who need data exports or features moving to external tools. If the team fears it, they're probably underestimating user apathy for features they don't use. Trust the metrics (8% retention = users don't love this), not the fear.

---

## The Morale Rebound and the Coherence Signal

* **Summary.** Six months post-relaunch, the team's morale inflection point arrives the first time an engineer adds a feature to the simplified core and the codebase doesn't fight back. Fragmentation is demoralizing; coherence is energizing. A 3-feature app with clean architecture feels lighter and faster than a 15-feature app where changes cascade across multiple systems. The pragmatic expectation: assume 30–40% velocity increase on the retained core within 3 months of launch, simply because the codebase is smaller. That velocity boost is real morale medicine—visible, measurable, and earned. To accelerate it, use the early post-launch months to ruthlessly refactor the core: eliminate dead code paths, unify data models, retire tangled dependencies. Two weeks of focused refactoring after launch often produces more morale lift than six months of slow iteration on a fragmented system.

---

## Translating Team Pride Into Relaunch DNA

* **Summary.** Ask the team: "What feature are you most proud of shipping?" Not by metrics—by feeling. If engineers were proud of the workout tracking UI, or the progress visualization, those aren't features to cut: they're the emotional core of the relaunch. Pride signals what the team actually believes the product is for, beneath the feature bloat. Build the relaunch around those pockets of genuine care. If the team loved shipping the workout video integration because it felt seamless, make that seamlessness a design principle for the new app. The team's proudest work is often the answer to "what should we double down on?" It's not just sentiment—it's evidence of what they can do well and what will energize them to build again. A relaunch that honors the team's proudest work carries momentum forward.

---

## Manufacturing a Founding Moment: Internal Framing as Psychological Pivot

* **Summary.** Slack's pivot from a failed game studio worked because the founders genuinely believed the new direction was bigger than the old. To manufacture that feeling internally: position the relaunch as "the product we should have built from day one" rather than "the product after we failed." Frame the cut features not as sunk costs, but as market research that informed the real insight. In kickoff comms, tell a story: "We learned from 15 feature attempts that users want ONE thing done better than anyone else. That's us now." Give the team a 90-day scope so they can feel momentum—small wins each sprint that accumulate into a cohesive whole. Include a "founding moment" ritual: first product review after launch where the team celebrates the first week of metrics on the simplified app. That moment, when they see retention tick up because the app is finally simple, is when the internal narrative shifts from "we're cutting our failure" to "we shipped what we actually believed in."

---

## Building as Recovery, Not as Burden: Architecture as Morale

* **Summary.** The 8 months of runway isn't just time to build—it's recovery time. A burned-out team shipped a fragmented product; the relaunch's real job is to create conditions where building is restorative, not extractive. That requires three things: (1) ruthlessly remove the features causing the most drag immediately, so the team feels relief in week 1; (2) allocate 20% of the first month to refactoring the core for coherence, not features—the team needs to feel the codebase improving under their hands; (3) ship small wins weekly, so momentum is visible. A team that spent six months fighting fragmentation will re-engage when they spend two weeks refactoring and suddenly add a feature without a cascade of side effects. The pragmatic relaunch isn't about velocity metrics—it's about architecture simplicity that makes the team want to build again. If the team emerges from this with energy to innovate, the relaunch succeeded, regardless of what the retention curves say.
