---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-opus-4-8"
topic-cluster: "04_technical-debt-and-team-execution"
central-tension: "The cluster pulls between cutting fast for a visible morale and product win versus cutting cleanly so removals don't spawn a new category of half-removed debt — and how much of an 8-month runway to spend resolving that tension before relaunch."
---

# Summary: Technical Debt and Team Execution

## Executive Summary

The defining trade-off this cluster keeps circling is speed versus cleanliness of removal. The brainstormer repeatedly wants a fast, visible win — a "big bang removal weekend" of standalone features, a shrinking codebase, a simpler navigation users notice immediately — yet just as repeatedly warns that a removal is "only done when the dependency graph is clear, not when the UI is hidden." Hiding a feature is cheap; excising it without orphaned tables, dead routes, and confused new engineers is not. The resolution it converges on is to decouple the two timelines: simplify the user-facing product quickly via "freeze and facade," then schedule the real engineering excision into planned sprints (notably month 4, once the core is stable).

Underpinning every recommendation is a measurement-first discipline. Before touching code, map an inter-feature dependency graph; before any removal, stand up a regression suite of 20–30 critical user paths on shared CI; before relaunch, run a "quiet simplification" on a 10% traffic slice; after relaunch, gate decisions at 30-60-90 day metric reviews. The consistent move is to convert qualitative "it's complicated" judgments into scored, prioritized, testable artifacts a PM can slot against runway.

The third throughline is that execution is as much a people problem as a code problem. With a burned-out 6-person team, the brainstormer treats the engineers who built the doomed features as the highest-leverage variable: make them present what their feature taught the team, assign them to lead their own feature's removal, and convert the cuts into portfolio and career assets. Simplification only succeeds if the builders experience it as reclaimed focus rather than erased work.

---

## Key Themes

### Decouple user-facing simplification from engineering cleanup
The single most load-bearing idea: hiding a feature and cleanly excising it are different operations on different timelines. "Freeze and facade" lets users see a simpler product in days while the risky refactor waits for a stable core. The corollary, raised independently, is that an incomplete excision actively *increases* maintenance burden through orphaned tables and dead code.

### Measure and prioritize before acting
Dependency graphs, two-axis coupling/contamination scoring, regression suites, traffic-slice canaries, and metric review gates all serve one purpose: replacing guesswork with evidence on a team that cannot afford a wrong bet. Decisions are framed as reversible only when caught early, which is why instrumentation precedes every removal.

### Standardize the removal process
A reusable feature-removal checklist (remove UI, delete API routes, drop/archive tables, clean feature flags, audit orphaned imports, update docs) recurs as the guard against a patchwork of half-done cuts. It also surfaces the true cost of removal upfront so it can be scheduled, not discovered mid-sprint.

### Make the cut a win for the builders
Reframing language before the announcement, giving builders the microphone and the removal lead role, tying cuts to concrete reclaimed engineer-hours, and rewarding the team with a controlled "focus dividend" sprint all aim to convert removal from devaluation into agency and advocacy.

### Hold runway in reserve for post-launch response
A 10–12 week transition leaves roughly 5 months, of which 3 are treated as a non-negotiable buffer for two full response cycles. The recurring fear is launching with too little runway to act on what users reveal.

---

## Recommended Actions

### Immediate (0-3 months)
- Build an inter-feature dependency graph (2-day mapping of data flows, shared service calls, DB joins) and score each feature on coupling depth (0–3) and data contamination before any removal. `[recurring]`
- Stand up a regression suite of 20–30 critical core user paths on shared CI, run on every PR, captured before the first removal as a baseline. `[recurring]`
- Apply "freeze and facade" to entangled features: hide the UI from new users and freeze writes now; defer clean excision to a month-4 sprint. `[single]`
- Execute a coordinated "big bang removal weekend" on the 4–5 most standalone features to bank a fast morale and navigation win. `[single]`
- Have each builder present what their removed feature taught the team and assign them to lead that feature's removal sprint. `[recurring]`

### Near-term (3-12 months)
- Write and enforce an 8–10 item feature-removal checklist; pair every removal with a same-sprint migration that drops or archives now-unused tables. `[recurring]`
- Run a "quiet simplification" on a 10% new-install traffic slice ~6 weeks pre-relaunch, measuring session length, day-7 retention, and crash rate against control. `[single]`
- Quarantine dead code in a dated `_deprecated/` directory with a 90-day delete window, and maintain a visible dormant-debt list with an explicit "trigger to act" column. `[single]`

### Long-term (1+ years)
- Operate the 30-60-90 day metric review as decision gates (30-day retention vs. 8% baseline; DAU/MAU toward 10%; session length toward 90s), preserving ~3 months of runway as response buffer. `[recurring]`
- Reward the team with a controlled "freedom sprint" framed as the dividend bought by simplification. `[single]`

---

## Key Considerations

**Opportunities**:
- A visibly shrinking codebase and simpler navigation deliver a fast morale and user-perception win the team can build momentum on.
- Converting removals into "what we learned" portfolio entries turns sunset work into retention-improving, career-building assets.
- Reclaimed maintenance hours (estimated ~12 engineer-hours/week) redirect roughly 1.5 engineers of capacity to the core.

**Risks & Challenges**:
- Incomplete excision creates a new debt category — orphaned tables, dead routes, build warnings — that can cost more than leaving features dormant.
- Inconsistent removal practices across 6 engineers produce a patchwork of half-done cuts.
- Launching with under 3 months of runway leaves no room to respond to post-launch surprises.

**Trade-offs**:
- Fast standalone cuts vs. slow, safe excision of entangled features — resolved by running them on separate timelines.
- Dropping tables now for a clean schema vs. retaining read-only data for analytics — resolved via a separate export schema.
- Spending ~3 months of runway on the transition vs. preserving it for iteration.

**Conspicuous absences** (stances the brainstormer's output never took):
- **The relaunch acquisition channel is never named** (check b). The plan reserves runway for a "growth experiment" and a single acquisition/retention mechanic, and the metric gates target 5x DAU/MAU and retention improvements — but nothing establishes *where* new users come from. Every post-launch metric assumes a traffic source the response leaves undefined, which undercuts the whole runway-allocation argument.
- **Existing users mid-removal are treated as a comms problem, never a churn risk** (check c). The brainstormer names "users" and plans a "why we simplified" message, but never surfaces the class of current power users whose favorite cut feature could drive them away. The 10% canary tests new installs only; the loyalists most attached to removed features are exactly the cohort never measured.

---

**Questions addressed**: 4
**Response sources**: 1 (generic brainstormer)
