---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/low"
datetime: 2026-06-09
effort: "low"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "07_technical-debt-team-capacity-and-the-burnout-loop"
central-tension: "Cutting features offers the fastest path to engineering relief and capacity recovery, but the same exhausted team that most needs the reset is least equipped to execute it safely — dependency mapping, regression risk, and grief management all demand the focused attention that burnout has already consumed."
---

# Summary: Technical Debt, Team Capacity, and the Burnout Loop

## Executive Summary

The key tension here is burnout cutting both ways: it's the best reason to cut features now, and the biggest reason why cutting features now is risky. A feasibility-oriented view sees the team's exhaustion as an opportunity. Morale is already low enough that engineers won't fight simplification, and when 50–70% of engineering time goes to upkeep, the payoff from cutting is obvious. A risk-oriented counterpoint says a burned-out team can't handle the fallout. Regression testing will slip, dependency maps are incomplete, and with only 8 months left, there's no time to fix a destabilized core if something breaks.

Both sides agree on what has to happen first: map out dependencies, set regression thresholds in advance, and audit maintenance costs per feature so cuts are data-driven. One proposes a two-engineer, two-week sprint; the other suggests a two-hour documentation pass per engineer, compiled into a one-page matrix. Either way, the prerequisites are the same. Both also point to the designer as a bottleneck regardless of how many features remain. The "overwhelming" UX is partly a design problem that won't fix itself when features are cut. Solving it means building a design system or component library with the freed-up engineering capacity.

The biggest difference is in the human side. A risk-oriented view sees quiet sabotage as a real risk: if boundaries are loose, the PM is burned out, and engineers are attached to their features, people may stall feature removal in subtle ways. Safeguards include architectural decision records and pre-mortems where engineers privately write what it would take for their feature to survive. A feasibility-oriented view gets to similar actions through a different path: make the process transparent and data-driven, give the engineer whose feature is cut ownership of something hard in the core, and treat scope creep as information, not failure. These aren't contradictory, but the risk view watches more closely for how a "collaborative" process can hide checked-out behavior.

---

## Key Themes

### The Dependency Graph as a Non-Negotiable Prerequisite

Both sides say map dependencies first, before deciding which features to keep. The feasibility view wants speed: a two-hour pass per engineer produces a one-page matrix showing 2–3 core load-bearers and 8–10 features that can be cut early. The risk view wants thoroughness. Institutional knowledge is scattered after years of adding features, and a quick audit ignores the interconnected infrastructure (auth, notifications, analytics). Both agree on the outcome: do this upfront, budget time for it, and let the dependency graph determine removal order (loosest first), not product preference.

### The Designer Bottleneck Survives Feature Reduction

Both sides see the 1:6 designer-to-engineer ratio as the upper limit on quality, with or without feature cuts. User complaints about the "overwhelming" UX are partly design debt: inconsistent patterns, borrowed UI, deferred decisions across 15 surfaces. Feasibility thinking suggests using the freed engineers to build a component library in month one, so the designer becomes a system architect instead of a per-feature bottleneck. Risk thinking pushes further: the designer should finish the simplified product end-to-end before engineering starts, even if it takes four to six weeks upfront. Both agree that launching a smaller feature set with design debt intact won't fix retention.

### Burnout as Forcing Function vs. Execution Risk

The biggest disagreement in the cluster. Feasibility thinking says burnout is the right moment to cut: the team is too tired to fight, and morale won't improve until scope drops. Risk thinking counters that burned-out engineers don't automatically become productive once feature count goes down. Bad habits stick around, deep work capacity is depleted, and maintenance hours don't convert to development hours. The team needs an actual reset sprint (two to four weeks, low on-call, no new work) before they can execute well. These don't contradict each other, but they cost differently against the 8-month timeline.

### Relief-Driven vs. User-Driven Cutting Produce Different Lists

Both sides flag this risk, but differ on how to prevent it. Risk thinking wants product and design to analyze user value first, then present a recommendation to engineers instead of asking for an open vote. Feasibility thinking suggests a simple rule: don't cut a feature that accounts for more than 5% of active sessions without talking to users first. Either way, the result is the same: base the cut list on actual user behavior before it goes to the team, not on which features are hardest to maintain.

### Engineer Grief as an Operational, Not Pastoral, Problem

Both sides recommend similar actions: acknowledge the engineer's craftsmanship before announcing the cut, give them real ownership in the core that survives, document the deprecated feature formally. But risk thinking adds something feasibility thinking leaves implicit: the conditions for quiet sabotage are already there (creeping back "just in case" hooks, over-engineering what's left, raising dependency problems during removal). Architectural decision records can make that visible in code review. The broader point both sides reach: the engineer's grief takes weeks, not one conversation. It has to be managed as an ongoing process.

---

## Recommended Actions

### Immediate (0-3 months)

- Freeze non-critical features for two weeks and audit maintenance costs. Have each engineer log sprint hours on upkeep per feature. Get the data in front of the team before any product conversation happens. [convergent]
- Map dependencies in a one-page matrix: which features touch which shared APIs, databases, notification systems, auth flows. Order removal candidates from loosest to tightest coupling. Set aside two engineers and up to two weeks for this before making any removal decisions. [convergent]
- Set regression thresholds now: acceptable crash rate, API error rate, session completion rate after cuts. Write a rollback plan for any cut that crosses the threshold. [convergent]
- Have product and design analyze user value first (segmentation by session depth, feature usage, retention impact). Bring a data-backed recommendation to the engineering team, not an open vote. [convergent]
- Start with a low-coupling, low-use feature as a pilot. The first removal reveals where the dependency graph is incomplete and lets the team rehearse at low cost. [unique: feasibility]

### Near-term (3-12 months)

- Audit design debt in the core before building the relaunch. Use the first month of freed engineering capacity to build a component library, so the designer can set up systems instead of improvising per screen. [convergent]
- Schedule a two-to-four week reset sprint with no new features and low on-call. This gives the team space to recover cognitively before focused execution. Track engineering health before and after using on-call incident frequency and bug response time. [trade-off: risk-oriented view says this is essential for productivity; feasibility-oriented view treats burnout as an accelerant not a blocker, but both agree on the metrics]
- Give each engineer whose feature is cut explicit ownership of a hard technical problem in the core. Announce the cut and the new ownership together. [convergent]
- Document each deprecated feature: a short post-mortem on what it tried, what it achieved, what lessons the code teaches. Schedule a 30-minute retirement talk where the original engineer presents. [convergent]
- Set up architectural decision records (ADRs) for the simplified product. Any scope expansion needs written rationale, so back-door rebuilding is visible in code review. [unique: risk]

### Long-term (1+ years)

- Institute a "working memory budget" rule: no new feature unless it fits inside what an engineer can reasonably hold alongside the core. Measure engineer self-reported working memory before and after the reset to show the cognitive load actually went down. [unique: feasibility]
- Set a retention milestone (e.g., 30-day retention at 15%) as the gate for scope expansion. Don't add features until the core hits that threshold. [convergent]

---

## Key Considerations

**High-confidence items** (both sides agreed):

- Map dependencies before any removal decision. Make it a dedicated sprint, not a side task.
- The designer is a bottleneck no matter how many features are left. Design debt and a component library have to happen alongside feature cuts.
- Base the cut list on actual user behavior before talking to engineers. Relief-driven cuts and user-driven cuts produce different lists.
- Acknowledge the engineer's craftsmanship before announcing a feature cut. It's the minimum needed to prevent quiet sabotage.
- Budget explicitly for regression work against the timeline (about 4–6 sprints for 12 feature removals).

**Trade-offs** (where they disagreed):

- Feasibility thinking: use the team's exhaustion to your advantage. Cut now, morale improves when scope drops, and the team is too tired to fight. Risk thinking: that same tired team can't handle the instability and complexity cutting creates. A two-to-four week reset sprint isn't optional, it's how you get productivity back.
- Feasibility thinking: two-hour dependency pass per engineer is fast and good enough to find what's core vs. what's removable. Risk thinking: distributed audits miss invisible connections built up over years. A dedicated two-engineer sprint is worth the timeline cost.
- Feasibility thinking: frame the grief conversation once, carefully ("focusing," not "cutting," honest about whether it comes back). Risk thinking: grief takes weeks, not one talk. There are multiple emotional beats — announcement, first sprint, users losing access — and you need 30- and 60-day check-ins.

**Blind-spot flags** (only one side raised):

- Board and investor alignment first: if external pressure to add features is the root problem, cutting features alone won't fix the loop. It just makes the pressure more overt and adversarial. Get board buy-in on the focused product before you tell the team about cuts. [unique: risk]
- The 8% retention drop might not be overcomplication. Exit surveys should ask "too complicated?" separately from "doesn't solve my fitness problem?" They need different fixes. [unique: risk]
- Set a concrete codebase reduction target (e.g., 40% fewer lines or API endpoints) and track it alongside retention. It gives engineers a measurable craft goal and proves the cognitive load went down. [unique: feasibility]
- Count how many PRs touch shared modules before and after cuts (sample a random week each way). It's the real measure of whether cognitive overhead actually dropped. [unique: feasibility]

**Neither-lens gaps** (what other angles would have caught):

- **Relational/social:** Neither side looked at who owns what code and the territory dynamics around it. In a six-person team, interpersonal politics about "whose code stays" often matters more than process. A different lens would ask: who are the informal keepers of shared infrastructure, and does the cut list accidentally concentrate ownership in ways that create new weak points?
- **Equity/distributional:** Neither side asked which users are hit hardest by specific cuts. An 8% overall retention rate might hide a subgroup — lower-income users who need the meal planning feature, or users with accessibility needs — for whom the focused product is a step backward. A user segment impact assessment should happen before the cut list is done.
- **Lifecycle/temporal:** Both treated the 8-month runway as a hard limit but didn't look at what happens when it runs out. If the relaunch misses its retention goal by month six, what happens? Raise more capital, shrink the team, wind down? Without a contingency plan at the runway boundary, the team is executing toward a cliff.

---

**Questions addressed**: 6
**Source lenses**: risk-oriented (The Devil's Advocate) + feasibility-oriented (The Pragmatist)
