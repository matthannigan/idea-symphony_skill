---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "99_additional"
synthesis-type: "summary"
central-tension: "The problem is not feature count but a missing conceptual identity, so the work is rezoning the app's territory and scoping the interface, not simply demolishing features."
---

# Summary: Additional Questions

## Executive Summary

The strongest finding across all seven perspectives is that this app's failure is not feature count but a missing conceptual identity, so the right move is rezoning the app's territory rather than demolishing features. The abandonment scene every perspective independently reconstructs is the same: a returning user who wanted to do one thing met six tabs and a hamburger menu, couldn't find it fast enough, and concluded the app was an obstacle rather than a tool. No single feature failed a usefulness test. The architecture defeated all of them before they could be evaluated. That reframes the central task from "which 3-4 features survive?" to "what is this app, and what may exist in its territory?"

This identity-first logic recurs across every question. On the provocation about a coherence-forcing 16th feature, six perspectives agree the instinct is right but the punitive framing is wrong. The fix is to scope the experience by a single up-front commitment ("What is your primary goal?") and let everything else recede, not to lock users out. On the zoning metaphor, all seven conclude this is rezoning, not demolition. Cutting features inside an architecture built for 15 yields a smaller version of the same broken app because the tabs and hamburger menu persist.

The trade-offs that remain open are about sequencing and reversibility, not direction. A clean hard-cutover relaunch is faster but bets the runway. Gradual rezoning protects a burned-out team and small passionate cohorts but takes longer and risks an awkward intermediate state. The shrewd middle path most perspectives gesture toward is to keep the code, change the visibility and naming, and run a reversible test (hide most features behind a toggle, or run a parallel power-user beta) before any permanent deletion. Two cautions matter: do not build complex AI to solve a complexity problem when rules and defaults are cheaper, and remember that for a kitchen-sink cohort the bloat may be the value, which argues for audience segmentation over uniform subtraction.

---

## Key Themes

### Identity precedes subtraction
Across every question, the dominant move is to decide what the app fundamentally is before deciding what to remove. All seven perspectives treat the information architecture as "zoning law" and warn that demolition inside the old territory produces a smaller version of the same confusion. Users churned because the app never established an identity they could predict or trust.

### Constraint as permission, not punishment
Six perspectives independently reframe the forcing-function provocation. A strong constraint feels liberating when it says "yes to this first" rather than "no to everything else." The practical form is a single goal-selection step that personalizes the home surface, paired with progressive disclosure (five perspectives). Complexity is earned through mastery rather than dumped on day one. Both moves preserve the codebase and deliver a psychological simplification without deletion.

### Preserve optionality and reversibility under a tight runway
With 8 months of funding and a burned-out team, several perspectives steer away from irreversible moves. Hiding features behind a toggle, running a parallel power-user beta, renaming rather than deleting, and relocating features into companion apps or partnerships all keep the door open. Reversible tests also surface hidden feature pairings that clean deletion would erase (for example, meditation paired with post-workout cool-down).

### Some failures were timing, not quality
Three perspectives note that social and comparison features were dead on arrival because they launched at scale-of-one. This separates "features that are bad" from "features that needed a population the app never had." Comparison surfaces especially suffer when data is immature and demoralizes new users.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Instrument the first-session funnel with micro-events (which tab tapped, dwell time, stall point). Read the day 1-3 drop cohort to locate the actual first friction point instead of relying on retrospective abandonment interviews.
- Run a cold-start labeling test: show new users the six tabs with no onboarding and ask them to rank confidence in what each does. Scores below ~60% confirm the problem is hierarchy, not feature set.
- Ship a goal-selection onboarding step that scopes the home surface to a single primary goal, keeping other features reachable via search (roughly one week of frontend work).
- Add a reversible "focus mode" or default-lean configuration that surfaces only workout-plus-progress. Measure 7-day retention against control before cutting any code.

### Near-term (3-12 months)
- Decide the conceptual zone explicitly (daily-driver workout tool vs. social platform vs. habit changer) in a working session with PM, lead engineers, and at least one active weekly user. The consensus single job becomes the new zone.
- Restructure navigation into earned layers (core, intermediate, advanced) tied to mastery or stated goals so the visibility graph changes without code deletion.
- Pull comparison and social surfaces that depend on critical mass until the population can support them. Sequence value by activation timeline.
- Run a parallel power-user beta of the simplified version (migrate top users with hands-on support) alongside the existing app to validate retention before sunsetting.

### Long-term (1+ years)
- Execute the rezoning relaunch with renamed surfaces ("Evolved" rather than "Removed") and a translation layer that moves existing users' data and mental models into the new zone.
- Resolve platform-vs-point-solution: relocate out-of-zone features (nutrition, social) into companion apps, plugins, or partnerships rather than deleting them.
- Only after the reversible tests confirm true excess, permanently delete dead features with a deprecation window, data export, and conversation migration.

---

## Key Considerations

**Opportunities**:
- A single goal-selection step can recover retention by dissolving decision paralysis with no code removal.
- Renaming and recontextualizing features converts a risky "we cut features" message into a credible "we sharpened focus" story.
- Relocating features into companion apps or partnerships preserves value and user data while simplifying the core.

**Risks & Challenges**:
- Building a literal AI concierge re-creates the bloat trap by asking a burned-out team to ship a complex intent-parsing system. Rules and defaults are cheaper and safer.
- Demolition can make refugees of small-but-passionate cohorts, evaporating their data and triggering a churn spike the 8-month runway cannot absorb.
- A coherence meta-layer can itself grow complex enough to need explaining, substituting one form of bloat for another.

**Trade-offs**:
- Hard-cutover relaunch is fast and clean but bets the runway. Gradual rezoning protects morale and data but takes longer and risks an awkward intermediate state.
- Uniform subtraction versus audience segmentation, since a kitchen-sink cohort may experience the bloat as the value and want a navigable-complexity UX instead.
- Deleting features for clarity versus keeping the code and changing only visibility and naming to preserve optionality.

---

**Questions addressed**: 3
**Key insights synthesized**: 15
