---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "99_additional"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Additional Questions

---

## Synthesized Insights by Question

### Question 1: The Abandonment Scene

**Full question**: Imagine a user who downloaded the app six months ago with genuine excitement — they opened it three times and never came back. Walk through the specific moment they decided to close it for the last time: what were they trying to do, what did they encounter, and what did they say to themselves as they put their phone down? What does that scene reveal about which features failed the most fundamental test of usefulness?

* **The abandonment moment is architectural, not feature-level.** All seven perspectives reconstruct the same scene. A returning user with intent (usually "log a workout") opens the app, meets six tabs and a hamburger menu, cannot locate the one action they came for in under roughly 30 seconds, and concludes the app is an obstacle rather than a tool. The information architecture defeated the features before users could evaluate them. Cutting features alone will not fix what is really a labeling-and-hierarchy problem.

* **Diagnose with instrumented first-session data, not retrospective interviews.** Two perspectives caution that abandonment interviews mislead, because you only reach users who remember leaving and can narrate a coherent story. The silent quitters who hit a wall are invisible. The more honest signal is a micro-instrumented first-session funnel (which tab tapped, how long they lingered, where they stalled) or reading the day-3 drop cohort directly to see which screens they actually visited.

* **Some features failed because of activation timing, not quality.** Three perspectives converge that features depending on critical mass (social feed, friend-matching, community forum, coaching) launched at scale-of-one and presented ghost towns. This reframes "which features failed" as "which features needed a population the app never had." Comparison surfaces actively harmed too: an immature algorithm compared a new user's output to a "typical user," and the motivating feature became a mirror saying "you are doing this wrong." Comparison surfaces should be removed until their underlying data can make the comparison meaningful.

---

### Question 2: The App That Refuses to Simplify

**Full question**: What if the right move was the opposite — to add a 16th feature so outrageous and specific that it made the other 15 suddenly coherent? Imagine an "AI concierge" that forces users to commit to exactly one goal per week and locks them out of every unrelated feature until that goal is met. The absurd version is punitive; the real insight is: could a strong forcing function make complexity feel intentional rather than chaotic? What would a "coherence feature" look like that turns the bloat into a feature rather than a bug?

* **Strip the punitiveness and the forcing function becomes the real fix.** Six perspectives agree the concierge concept is directionally right but should reframe from punishment to permission. The user states one primary goal and the app scopes the experience to it; everything else remains reachable but recedes. A single up-front choice ("What is your primary goal?") personalizes the home surface and dissolves decision paralysis without deleting any code.

* **Make complexity something users earn through progressive disclosure.** Five perspectives independently land on a layered or tiered model: new users live in a 3-feature app, and additional features light up as a function of mastery, tenure, or stated goals. This preserves the codebase while delivering a psychological simplification. It reframes "too many features" as "features you have not unlocked yet."

* **Beware building a complex AI to solve a complexity problem.** Two perspectives warn that a literal AI concierge re-creates the trap, asking a burned-out team to build an intent-parsing, access-arbitrating system. That's more features dressed as a solution. The cheaper path is rule-based persona detection, radical defaults (ship with only the workout tracker enabled), or honest feature dependencies prototyped before any ML investment.

* **For some users the bloat itself is the value, pointing to audience segmentation rather than deletion.** One perspective argues a kitchen-sink cohort genuinely wants one unified home for all fitness-adjacent behavior and would be served by simplifying the interface to complexity (choreography, search, defaults). A second endorses that people tolerate complexity when it serves a purpose but flags the trap: a coherence layer can itself become so complex it needs explaining, substituting one bloat for another.

* **A meta-feature can act as a narrative spine, remixing the 15 tools into one coherent journey.** Two perspectives propose the 16th element as a story rather than a tool: a path or narrative hook that sequences existing features into a personalized arc. Users experience a journey that happens to invoke the tools rather than a feature salad. One pushes this into a "responsible relationship with your data" philosophy that includes the right to ignore it.

---

### Question 3: Zoning Before Demolition

**Full question**: Urban planners distinguish between demolishing a building and rezoning an entire neighborhood — the first removes a structure, the second redefines what can be built there — so which is this simplification: removing features from an existing information architecture, or rezoning the app's conceptual territory entirely, and what changes about the sequencing depending on the answer?

* **This is rezoning, not demolition.** All seven perspectives reach the same conclusion. Removing features inside an IA built for 15 features yields a smaller version of the same broken app because the tab structure, notification logic, and conceptual territory persist. Rezoning instead asks what the product fundamentally is (a daily-driver workout tool, a social platform, a habit changer), redefines what may exist in that territory, and only then triages. The identity decision precedes removal, and the cut becomes obvious excess rather than arbitrary loss.

* **Rezoning is the runway-safe and morale-safe path.** Several perspectives note that demolition forces engineers into weeks of dependency-untangling and refactoring that feels like cleaning up failure. Rezoning is largely additive (a coherence layer, renamed surfaces) and preserves team energy for the remaining months. The same logic protects users: deleting a feature evaporates the data and community of small-but-passionate cohorts, creating refugees and reputational risk the 8-month runway cannot absorb.

* **Rezoning opens the option to relocate features into partner or companion experiences.** Three perspectives observe that rezoning changes a feature from "gone" to "lives somewhere else," which unlocks partnerships, plugins, or companion apps that demolition forecloses. Deciding platform-versus-point-solution first determines whether nutrition or social become integrations, separate islands, or simply absent.

* **De-risk the cut with a reversible test before committing to permanent deletion.** Three perspectives propose ways to learn whether a feature is truly excess without burning the bridge: hide most features behind a toggle or paywall for six weeks, or run the old app in parallel against a closed-beta simplified version with hands-on power-user support. If users do not miss what is hidden, delete it. Reversible tests surface hidden feature pairings that demolition would erase.

* **Renaming is the load-bearing act.** One perspective isolates a point others imply: demolition preserves old labels and old shame ("Removed: Marketplace"), whereas rezoning lets you rename everything ("Evolved: Coach Marketplace, now integrated into training plans"). The code may barely change. The narrative frame around it is what converts "we cut features" into "we sharpened focus."

---

**Questions addressed**: 3
**Synthesized insights**: 15
