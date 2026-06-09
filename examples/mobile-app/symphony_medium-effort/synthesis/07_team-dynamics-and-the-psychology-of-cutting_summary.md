---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "/Users/matth/dev/idea-symphony_skill/test-runs/mobile-app/med"
datetime: 2026-06-09
effort: "medium"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "07_team-dynamics-and-the-psychology-of-cutting"
synthesis-type: "summary"
central-tension: "Whether team energy and passion should drive feature selection or only break ties once user-impact data has spoken."
---

# Summary: Team Dynamics and the Psychology of Cutting

## Executive Summary

The organizing tension of this cluster is how much weight to give the team's energy and passion in deciding what to cut. Three of the four perspectives treat the burned-out team as the most important data point in the reset. They argue that execution quality depends on care, and a team that has stopped caring cannot ship a relaunch, no matter how clean the feature list. A fourth perspective accepts that team energy matters but reframes the decision: a depleted team's preferences are not reliable strategic input. In this view, passion should rank below user impact in an explicit hierarchy rather than substituting for it. Resolving that hierarchy is the cluster's central practical decision.

The perspectives converge on a strong point: feature cuts and team health are one problem, not two. The team is burning out because of the feature count, not despite it, so cutting is itself the capacity-restoration intervention. This directly answers the "restore morale first or cut first?" question. Three perspectives reject sequencing morale ahead of cuts as a false choice because the maintenance load causing the depletion cannot be relieved while all fifteen features remain. A team maintaining fifteen half-built features spends an estimated 60-70% of its capacity on stabilization; cutting frees roughly a third immediately.

How the cut is framed determines whether it heals or wounds. Every perspective converges on "restoring craft and focus" over "admitting failure." But all perspectives offer a shared warning: the reframe is hollow unless leadership backs it with structural change (reduced velocity targets, protected refactor time, irreversible cuts that signal no panic pivot is coming). Craft is a condition you create, not a slogan.

The most concrete leverage point is the retrospective where a proud engineer hears their feature is cut. All four perspectives produce nearly the same script: acknowledge the craft first, then reframe the cut as redirecting that same care to a core feature, and hand the engineer ownership of the transition. That single moment, witnessed by the whole team, sets whether the reset reads as strategic focusing or as a quiet performance review that triggers the departures you can least afford.

---

## Key Themes

### Cutting is the capacity intervention, not a separate cost
The dominant finding is that feature reduction and burnout recovery are the same move. You cannot restore a team's capacity while the maintenance burden causing its depletion stays in place. So "restore morale first, then cut" is a false sequence. Cutting decisively frees cognitive load, lets the team ship quality on what remains, and builds the momentum that actually restores morale. One productive caveat: provide some graduated relief (reduced notification pressure, a short freeze, operational fixes) so a depleted team isn't asked to make irreversible decisions completely cold.

### Framing as craft restoration only works if it is structurally backed
Across every perspective, "we're choosing to master 3-4 features instead of half-building 15" beats "we built too much and failed." The first turns loss into clarity; the second invites self-blame. But the reframe is repeatedly flagged as hollow if leadership doesn't change behavior. Engineers didn't lose the ability to care. They were prevented from caring by unclear priorities and context-switching. The language must be paired with reduced velocity targets, protected refactor time, and irreversible cuts.

### Pride lives in small, well-executed work and in recreatable conditions
The team's proudest build is almost certainly a small, cleanly-finished piece (an empty state, a settings redesign, a refactor), not a headline feature. Pride comes from finishing something well. The actionable signal is not the feature itself but the conditions that enabled it: a singular clear goal, locked scope, focused time, autonomy, and visible feedback. Those conditions, not the specific feature, are what the relaunch must recreate.

### The retrospective is the highest-leverage cultural moment
The conversation when a proud engineer hears their feature is cut sets the tone for the entire team. The well-led version acknowledges the craft, reframes the cut as redirecting care to the core, and gives the engineer ownership of the sunset; the poorly-led version dismisses the work with usage metrics. Texture matters more than content, and the rest of the room is reading the moment to decide whether their own commitment is safe.

### Categorical reframe: team energy is a tiebreaker, not the primary selector
One perspective genuinely reverses the others, and the qualifiers the other three attach to their own claims corroborate it. This changes which actions get prioritized on the "design around team passion" question. A burned team's preferences are not trustworthy strategic input. Depleted engineers favor the interesting feature over the boring-but-essential one, and one vocal voice can masquerade as team consensus. Feature selection should therefore run user impact, then team sustainability, then team passion, with passion deciding only when user data is genuinely ambiguous.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Reduce the smallest unit of pressure now: cut notification volume and marketing demands. Freeze new feature work before any irreversible cut decisions.
- Run "what drained you this week?" retrospectives and fix operational frictions (broken builds, unclear priorities, missing shipping feedback). This frees 10-15% of capacity quickly and rebuilds trust.
- Have engineers document the original reasoning behind each feature before any cut is debated. This separates genuine institutional knowledge from sunk-cost attachment.
- Cut 2-3 obviously-failing features (lowest usage, highest maintenance) next sprint as a low-risk pilot. Measure whether velocity rises and bugs fall.
- Hold one-on-ones with engineers whose features are at risk. Learn what they are proud of so you can reference it respectfully in the cut conversation.

### Near-term (3-12 months)
- Declare a locked relaunch date and feature scope (e.g., "relaunch in 4 months, core 3-4 only") so the burned-out team has a visible finish line.
- Run the full cut as a deliberate retrospective: acknowledge each cut feature's craft, spend time on "what we learned and keep," archive code rather than delete it, and give affected engineers ownership of the deprecation/sunset.
- Establish an explicit feature-selection rubric: user impact, then team sustainability, then team passion. This ensures energy informs but does not override data.
- Reserve 20-30% of every sprint for quality refinement and tech-debt paydown on the kept features. This makes the changed daily reality real, not just the roadmap.
- Assign singular ownership of each core feature to specific engineers. This converts shared, diffuse responsibility into psychological ownership.

### Long-term (1+ years)
- Install a visible gate that prevents future bloat (a feature council or user-impact baseline). This signals to the team that this reset will not repeat.
- Track team stay rate as a first-class success metric alongside DAU/MAU and retention.
- Build a recurring "hard problem" design phase and depth-dive ritual into the team's cadence. This keeps recreating the conditions that produced the proudest build.

---

## Key Considerations

**Opportunities**:
- Cutting can double as the burnout cure, solving the product and team-health problems with a single decision.
- The estimated 30% capacity freed by cutting can be reinvested in quality, generating momentum within weeks.
- Direct, specific user feedback on a focused product reconnects engineers to the impact of their work. The bloated product cannot provide that emotional fuel.

**Risks & Challenges**:
- A cut framed as failure (or backed by no structural change) reads as an implicit performance review and triggers quiet disengagement or departures when focused execution is needed most.
- Trusting a depleted team's feature preferences can lead to keeping the niche feature a vocal engineer enjoys while cutting the essential one its quiet builder maintains.
- DAU/MAU will not stabilize overnight. If morale is pinned to early post-relaunch metrics, a flat quarter can re-break the team.
- "Restoring craft" risks becoming a slogan that lets leadership off the hook for the original mess. It only works paired with reduced velocity targets and protected refactor time.

**Trade-offs**:
- Cut immediately to break the burnout spiral, or provide graduated relief first so a depleted team isn't deciding irreversibly while exhausted.
- Let team energy and passion drive feature selection, or rank it strictly beneath user-impact data. This is the cluster's unresolved central tension.
- Honor and archive cut work (slower, ceremonial, protects culture) or excise it clinically (faster, leaves residual resentment).
- Whether the shared root cause is overproduction itself (cut features first) or unclear priorities (align on one goal first, then cut).

---

**Questions addressed**: 7
**Key insights synthesized**: 31
