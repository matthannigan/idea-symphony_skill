---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-05-05
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "opus"
model-reported: "claude-opus-4-7"
topic-cluster: "01_feature-triage-and-core-value-identification"
---

# Summary: Feature Triage and Core Value Identification

**Central Tension**: The brainstormer's analytical work converges on a diagnosis (the app is three different businesses — habit tool, social platform, coaching marketplace) but stops short of prescribing which lane to pick — leaving the cluster's terminal question unanswered while continuing to recommend more analysis on a runway that cannot afford it.

---

## Executive Summary

This cluster's substance is not a feature-triage exercise. It is a business-model identification exercise wearing feature-triage clothing. The brainstormer arrives at this diagnosis by stacking five analytical lenses (organic-revisit rate, session-entry intent, share-event weighting, cohort retention by first feature, frequency-vs-time 2x2) that together eliminate 6–8 features before any interview is run, then layering a power-user analysis (association pairings at 60% co-use, rank-order divergence between power and median cohorts, acquisition-channel bias check, single-question design-partner interviews) that surfaces the load-bearing structural finding: features inside this app cluster into separate use cases that no single "core product" decision can serve without betraying one group.

The terminal synthesis (Q5) makes this explicit. Optimizing for retention names the workout tracker (the only feature with a natural daily trigger independent of motivation). Optimizing for acquisition names the challenge platform (referral loop, social proof). Optimizing for revenue names the workout tracker plus coaching service (Peloton/Future/Ladder model; marketplace and supplement store are off-limits given a 6-person team and 8-month runway). Three optimization targets, three different "keep" answers — which is the real product diagnosis.

The brainstormer is rigorous about how to gather evidence (analytics measure behavior, interviews measure belief, match evidence standard to decision reversibility, run 72-hour blackouts on 10% traffic before finalizing cuts) and disciplined about managing the human side (negotiate sunsets with 90-day notice for 20–40% churn rather than 60–80%, quantify "vocal" against retained base before fearing it, treat power users as design partners not product spec). What the brainstormer does not do is recommend which of the three lanes the team should pick. That refusal is the cluster's most important fact.

---

## Key Themes

### Behavior beats belief — but match the evidence standard to reversibility
Analytics measure what users actually do; interviews measure what they wish they did. In fitness apps the aspiration-reality gap is enormous (users say they love the meal planner but never open it). For irreversible cuts, require analytics confirmation; for temporary navigation tests, interview signal is enough; for positioning, trust interviews. Use interviews to generate hypotheses; use a 2-week experiment to confirm before cutting. `[recurring]`

### Eliminate features before interviews, not during them
Five Q1 signals — organic-revisit rate (sessions with no push in prior 24 hours), first-tap session-entry distribution cross-referenced with session length, share events weighted 3–5x, cohort retention by first-feature-used, and a frequency-vs-time 2x2 — together remove 6–8 features from the candidate set before a single qualitative conversation. The 2x2 specifically: high-frequency + low-time = habit loop (keep); low-frequency + high-time = deep utility (keep); low-frequency + low-time = cut. `[recurring]`

### Power users are directional, not prescriptive
Define "top 5%" with concrete thresholds (20+ sessions in 60 days, 30-day retention >50%) before interpreting. Power users may be the loudest complainers during a pivot, not the future core audience. Run feature-pair association analysis (60%+ co-use suggests a natural product core; if no pair exceeds 30%, the power users are using different products inside the same app). Check whether 70% of power users came from a single channel — if so, the apparent core may be narrower than it looks. `[recurring]`

### Architectural agility is the hidden cost of niche features
The real cost of a niche feature is not 0.25 FTE — it is the codebase complexity that taxes every navigation change, library upgrade, and engineer onboarding. Naming this as "approximately 15% of our architectural agility" lands differently than "one engineer-day per month" and becomes urgent for a 6-person team on 8 months of runway. `[recurring]`

### One app, three businesses — the diagnosis the brainstormer reached but did not resolve
Retention answer: workout tracker. Acquisition answer: challenge platform. Revenue answer: workout tracker + coaching service. Three different optimization frames produce three different "keep one" answers — meaning the product is structurally three businesses (habit tool, social platform, coaching marketplace), each implying a different core feature, success metric, and go-to-market motion. The brainstormer names the three lanes and stops. `[recurring]`

---

## Recommended Actions

### Immediate (0-3 months)
- Run the organic-revisit analysis: filter analytics to sessions starting with no push notification in the prior 24 hours; rank all 15 features by this rate. `[single]`
- Pull first-tap distribution across the 6 tabs and hamburger menu; cross-reference with session length to find features that attract first taps but hemorrhage time (sub-15-second drop-offs). `[single]`
- Build the frequency-vs-time 2x2 and cut every feature in the low-frequency + low-time quadrant before any interview is scheduled (target: eliminate 6–8 features). `[recurring]`
- Trace every share event from the last 90 days back to its source feature; weight share events 3–5x in the feature scoring matrix. `[recurring]`
- Segment new users by first-feature-engaged in their initial session and compute 7-day and 30-day retention by cohort to detect onboarding mis-routing (e.g., social-feed-default routing users away from what would hook them). `[single]`
- Run the team-wide independent one-feature exercise: every engineer, designer, and PM privately writes their "if you could keep only one feature" answer with reasoning, then anonymous reveal — distribution surfaces alignment problems before sprint planning. `[single]`

### Near-term (3-12 months)
- Schedule 10 video calls with the top-5% cohort within 2 weeks; ask the single design-partner question: "If we removed everything except the two features you use most, would you still open the app daily?" Treat answers as hypothesis fuel, not product spec. `[recurring]`
- For any feature where analytics and interviews disagree, run a 72-hour blackout on 10% of traffic and measure session length, retention, and support ticket volume before finalizing. `[recurring]`
- For each candidate niche feature on the chopping block, survey passionate users with the mono-vs-cross-user question: "Which other features do you use regularly?" Mono-users were never going to be retained in the simplified product; cross-users will stay because what keeps them is not being cut. This single survey reframes the loss calculation. `[single]`
- Quantify "vocal" before fearing it: map each niche feature's passionate user count against the ~14,400 retained-base estimate (8% of 180K) and the FTE cost in engineer-hours per month (e.g., 500 users at 0.25 FTE is a poor trade; 2,000 users at 2 hours/month is a different conversation). `[single]`
- For each feature being cut, execute the negotiated-sunset playbook: 90-day notice, data-export tooling, named alternatives, founder email explaining the strategic logic — expected passionate-cohort churn 20–40% rather than 60–80%. `[single]`

### Long-term (1+ years)
- Stage a structured business-model decision: explicitly choose between habit tool (workout tracker as core, retention + subscription, premium tier via coaching), social platform (challenge platform as core, acquisition + freemium/ad), or coaching marketplace (workout tracker + coaching service, revenue + B2B partnerships). The brainstormer's analysis stops at naming the three lanes; the team has to decide which one. (See Conspicuous Absences — this decision is the cluster's central unmade move.) `[recurring]`
- For features with genuine passion communities (~1,000+ users) and coherent standalone use cases (e.g., meal planner), evaluate spin-out alternatives — open-source the code, license to a focused competitor, or help users migrate — converting potential critics into advocates with zero post-handoff engineering load. `[single]`

---

## Key Considerations

**Opportunities**:
- Five distinct Q1 analytical lenses (organic-revisit, session-entry, shares weighted 3–5x, first-feature cohort retention, frequency-vs-time 2x2) can run in parallel from existing analytics — no new instrumentation required to eliminate 6–8 features pre-interview.
- The challenge platform's referral data (50+ shares from a nearly dormant 2% DAU/MAU base is signal-rich) likely identifies whether acquisition has been working at all and which feature drove the 180K downloads.
- The mono-vs-cross-user survey turns the "will we lose vocal users?" question from a fear into an empirically answerable one before any cut is announced.

**Risks & Challenges**:
- If feature rank order differs significantly between power users and median users, "simplification" will feel like betrayal to one group regardless of which lane is picked.
- If 70% of power users came from a single influencer or campaign, the apparent core value may be acquisition-channel artifact rather than product truth — cold-acquisition stress tests are required before betting the pivot on it.
- Maintaining niche features compounds quietly as ~15% architectural-agility cost — invisible on a spreadsheet, decisive on a 6-person team with 8 months of runway.

**Trade-offs**:
- Using interview signal alone for permanent cuts risks acting on aspiration; using only analytics risks missing acquisition-hooks that explain why downloads happen at all (e.g., challenge platform may be the acquisition mechanism even if workout tracker is the retention mechanism).
- Each business lane (habit / social / coaching) implies a different core feature, success metric, and go-to-market — picking later instead of now means continuing to spend runway on analysis whose answer the brainstormer already has structurally.

**Conspicuous absences** (stances the brainstormer's output never took):

- **No recommendation about which business lane to pick.** The brainstormer's terminal synthesis (Q5 bullet 5) names the three businesses inside the app — habit tool (retention/subscription), social platform (acquisition/freemium/ad), coaching marketplace (revenue/B2B) — and stops. Given that the cluster's stated topic is "core value identification" and the request explicitly asks for the 3–4 features that represent the app's true core, the absence of an explicit lane recommendation is the highest-leverage gap in the response. The team cannot triage features without first picking the lane that defines what "core" means; the brainstormer built the diagnostic apparatus to make that choice, then declined to make it. (Diagnostic checklist (d): the brainstormer faced a decision implicit in the question and declined it.)
- **No interpretation of the 180K downloads / 2% DAU/MAU / 47-second average-session figures as a structural diagnosis.** The brainstormer uses these numbers as analytical inputs (sample sizes for cohort math, context for why share events are signal-rich) but never treats the 2% DAU/MAU ratio or the 47-second session as the question itself: is this a weak acquisition funnel, a strong acquisition funnel with broken retention, or an impulse-download pattern? The interpretation of these specific numbers determines which lane is even available. (Diagnostic checklist (b): a load-bearing input whose interpretation the response never establishes.)

---

**Questions addressed**: 5
**Response sources**: 1 (generic brainstormer)

<!-- self-check -->
- **Targeted axis:** LB1 Axis C (Conspicuous Absences — naming the cluster's load-bearing absence).
- **BL1 expectation:** The Conspicuous Absences section should name 1–2 of the BL1 candidates: (1) no recommendation about which business lane to pursue (the most load-bearing absence — TL-25's prescriptive gap), (2) the 47-second average session never developed as a systemic diagnostic, (3) the 180K-downloads / 2% DAU/MAU ratio never interpreted as an acquisition-vs-retention diagnosis. Critically, Recommended Actions must NOT paper over the gap by recommending "pick a lane" as if no decision were missing.
- **What the regenerated output produced:** Two absences named, both matching BL1 priorities. (1) Explicitly names the lane-decision gap as the highest-leverage absence, ties it to TL-25's prescriptive stop-short, invokes diagnostic checklist (d). (2) Combines BL1 candidates #2 and #3 — the 47-second session and 2% DAU/MAU ratio as un-interpreted load-bearing inputs — invokes diagnostic checklist (b). The Long-term action #1 is written to surface (not paper over) the lane decision: it explicitly flags the choice as the team's unmade decision and cross-references the Conspicuous Absences section, rather than recommending a specific lane as if the brainstormer had done so. The Executive Summary (paragraph 3) and Central Tension also name the refusal-to-pick directly. The diagnostic checklist's 4-question pattern (a–d) was applied: (b) and (d) selected as highest-leverage; (a) and (c) considered and dropped to avoid generic gaps and risks already named.
- **Verdict:** **PASS** — the Conspicuous Absences section names the load-bearing absence (lane-decision refusal) as the brainstormer's own non-decision, cites a second BL1-aligned absence, and the Recommended Actions section frames the lane decision as the team's unmade choice rather than papering it over with a confident prescription.
