---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
date: 2026-06-09
effort: "min"
stage: "Phase 5: Summaries Concatenation"
---

# Summary: Feature Triage and Core Value Identification

## Executive Summary

The cluster's organizing tension is that the app's best-performing features pull in three directions at once: the brainstormer's own analysis keeps arriving at the workout tracker for retention, the challenge platform for acquisition, and a coaching service for revenue. The ruthless-subtraction exercise reframes that divergence as the actual diagnosis — the product is "trying to be three different businesses simultaneously," so the team's job is to pick a lane (habit tool, social platform, or coaching marketplace) rather than crown a single feature. Each lane implies a different core feature, success metric, and go-to-market motion.

Underneath that strategic call sits a consistent methodological stance: behavior beats stated preference for *what to keep*, while stated preference governs *how to position* what remains. The brainstormer returns to this distinction repeatedly — voluntary revisits over raw opens, session-entry points as declared intent, analytics setting the baseline while interviews generate testable hypotheses. The recommended evidence pipeline is concrete: rank features by organic-revisit rate, run cohort retention by first-feature-used, then convert any data conflict into a controlled experiment (a 72-hour feature blackout on a 10% segment) before making irreversible cuts.

The third through-line is that cutting features is a stakeholder-management problem, not just an engineering one. The strongest cost argument for trimming niche features is not the 0.25 FTE of maintenance but the compounding drag on "architectural agility" — and the safest way to sunset a beloved feature is a negotiated 90-day exit with data export and alternatives, not an overnight removal.

---

## Key Themes

### Behavior over belief, with a positioning exception
The brainstormer repeatedly separates what users *do* from what they *say*: voluntary revisits and session-entry points are weighted above raw opens and interview enthusiasm. The nuance that recurs is the exception — stated preference still governs how you position and message the simplified product, even when behavior governs what survives the cut.

### Convergence into a controlled experiment, not an argument
Across multiple questions the recommendation is the same: turn contested decisions into short, measurable tests. The 72-hour feature blackout, the 2-week experiment to confirm interview-generated hypotheses, and the cold-acquisition stress test all share one logic — match the evidence standard to the reversibility and cost of the decision.

### The hidden cost of breadth is architectural, not budgetary
Maintaining niche features is framed not as engineer-hours but as cognitive and structural overhead that "slows every other decision." This reframing recurs as the argument most likely to actually win a triage debate, because the spreadsheet cost always understates it.

### Power users diagnose, they don't dictate
The top-5% cohort is treated as a directional signal — useful for finding the hook the other 95% missed — but explicitly *not* the product spec, especially if acquisition-channel skew explains their feature preference.

---

## Recommended Actions

### Immediate (0-3 months)
- Build a feature-scoring matrix ranking all 15 features by organic-revisit rate (sessions with no push in the prior 24h), weighting share events 3–5x over passive engagement. `[recurring]`
- Run the 2x2 frequency-vs-time-on-feature matrix to cut the clear losers (low frequency + low time); the brainstormer estimates this eliminates 6–8 features before any interview. `[single]`
- Run the anonymous "keep only one feature" exercise across the whole team (engineers, designer, PM) to measure conviction alignment before sprint planning. `[single]`
- Schedule 10 video calls with the top-5% cohort asking the single question: "If we removed everything except your two most-used features, would you still open the app daily?" `[single]`

### Near-term (3-12 months)
- Run a 72-hour feature blackout on a 10% traffic segment for any contested feature, measuring session length, retention, and support-ticket spikes. `[recurring]`
- Segment new users by first-feature-used and track 7- and 30-day retention by cohort to find the causal hook and expose navigation mis-routing. `[single]`
- For each niche feature, plot passionate-user count against maintenance cost and decide keep / negotiated-sunset / spin-out; sunsets get 90 days notice, data export, and a named alternative. `[recurring]`

### Long-term (1+ years)
- Pick one strategic lane — habit tool (retention + subscription), social platform (acquisition + freemium), or coaching marketplace (revenue + B2B) — and let it dictate the core feature and success metric. `[recurring]`
- Build the monetization wedge as a software upgrade (e.g., workout tracker + premium coaching), not a new business model requiring inventory or logistics the 6-person team can't support in an 8-month runway. `[single]`

---

## Key Considerations

**Opportunities**:
- Share events, though rare at 2% DAU/MAU, carry viral-distribution signal that engagement metrics miss entirely.
- A clear daily trigger (finish workout → log it → maintain streak) gives the workout tracker a retention mechanic none of the other features have.

**Risks & Challenges**:
- Power users may be devotees of a feature slated for cutting, making them the loudest pivot critics rather than the future core.
- Divergent rank orders between median and power users mean any single "core product" choice will feel like betrayal to one group.

**Trade-offs**:
- Optimizing for acquisition (challenge platform / social feed) means accepting that retention must be rebuilt from scratch.
- Keeping vocal-but-niche features preserves a small constituency at the cost of compounding architectural drag on every future decision.

**Conspicuous absences** (stances the brainstormer's output never took):
- **No acquisition channel is ever named, yet the runway is finite.** The response leans on a coaching/subscription revenue wedge and an 8-month runway but never establishes *how* the simplified product acquires users post-pivot (check (b)). With organic growth unproven and the existing 180K downloads of unknown origin, the lane-selection recommendation rests on a precondition the analysis never fills in.
- **The decision the cluster builds toward is never actually made.** Questions repeatedly stage "retention vs. acquisition vs. revenue" and the synthesis concludes "pick one lane," but the brainstormer declines to commit to a lane itself (check (d)) — defensible given no data access, but it leaves the highest-leverage call entirely to the reader.

---

**Questions addressed**: 5
**Response sources**: 1 (generic brainstormer)

---

# Summary: Simplification Strategy and Relaunch Design

## Executive Summary

The cluster's organizing tension is between *speed under constraint* and *deliberateness as design*. With 8 months of runway and a burned-out team, every recommendation is pulled toward whatever ships fastest and restores morale — yet the brainstormer repeatedly insists the simplified app must *read* as a confident, intentional choice, not as a product that had features amputated. These two pulls usually align (a bold relaunch is both fast and decisive) but occasionally diverge: the fast move is to keep the brand and ship; the deliberate move may be to rebrand, interview users, and design a navigation pattern from scratch.

The strongest through-line is that morale and momentum are treated as primary engineering constraints, not soft factors. The brainstormer returns to this across the relaunch-vs-deprecation question (a clean break beats a slow wind-down), the branding question (a new name gives the designer "permission" to start a fresh Figma file), and the IA question (constraint experienced as confidence). A burned-out team needs a declared finish line and a win, and the recommended sequencing — announce a hard date, deprecate in controlled batches, ship as a named moment — is engineered as much for the team's psychology as for the user's.

The second load-bearing insight is a wholesale redefinition of success metrics. The brainstormer argues the current 8% retention and 47-second session are being measured wrong: retention should be recalculated only over users who completed a defined "first loop," session *frequency* should replace session *length* as the north star, and fast leading indicators (D1, D3) should replace the 30-day lagging metric so the team can iterate on a 7-day loop. This reframing recurs and should anchor the relaunch's instrumentation.

---

## Key Themes

### Morale as a primary engineering constraint [recurring]
Across multiple questions the brainstormer treats team psychology as load-bearing, not soft. A slow deprecation "signals maintenance mode" and risks losing the best engineers; a relaunch "signals we're building something." Even the branding decision is framed partly around giving the team a cognitive reset. Engineer churn risk is something to calculate against execution risk explicitly.

### Simplicity as deliberate identity, not subtraction [recurring]
The relaunch must communicate "this is intentionally simple" from the first pixel rather than "this had features removed." This recurs in the IA recommendations (drop tab bars entirely, study Streaks/Duolingo/Headspace), the onboarding ("we removed everything else so these work better"), and the branding sub-brand option ("Focus" / "Lite").

### The single completed loop as the activation unit [recurring]
The day-one experience, the metric redefinition, and the retention baseline all hinge on one defined first action — log one workout, see a streak start, in under two minutes with no setup. This "first loop" becomes both the UX target and the cohort filter for honest retention math.

### Metrics redefined around activated users and leading indicators
Current lagging metrics (30-day retention, raw 8%, session length) are reframed: measure retention only for users who completed the first loop, adopt D1/D3 as weekly heartbeat metrics, and make weekly active *frequency* the north star.

### Specificity in the re-engagement pitch
Lapsed users re-engage with a named change ("we removed everything except workout tracking — it's now one screen"), not with vague "we improved the app" messaging. The full 180K install base is a distribution asset reachable via a push/email re-engagement spike a new app cannot access.

---

## Recommended Actions

### Immediate (0-3 months)
- Announce a hard relaunch date (~10 weeks) immediately and ship as a named moment; deprecate lowest-traffic features in weeks 1–4, stabilize the core in weeks 5–8. [recurring]
- Audit the top 50 negative app-store reviews: if they attack the category promise ("bait-and-switch"), rebrand; if they attack execution quality, keep the name and run a "we listened" v2.0 announcement to the full install base. [single]
- Define the single "first loop" (open → log one workout with smart defaults from one goal question → see a streak start) with no profile, social graph, or onboarding tour. [recurring]
- Recalculate retention over only users who completed the first loop, and stand up weekly D1/D3 cohort reports as the team heartbeat. [recurring]

### Near-term (3-12 months)
- Usability-test the two-minute experience with 10 cold strangers matching the target user; require ≥7/10 to complete the first action in under 2 minutes unaided before launch. [single]
- Adopt a near-zero navigation pattern (drop tab bars, home view reachable in ≤2 taps, power-user paths via progressive disclosure) and name the three kept features explicitly in onboarding. [recurring]
- Set a 6-month target of ~20% 30-day retention for activated users and ~40% weekly-active ratio at 8 weeks post-launch. [single]

### Long-term (1+ years)
- Ship the after-7th-session one-question prompt ("What would you tell a friend this app is for?") and treat ≥80% answer convergence as the positioning/PMF signal. [single]
- Consult a navigation-specialized designer for the constraint-as-identity problem, treated as the highest-leverage design investment in the relaunch. [single]

---

## Key Considerations

**Opportunities**:
- The 180K install base is a reusable distribution channel: a named-change re-engagement push can generate a spike no fresh app can access.
- A declared finish line can restore a burned-out team faster than incremental change — psychological relief plus a forcing function for prioritization.

**Risks & Challenges**:
- A bold relaunch only pays off if the new core is genuinely better on day one, not merely smaller.
- Losing 2 engineers could sink the project; the deprecation-vs-relaunch choice is partly a retention bet on key staff.

**Trade-offs**:
- Phased deprecation preserves optionality but burns 4–5 months of ambiguity the runway can't fund; a clean cutover trades technical risk for morale.
- Keeping the brand preserves equity but may anchor users (and the team) to old assumptions; rebranding frees design but discards distribution.

**Conspicuous absences** (stances the brainstormer's output never took):
- *Precondition never established (check b):* the entire metric redefinition assumes an analytics/event pipeline can measure a "first loop," D1/D3 cohorts, and per-feature traffic — but the response never asks whether the bloated app's instrumentation can actually emit those events, or what it would cost to build that tracking before any of the recommended targets become measurable.
- *Decision declined (check d):* Question 7 explicitly asks "same brand or clean slate?" and the brainstormer lays out keep / rebrand / sub-brand without committing to a default — yet every other recommendation (re-engaging the 180K base, the "we listened" narrative) quietly presupposes keeping the name, leaving the one case where rebranding is advised (category-promise reviews) under-resourced.

---

**Questions addressed**: 5
**Response sources**: 1 (generic brainstormer)

---

# Summary: User Communication and Churn Management

## Executive Summary

The organizing tension across this cluster is between the broadcast and the personal. On one side, the brainstormer repeatedly pushes for confident, public, philosophy-forward messaging — a "Simplification Roadmap" on social, a single canonical help-center article, a before/after screenshot that lets the product speak for itself. On the other, it keeps returning to intimate, per-user respect: a personalized "what we kept, what we exported, what disappeared" account email; per-feature export formats tuned to how a person actually uses their data; lead times tiered by individual engagement. Managing churn well, on this telling, means doing both at once — projecting organizational seriousness while making each affected user feel individually accounted for.

The highest-confidence through-line is **specificity as the trust mechanism**. It recurs in nearly every answer: name the exact features and sunset date, quantify each user's saved data, commit to "three workout-logging improvements in 90 days" rather than "doubling down on quality," and surface concrete export formats. Vagueness reads as corporate hedging; specificity reads as a contract the user can hold you to. The second load-bearing idea is **reframing removal as responsiveness** — leading with users' own words ("you told us you felt overwhelmed, you were right") so simplification lands as listening rather than retreat.

The most actionable structural insight concerns the beta: select participants by *feature-fit* (users who already rely only on what's being kept), not by raw engagement level, since the most engaged current users are precisely those who will miss the cuts most. This single selection criterion determines whether the beta becomes a PR asset or a liability.

---

## Key Themes

### Specificity Builds Trust
Across communication, export, framing, and beta design, the recurring claim is that concrete details outperform generic reassurance. Exact dates and feature names, per-user data counts, named 90-day commitments, and feature-specific export formats all convert abstract intent into something users can verify and hold the company to.

### Reframe Removal as Responsiveness, Not Retreat
The "we got better, not we gave up" narrative depends on anchoring to the user's own expressed frustration before introducing the decision. Acknowledge the loss without apologizing for it; pair every removal with at least one visible improvement shipping the same day so subtraction reads as upgrade.

### Respect the User's Past Effort
Migration and export are framed less as logistics than as signals of respect — one-tap per-feature exports, partner-app migration paths, a 12-month read-only archive, and personalized account summaries all say "your history matters." This respect is positioned as the lever that keeps users who lose functionality from feeling abandoned.

### Tier and Stage Everything by Audience Fit
Both the communication sequence and the beta are designed to be segmented: lead time tiered by engagement (6 weeks for heavy users, 2 for casual), and beta cohorts staged with graduation criteria. Matching message and timing to the right sub-audience reduces loud churn and premature bad first impressions.

---

## Recommended Actions

### Immediate (0-3 months)
- Write the canonical "What's Changing and Why" help-center article first; make every in-app notice, email, and social post link back to it as the single source of truth. `[recurring]`
- Draft the announcement to open with anonymized user quotes ("you felt overwhelmed — you were right"), then name a specific investment ("3 workout-logging improvements in 90 days") and include a before/after navigation screenshot or 20-second video. `[recurring]`
- Build one-tap per-feature exports in the right format per feature (recipes → CSV for Sheets, journal → dated PDF with photos/notes), not a single bulk ZIP. `[single]`

### Near-term (3-12 months)
- Run the four-week escalating-specificity countdown (Week 1 banner → Week 2 feature/date email → Week 3 export modal → Week 4 "what stays" email), with lead time tiered by engagement (6 weeks heavy, 2 weeks casual). `[recurring]`
- Send each active user a personalized "what we kept, what we exported, what disappeared" account email with exact counts (e.g., "12 recipes, 47 journal entries"). `[single]`
- Recruit a feature-fit beta cohort (users who already use only the kept features), staged 25 users/2 weeks → 200 users/4 weeks with graduation criteria, and state in the invite which decisions are final. `[recurring]`

### Long-term (1+ years)
- Stand up a static, read-only browser archive of removed-feature data for 12 months post-sunset (email-verification access, minimal storage cost). `[single]`
- Negotiate one destination-app migration partnership per cut feature and surface "Export to [Partner App]" inside the export flow. `[single]`

---

## Key Considerations

**Opportunities**:
- Public "Simplification Roadmap" framing turns the announcement into a rallying point for existing fans and pre-empts surprised Reddit/Twitter posts.
- A "we gave 75 users the new app" behind-the-scenes narrative, published before launch, creates social proof and defuses the "they didn't listen" critique.
- Legacy-mode opt-in rate doubles as a data signal: high opt-in flags a feature that may deserve a migration path rather than a hard cut.

**Risks & Challenges**:
- Per-feature export engineering is roughly one sprint per feature — real cost against a 6-person team.
- A beta seeded with the most engaged (multi-feature) users risks manufacturing vocal critics rather than ambassadors.
- A "we got better" claim shipped alongside only removals (no visible improvement) is visibly untrue and erodes credibility.

**Trade-offs**:
- Confident public broadcast vs. per-user personal respect — the cluster argues for funding both simultaneously, which is the expensive path.
- Honest acknowledgment of loss vs. apology — the brainstormer draws a sharp line, treating apology as a signal of uncertainty.

**Conspicuous absences** (stances the brainstormer's output never took):
- The brainstormer names users, power users, and beta testers but never the **6-person engineering / support team's own capacity** as a constraint on this plan. Per-feature exports, a partner deal per feature, personalized per-user account emails, a maintained 12-month archive, and a two-stage beta are each recommended as if free of staffing trade-offs — yet Question 13 itself cites that same 6-person team as the reason for cutting features. The plan's own preconditions (who builds and runs all this) are never established.
- Every recommendation assumes the **retention upside justifies the cost**, but no answer surfaces the class of user for whom no message works — users who will churn regardless. No threshold or kill-criterion is offered for deciding when respect-driven effort stops paying off, leaving the program open-ended.

---

**Questions addressed**: 4
**Response sources**: 1 (generic brainstormer)

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

---

# Summary: Long-Term Strategy and Competitive Positioning

## Executive Summary

This cluster's organizing tension is between disciplined narrowness and inevitable re-expansion. The brainstormer argues that the app's entire defensive moat comes from doing one thing — the workout moment — extraordinarily well, while every long-term answer also concedes that a healthy product will face pressure to add features again. The strategy that wins is therefore not "stay small forever" but "make growth expensive on purpose," so the same enthusiasm that produced 15 features cannot quietly rebuild the bloat.

On positioning, the recurring claim is that depth beats breadth as a competitive weapon. A focused social fitness app can own contextual continuity across the 20-minute pre/during/post-workout window, structure accountability around real workout events rather than photos or steps, and accumulate longitudinal behavioral insight ("you lift 12% heavier on Tuesday mornings after 7+ hours of sleep") that competitors who never had measurement discipline cannot replicate. Critically, the moat is framed as growing with user tenure rather than with feature count — a direct rebuke of the original product's logic.

On re-expansion, the through-line is converting feature decisions from enthusiasm contests into evidence-and-investment decisions. Every gating mechanism proposed — three independent evidence sources, one-in-one-out, revenue-per-feature math, good-fit-user filtering, and a quarterly health audit — is a different mechanism for the same goal: keeping effort-to-surface-area roughly constant so the team can only grow once it has proven it is not already overextended.

---

## Key Themes

### Depth as a moat that compounds with tenure
The strongest competitive claim is that owning one use-case end-to-end creates defensibility no broad platform or thin logger can copy without a full redesign. Contextual continuity, sub-30-second logging with smart plate math, and a 90-day insight layer all recur as expressions of the same idea: discipline about what you measure and design becomes a reputational and data moat that deepens over months.

### Identity over utility for retention
Drawing on Peloton, the brainstormer argues "product as identity" beats "product as utility" — pick a specific archetype ("the 3x-a-week gym regular who just wants to feel good") and build every push notification, micro-copy line, and onboarding screen around it. Identity is positioned as the engine of organic referral, since users want others to know they use it.

### Make growth expensive on purpose [recurring]
Re-expansion discipline runs through every Question 20 response: hard gates (three evidence types, one-in-one-out, a 25% retention floor, revenue-per-feature math) exist to slow additions structurally rather than by committee. The unifying logic is that the culture which built the bloat resets only when adding a feature costs something concrete.

### Make subtraction routine, not traumatic [recurring]
Deprecation appears twice as a standing ritual rather than a crisis: the quarterly feature-health audit (15% engagement watch list, removal after two stale quarters) and the one-in-one-out rule both turn killing features into ordinary maintenance, building institutional memory that resists future bloat.

---

## Recommended Actions

### Immediate (0-3 months)
- Pick and document a single good-fit archetype in a one-page profile, then rewrite onboarding, push-notification tone, and key micro-copy around that identity. [single]
- Spend the first 30 days post-relaunch identifying the top 10% of users by retention, session length, and referral behavior to seed that profile. [single]

### Near-term (3-12 months)
- Adopt a one-in-one-out feature policy gated on a hard retention floor: no expansion unless 30-day retention exceeds 25% for two consecutive months, and every addition demotes or deprecates a named feature. [recurring]
- Require three independent evidence types (qualitative interviews, quantitative usage-gap data, unprompted user feedback) within a 60-day window before any feature enters the roadmap. [recurring]
- Require a lightweight revenue-per-feature business case before design: estimate the additional retained users needed to break even, and validate the acquisition path with a waitlist or survey before writing code. [recurring]

### Long-term (1+ years)
- Stand up a quarterly feature-health audit: track 30-day touch rate per feature, watch-list anything under 15% engagement, and remove it after two stale quarters absent a retention exception; pair each removal with a "what did we learn" retrospective. [recurring]
- Build the longitudinal insight layer on minimal, consistent data (workouts plus one mood/energy signal) so that after ~90 days the app surfaces genuinely personal patterns competitors cannot replicate. [single]

---

## Key Considerations

**Opportunities**:
- Owning the 20-minute workout window end-to-end is a positioning no broad competitor or single-purpose logger can match without a full redesign.
- A disciplined data moat compounds with user tenure, turning early measurement restraint into a durable late advantage.

**Risks & Challenges**:
- Re-expansion pressure is treated as inevitable once retention is healthy; without enforced gates the team is expected to rebuild the bloat within 18 months.
- Gating rules ("teams hate this rule at first") face internal resistance and need political cover to survive.

**Trade-offs**:
- Narrowness that creates the moat is the same constraint that caps growth — the strategy deliberately makes the team slower in exchange for defensibility.
- Evidence-and-investment gates raise decision quality but add latency to every feature, which can frustrate a PM culture used to shipping on enthusiasm.

**Conspicuous absences** (stances the brainstormer's output never took):
- Every re-expansion gate is internally facing (retention, engagement, evidence convergence), but the response never establishes the acquisition channel that those retention thresholds and revenue-per-feature math depend on — the break-even logic in Question 20 assumes a way to bring new retained users in that is never named (check b).
- The positioning recommendations name users and the team but skip the competitive-response dimension: the response never asks what happens when a broad-feature incumbent simply copies the one tight use-case, even though "hard to copy without a full redesign" is the load-bearing defensibility claim (check c).

---

**Questions addressed**: 2
**Response sources**: 1 (generic brainstormer)
