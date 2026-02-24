# Targeted Persona Investigations — Cross-Investigation Synthesis

**Date:** 2026-02-18
**Supersedes:** `docs/dev/2026-02-17_targeted-persona-investigations-decisions.md`
**Parents:**
- `docs/dev/2026-02-17_targeted-persona-investigations-results.md` (Phase 1 results, B1-B12)
- `docs/dev/2026-02-18_targeted-persona-investigations-results.md` (Phase 2 results, B15-B26)
- `docs/dev/2026-02-17_phase3-persona-revisions.md` (Phase 1 implementation)

This document consolidates all persona decisions from both investigation phases (B1-B12 original investigations, B13-B26 refinement and validation). It supersedes the 2026-02-17 version.

---

## Part 1: Confirmed Decisions

### 1.1 Persona Retirements

**Retire The Questioner** — strongest consensus finding across the entire evaluation.
- B3 (Challenge Overlap): recommends retirement. Subsumed by DA and FPT, inconsistent quality (CV=34.3%), incomplete ideation mode that leaves ideas as open questions.
- B11 (Analytical Convergence): independently recommends retirement. Lowest output volume (4.7KB avg), highest variance, fewest unique ideas (0–1 per topic). Most substantive content restates other personas' ideas as questions.
- B12 (Output Gap Detection): notes assumption-challenging function is better performed by DA and FPT.
- No investigation recommends keeping or refining The Questioner. This is unambiguous.

**Retire The Analyst** from Phase 3. Design prompt refinements for Phase 2 (Question Generation).
- B11: "The closest call." Strongest producer of the retirement candidates (6.2KB avg), but organizational frameworks overlap heavily with other analytical personas.
- Retirement does not require replacement; the analytical roster is well-covered by remaining personas.

**Retire The Synthesizer** from Phase 3.
- B4: "Consider deprioritizing" for Phase 3; assess fit in synthesis phases.
- B10: Definitive reassignment recommendation. Operating "at perhaps 40% of its potential" in Phase 3 isolation.
- True capability (integrating diverse perspectives) is wasted in isolated brainstorming.

**Decision:** All three retirements confirmed. Implementation pending.

### 1.2 Persona Retentions — Original Roster

The following original-roster personas are confirmed for retention. No investigation across either phase recommends retiring any of these.

**Devil's Advocate** — unanimously "Highly Distinct" (B3, B9, B11). Only persona whose output mode (critique rather than generation) produces fundamentally different content. Prompt refined (B3): strengthened mitigation requirement to consistently pair problems with solutions. Confirmed B17.

**First Principles Thinker** — unanimously endorsed (B3, B8, B11). Strongest performer in the challenge cluster. Highly distinct from Simplifier (B8). No prompt changes needed.

**Pragmatist** — unanimously endorsed (B2, B11). "Highly Distinct" from Technical Expert (B2). Extreme consistency (CV=8.3%). No prompt changes needed.

**Technical Expert** — unanimously endorsed (B2, B11). "Highly Distinct" from Pragmatist (B2). Appropriate topic sensitivity (CV=26.5%). No prompt changes needed.

**Audience Advocate** — unanimously "Highly Distinct" (B6, B7, B11). Prompt refined with ethnographic augmentation (B6). B17 spot-check confirmed: ethnographic elements enriched without diluting core identity; B6 hybrid-drift concern did not materialize.

**Storyteller** — unanimously endorsed (B6). Named-character technique is unique across all personas. No prompt changes needed.

**Visionary** — unanimously endorsed with prompt refinement (B1, B5). Prompt refined to discourage trend-citing and push toward paradigm shifts (B1). B17 spot-check confirmed: trend-citing near-zero, no-analog ideas present. Minor volume decrease is format-driven, not content regression.

**Constraint Flipper** — endorsed without reservation (B9). "Highly Distinct" from both Provocateur and Devil's Advocate. No prompt changes needed.

**Analogist** — no investigation flags concerns. Cross-domain parallels noted as partially covering External Scout gap (~15% per B12). No prompt changes needed.

**Connector** — prompt refined to remove vestigial "reference prior discussions" instruction and mechanical "Connect X with Y" formula (B4, B10). B17 spot-check confirmed: mechanical formula replaced with varied, structurally deeper connection language; cross-domain range more than doubled.

**Momentum Builder** — ✅ RESOLVED (was Conflict 1 in Phase 1).
- B5 recommended keeping with prompt refinements. B10 recommended reassignment to synthesis.
- Prompt refined: removed "build on others' ideas" framing; reframed as "build on the problem" with progressive elaboration pattern (B5/B10).
- B15 retest results: All concerns resolved. Phantom-input references at ~0% (down from ~30%). Progressive elaboration visible in >90% of responses. Pragmatist overlap Low-Moderate — personas remain clearly differentiated in voice, structure, framing, and energy.
- **Decision:** Keep in Phase 3 with refined prompt. B10's reassignment recommendation declined based on B15 evidence.

**Futurist** — ✅ RESOLVED (was Conflict 2 in Phase 1).
- B1 recommended prompt refinement. B11 recommended retirement.
- Prompt refined twice. First refinement (B16): improved from Low to Low-Moderate distinctiveness, but ~80% fabricated statistics, 35-40% Technical Expert overlap. Second refinement (B22): achieved Moderate distinctiveness.
- B22 final test results: Fabricated stats ~5-7% (down from ~80%). Tech Expert overlap ~22% (down from 35-40%). Temporal lens ~26% (down from 30-35%). Unique ideas 4-8/topic. Infrastructure-readiness now in strategic rather than architectural form. Visionary convergence ~19-20%.
- Two metrics marginally miss targets (Tech Expert overlap ~22% vs <20%; temporal lens ~26% vs <25%). Both within 2-3 percentage points. Further refinement would face severe diminishing returns.
- **Decision:** Retain with current prompt. The Futurist's value proposition — strategic trend positioning, infrastructure-readiness thinking, external evidence grounding, market-timing perspective — is now clearly differentiated. No other persona consistently operates in this territory.

### 1.3 New Persona Inclusions

**Phase 1 additions (B7-B9, B12):**

**Empath** — include in roster (B7, B12). Highest-performing new candidate. Fills genuine gap in emotional-first reasoning. "Highly Distinct" from both Audience Advocate and Storyteller. Unique capability to flag emotional inauthenticity ("performative allyship," "compliance energy"). Prompt refined with footer format and reinforced "don't rationalize" directive.

**Simplifier** — include in roster (B8, B12). Strongest validation of any new persona. Subtractive orientation is fundamentally different from FPT's decomposition and Pragmatist's feasibility focus. No prompt refinements recommended — existing anti-confusion guardrails are working as intended. Most consistent new persona (CV=12.5%).

**Provocateur** — include in roster (B9, B12). Fills genuine gap in absurdist/generative provocation. "Highly Distinct" from both Devil's Advocate and Constraint Flipper. Prompt refined for volume consistency, extractability cues, and whimsical-topic strategy. B17 spot-check confirmed: Volume CV improved from 22.3% to 9.7%, extractability >90%, opposite-direction whimsical strategy working. No regression detected.

**Systems Thinker** — include in roster (B12 gap #1, validated B13/B21/B26).
- Fills strongest gap signal: no existing persona maps feedback loops, system archetypes, or traces second-order consequences.
- Validated through three rounds (B13 initial, B21 first refinement, B26 second refinement).
- B26 final results: Vocabulary target MET — "reinforcing/balancing loop" density at 3.68/1k words (down from 9.85). Archetype depth maintained at ~100% traced. Distinctiveness Highly Distinct vs FPT, Futurist, Connector.
- Selectivity target NOT MET (~18% vs >50%) — structural incompatibility with mode-switching. The persona treats systems analysis as its identity, not an optional lens. Accepted as a stable characteristic.
- **Caveat:** Verbosity trend (+80% over original). May need length constraints if per-persona token limits are implemented.

**Lawyer** — include in roster (B12 gap #2, validated B14/B20/B25).
- Fills regulatory/compliance gap that was essentially uncovered across all topics.
- Validated through three rounds (B14 initial, B20 first refinement, B25 second refinement).
- B25 final results: COPPA/FERPA/childcare licensing misapplication fully resolved. HIPAA down to 1 remaining instance (from systemic misapplication). Best-practice framing at ~80% strict consistency (up from ~25%). Framework density at ~6-7 direct obligations on space party (down from ~35+ in B20). Tool library and habit tracker regulatory citations accurate and comprehensive. Distinctiveness Highly Distinct vs Devil's Advocate.
- The decisive interventions were the explicit inapplicability list (knowledge gap, not reasoning gap) and mandatory enforceability test (classification-based > count-based constraints).

**Phase 2 additions (B18-B19, B23-B24):**

**Accountant** — include in roster (B12 Financial/Economic gap, validated B18/B23).
- Fills gap in financial analysis: no existing persona produces budgets, cost structures, revenue models, unit economics, or break-even estimates.
- B23 final results: Over-financialization partially resolved — worst vocabulary offenses eliminated (engagement multipliers, social media value metrics), but "ROI" and "unit economics" still applied to sub-$20 personal purchases (~4-5 instances on space party). Invented precision at ~10-12% (down from ~15-20%, approaching <10% target). Topic sensitivity maintained — clear gradient from personal → nonprofit → commercial. Hidden cost identification strong (≥2 unique per topic). Distinctiveness Highly Distinct vs Pragmatist and Analyst.
- **Acknowledged limitation:** Commercial framing of personal events (tiered participation pricing for a birthday party). Pattern-specific guidance may help if a future round is attempted: "A birthday party has a budget, not a revenue model."
- **Decision:** Retain. Core strengths fully intact, remaining issues are minor and non-structural. Further refinement would yield diminishing returns.

**Politician** — include in roster (B12 gap #7: political/governance dynamics, validated B19/B24).
- Fills gap in stakeholder power mapping, coalition-building strategies, opposition analysis, and governance design. No existing persona navigates the human politics of who decides what.
- B24 final results: Space party vocabulary calibration partially resolved — 4/5 specific banned terms eliminated, clusters 01/02/04 substantially cleaner, interpersonal dynamics fully retained. Habit tracker technical discrimination NOT MET — factional caucus language eliminated but pervasive political reframing of engineering decisions persists (≥10 instances vs ≤2 target). Tool library depth maintained at full B19 levels. Specificity, distinctiveness (Highly Distinct vs Lawyer, AA, DA), and coalition sequencing all maintained.
- **Acknowledged limitation:** The political lens is the persona's identity — it sees everything through a power-dynamics lens, including topics where simpler framing would suffice. Over-application concentrates in space party cluster 03 (logistics) and habit tracker cluster 03 (technical architecture). Further refinement risks flattening the tool library analysis that makes this persona uniquely valuable.
- **Decision:** Retain with acknowledged limitation. 4/6 criteria fully met, 2/6 partially met. The tool library — the persona's primary value territory — is undiminished.

### 1.4 Gap Resolution

**Systems Thinker (B12 #1 gap): FILLED.** New persona created and validated through B13/B21/B26. Strong gap coverage confirmed.

**Regulatory/Compliance (B12 #2 gap): FILLED.** New Lawyer persona created and validated through B14/B20/B25. Strong gap coverage confirmed.

**Financial/Economic modeling (B12 #3 gap): FILLED.** Investigation confirmed gap originates in Phase 3 brainstorming (no persona produces financial analysis). New Accountant persona created and validated through B18/B23. Gap coverage confirmed with minor polish remaining.

**Political/Governance dynamics (B12 #7 gap): FILLED.** New Politician persona created and validated through B19/B24. Gap coverage confirmed with acknowledged limitation on technical topics.

**External Scout (B12 #4 gap): DEFERRED.** External scouting must rely on real-world, documented findings. Too much hallucination potential for a persona charged with assessing competitive landscape without supporting data. Deferred to a non-persona approach: deep research request feeding into the system after Phase 1 or Phase 2.

### 1.5 Structural Findings

**Analytical convergence is structural, not just thematic** (B11). The analytical personas converge on *which* topics to address and *what* solutions to propose, differing primarily in *how* they frame ideas. Convergence is driven by question structure. Worst on technical/product topics (habit-tracker: 4/5 themes at 8/8 convergence), better on creative/social topics.

**Topic sensitivity is real and consistent** across multiple investigations. The orchestrator's topic-aware persona selection should account for these patterns:
- Provocateur: more output on technical topics (B9)
- Futurist: weakest on creative/experiential topics (space party ~35% temporal lens), strongest on systemic/institutional topics (B22)
- Systems Thinker: over-applies on simple topics (space party), strongest on complex systems (B26)
- Accountant: strongest on medium-complexity topics (tool library nonprofit), over-financializes personal-scale topics (B23)
- Politician: over-applies political framing on purely technical clusters (B24)

**Human-centered triad is well-validated** (B6, B7). Empath (gut feelings) → Audience Advocate (stakeholder needs) → Storyteller (lived experience) form a complementary set. Any two of three provide coverage without redundancy.

**Challenge triad is well-validated** (B9). Provocateur (generative absurdism) → Constraint Flipper (pragmatic reframing) → Devil's Advocate (critical analysis) form a clean cluster with no significant overlap.

**Prompt refinements can change *how* a persona expresses its identity but not *when* it applies it** (B26). Vocabulary-level changes are within compliance range; behavioral-level changes (when to apply the lens) are not. This applies broadly: the Systems Thinker will always think in systems, the Politician will always see politics, the Lawyer will always find regulations.

**Classification-based constraints outperform count-based constraints** (B25). The Lawyer's enforceability test (classify each regulation as "enforceable" or "best practice") achieved what density ceilings could not. This principle likely generalizes to other personas.

**Orchestrator decision:** Refine orchestrator prompts using these insights. Consider framing increased effort not just as increasing in brainstorming persona count but also completion of clusters like the challenge triad.

---

## Part 2: Conflicts and Resolutions

All seven conflicts identified in Phase 1 are now resolved.

### Conflict 1: Momentum Builder — Keep vs. Reassign ✅ RESOLVED

**Original conflict:** B5 said keep and refine; B10 said reassign to synthesis/ultra-mode. Core tension: MB produced solid ideas but "yes, and" framing was structurally mismatched with isolated brainstorming, manufacturing phantom inputs.

**Resolution:** Keep in Phase 3 with refined prompt.
- B5 prompt refinements applied (remove "build on others" framing, reframe as "build on the problem").
- B15 retest confirmed all concerns resolved: phantom-input at ~0% (down from ~30%), progressive elaboration >90%, Pragmatist overlap Low-Moderate.
- B10's reassignment recommendation declined based on B15 evidence: the refined MB functions effectively as a genuine independent brainstormer.

### Conflict 2: The Futurist — Refine vs. Retire ✅ RESOLVED

**Original conflict:** B1 said refine prompts (distinct from Visionary, unique infrastructure-readiness thinking); B11 said retire (Low Distinctiveness against full roster, temporal framing is a lens not a generative engine).

**Resolution:** Retain with refined prompt (two rounds of refinement).
- B1 prompt refinements applied, then further refined after B16 retest.
- B22 final test confirmed Moderate distinctiveness: fabricated stats ~5-7% (down from ~80%), unique ideas 4-8/topic, infrastructure-readiness in strategic form.
- B11's retirement recommendation declined: prompt refinements successfully increased unique output and the Futurist's strategic trend positioning is now clearly differentiated. The temporal framing, while still a partial lens (~26%), now generates genuine trend-specific ideas rather than decorating shared ideas.

### Conflict 3: The Synthesizer — Deprioritize vs. Reassign ✅ RESOLVED

**Original conflict:** B4 said cautiously deprioritize; B10 said definitively reassign.

**Resolution:** Retire from Phase 3. (Resolved in Phase 1.)

### Conflict 4: The Analyst — Retire vs. Reassign vs. Augment ✅ RESOLVED

**Original conflict:** B11 recommended retirement; B12 noted Financial/Economic gap the Analyst could partially fill.

**Resolution:** Retire from Phase 3. Design prompt refinements for Phase 2 Question Generation. (Resolved in Phase 1.) Financial/Economic gap addressed separately via Accountant persona.

### Conflict 5: Devil's Advocate Augmentation Scope ✅ RESOLVED

**Original conflict:** B3 said minor constructiveness tweak; B12 said add regulatory identification.

**Resolution:** Minor prompt tweaks only (constructiveness per B3). Regulatory coverage addressed separately via Lawyer persona. (Resolved in Phase 1.)

### Conflict 6: Ethnographer Gap — Absorb vs. Separate ✅ RESOLVED

**Original conflict:** B6 said augment AA; B12 said substantial uncovered territory remains; B7 said human-centered triad may suffice.

**Resolution:** Augment Audience Advocate prompt per B6. B17 confirmed ethnographic augmentation enriched without diluting core identity. (Resolved in Phase 1, confirmed in Phase 2.)

### Conflict 7: Adding Analytical Personas vs. Reducing Analytical Dominance ✅ RESOLVED

**Original conflict:** B11 recommended reducing analytical count from 8 to 5; B12 found the top gaps are all analytical in nature.

**Resolution:** Four new analytical-adjacent personas added (Systems Thinker, Lawyer, Accountant, Politician) alongside three retirements (Questioner, Analyst, Synthesizer). Net change: +1 analytical persona. Each new persona fills a genuinely distinct gap validated through extensive testing. The remaining analytical overlap concern (B11) is structural and question-driven, not addressable by roster changes alone — the orchestrator's topic-aware selection logic is the appropriate mitigation.

---

## Part 3: Complete Actions Summary

### Phase 1 Actions (implemented in 2026-02-17 revisions)

1. ✅ Retired Questioner, Analyst test responses from Phase 3 test runs
2. ✅ Included Empath in roster with prompt refinements
3. ✅ Included Simplifier in roster as-is
4. ✅ Included Provocateur in roster with prompt refinements
5. ✅ Refined Visionary prompt — discourage trend-citing, push toward paradigm shifts
6. ✅ Refined Devil's Advocate prompt — consistently require mitigations alongside critique
7. ✅ Refined Connector prompt — shed mechanical formula, strengthen cross-domain bridging
8. ✅ Refined Momentum Builder prompt — remove "build on others," reframe as progressive elaboration
9. ✅ Refined Futurist prompt — require trend citations, 1-5 year plausibility, infrastructure-readiness
10. ✅ Refined Audience Advocate prompt — add ethnographic elements
11. ✅ Created Systems Thinker persona — feedback loops, system archetypes, leverage points
12. ✅ Created Lawyer persona — regulatory frameworks, compliance, liability
13. ✅ Updated orchestrator — persona count, cluster framework, topic-sensitivity notes

### Phase 2 Actions (following B13-B26 investigations)

14. ✅ Refined Futurist prompt (second round) — directional language for citations, tech-boundary constraint, anti-decoration rule
15. ✅ Refined Lawyer prompt (second round) — explicit inapplicability list, mandatory enforceability test, MUST-level best-practice framing
16. ✅ Refined Systems Thinker prompt (second round) — vocabulary rotation alternatives, selectivity mechanism (vocabulary adopted; mode-switching not)
17. ✅ Created Accountant persona — financial analysis, cost modeling, hidden cost identification
18. ✅ Refined Accountant prompt — reduce over-financialization vocabulary, add hedging language, improve topic sensitivity
19. ✅ Created Politician persona — stakeholder dynamics, coalition sequencing, governance design
20. ✅ Refined Politician prompt — ban specific institutional jargon, add technical discrimination guidance
21. ✅ Confirmed Momentum Builder refinement via B15 retest
22. ✅ Confirmed Visionary, Provocateur, Connector, Audience Advocate refinements via B17 spot-check
23. ✅ Confirmed Futurist retention via B22 final test
24. ✅ Confirmed Accountant retention via B23 final test
25. ✅ Confirmed Politician retention via B24 final test
26. ✅ Confirmed Lawyer retention via B25 final test
27. ✅ Confirmed Systems Thinker retention via B26 final test

---

## Part 4: Remaining Items

### Acknowledged Limitations (accepted — no further investigation warranted)

These are structural characteristics of personas' cognitive modes, confirmed stable across multiple refinement rounds. Further prompt engineering would yield diminishing returns or risk over-correction.

- **Futurist:** ~26% temporal lens rate (common ideas with trend framing). Space party is weakest topic (~35%). Strongest on systemic/institutional topics. Tech Expert overlap ~22% (borderline miss of <20% target).
- **Accountant:** ~10-12% invented precision (suspiciously precise unverifiable figures). Over-financialization of personal-scale items (ROI on $15 glow sticks). Commercial framing of personal events (tiered pricing for birthday parties).
- **Politician:** Pervasive political reframing of technical decisions on habit tracker cluster 03 (≥10 instances vs ≤2 target). ~8 instances of institutional vocabulary on space party cluster 03.
- **Systems Thinker:** Selectivity structurally incompatible (~18% vs >50% target). Verbosity trend (+80% over original, +27% over B21). Systems analysis applied to every idea regardless of topic complexity.
- **Lawyer:** 1 remaining HIPAA direct-obligation citation on space party. 3 ambiguous-framing instances ("aligned with" instead of "best practice inspired by").

### Pending Implementation

- **Persona retirements** — Questioner, Analyst, Synthesizer still need formal removal from Phase 3 configuration. Test response files deleted; persona files and orchestrator references remain.
- **Analyst Phase 2 refinements** — Design prompt refinements to optimize the Analyst for Phase 2 Question Generation.
- **Orchestrator topic-sensitivity updates** — Update persona selection logic to account for confirmed topic-specific strengths and weaknesses (see §1.5).

### Deferred

- **External Scout gap** — Deferred to non-persona approach. Deep research request feeding into the system after Phase 1/2. Too much hallucination potential without supporting data.

### Monitoring Items (no action required — track for future)

- Visionary: "What if we completely eliminated the concept of X" construction may become formulaic if overused
- Connector: "There's a hidden connection between..." opener appearing frequently; minor AA overlap on CSA/cooperative models
- Systems Thinker: Verbosity trend — may need length constraints if per-persona token limits are implemented
- Provocateur: Within-topic volume consistency still has room for improvement (sustainability cluster notably smaller)
- Accountant: If future refinement attempted, add "A birthday party has a budget, not a revenue model" type guidance
- Politician: Cluster 03 is the problem child on both space party (logistics) and habit tracker (technical architecture)

---

## Appendix: Final Phase 3 Roster

**Active (19 personas):**

- Analytical core: Pragmatist, Technical Expert, First Principles Thinker, Futurist
- Human-centered triad: Empath, Audience Advocate, Storyteller
- Challenge triad: Devil's Advocate, Provocateur, Constraint Flipper
- Forward-looking pair: Visionary, Momentum Builder
- Cross-domain: Connector, Analogist
- System dynamics: Systems Thinker
- Specialized lenses: Lawyer, Accountant, Politician, Simplifier

**Retired from Phase 3 (3):** Questioner, Analyst, Synthesizer

**Total personas defined:** 22

---

## Appendix B: Consolidated Baseline Statistics (2026-02-18)

**Source data:** Best responses from all investigation runs, consolidated into `persona-eval-{topic}_2026-02-15` (3 topics × 4 clusters × 22 personas = 264 files).
**Scripts:** `docs/dev/2026-02-15_symphony-persona-eval/scripts/{response-stats,persona-comparison,cluster-comparison,structural-check}.sh`
**Output files:** `docs/dev/2026-02-15_symphony-persona-eval/{response-stats,persona-comparison,cluster-comparison,structural-check}_2026-02-18.txt`

> **Note:** These statistics include data from the Questioner, Analyst, and Synthesizer, which are slated for retirement from Phase 3. Their data is retained in the baseline for historical comparison but should not be interpreted as reflecting the active roster. Where relevant, their influence on aggregate metrics is called out.

### B1. Corpus Overview

- **264 files** across 3 topics, 4 clusters each, 22 personas
- **Total content:** 1,702.1 KB (space party 548.2 KB, tool library 614.8 KB, habit tracker 539.1 KB)
- **Average file size:** 6.4 KB (range: 2.5 KB – 14.1 KB)
- **100% frontmatter compliance** (264/264 files have YAML frontmatter)
- **Average structural metrics:** 4.7 h2 headings/file, 13.0 bullet responses/file

Tool library produces the most content per persona (avg 6.9 KB/file) — consistent with the finding that institutional/organizational topics draw more substance from most analytical personas. Habit tracker is the smallest (6.1 KB/file) despite being the most technically complex topic, suggesting depth of individual ideas matters more than volume on technical subjects.

### B2. Persona Volume Tiers

Avg bytes across all 12 files per persona:

**High volume (>8 KB avg):**
- Systems Thinker: 10.3 KB — highest by a significant margin, consistent with B26 verbosity finding (+80% over original)
- Politician: 8.5 KB — driven by the 13.1 KB technical-architecture file (the over-application from B24)
- Accountant: 8.5 KB — highest on space party logistics (13.5 KB) where over-financialization is most visible

**Above average (6–8 KB):**
- Lawyer: 7.9 KB | Storyteller: 7.6 KB | Momentum Builder: 7.5 KB
- Futurist: 6.8 KB | Provocateur: 6.7 KB | Connector: 6.3 KB
- Analyst*: 6.2 KB | Technical Expert: 6.2 KB | First Principles Thinker: 6.0 KB

**Average (5–6 KB):**
- Visionary: 5.9 KB | Analogist: 5.8 KB | Synthesizer*: 5.8 KB
- Devil's Advocate: 5.8 KB | Empath: 5.5 KB | Audience Advocate: 5.4 KB | Simplifier: 5.2 KB

**Below average (<5 KB):**
- Constraint Flipper: 4.9 KB | Questioner*: 4.6 KB | Pragmatist: 4.5 KB

(* = retiring from Phase 3)

The 4 new specialized-lens personas (Systems Thinker, Politician, Accountant, Lawyer) all rank in the top 4 by volume — they produce 50-130% more content than the roster median. This is partly appropriate (specialized lenses generate more granular analysis) and partly a verbosity concern (especially Systems Thinker). If per-persona token limits are implemented, these 4 will be most affected.

The Pragmatist's consistently low volume (4.5 KB, lowest) reflects its minimum-viable lens — it says what's needed and stops. This is a feature, not a deficiency.

### B3. Consistency Rankings

**Highly consistent (CV < 15%):** Pragmatist (8.3%), Synthesizer* (10.9%), Devil's Advocate (11.8%), Simplifier (12.5%), Lawyer (12.9%), Empath (13.5%), Visionary (13.9%), Analyst* (14.6%)

**Moderately consistent (CV 15–30%):** First Principles Thinker (15.4%), Audience Advocate (15.8%), Futurist (20.6%), Provocateur (21.2%), Politician (21.6%), Constraint Flipper (21.7%), Connector (21.9%), Systems Thinker (23.4%), Momentum Builder (23.5%), Storyteller (23.8%), Accountant (26.0%), Technical Expert (26.5%)

**High variance (CV > 30%):** Analogist (31.7%), Questioner* (34.3%)

The Lawyer is the most consistent of the new specialized personas (12.9% CV) — its regulatory analysis framework applies uniformly regardless of topic. The other three new specialized personas (Politician, Accountant, Systems Thinker) have moderate consistency (21-26% CV), reflecting that their analytical lenses fit some topics better than others — exactly the topic sensitivity documented in §1.5.

The Questioner's 34.3% CV (highest) further validates the retirement decision — it produces 2-3x more on space party than tool library, indicating an inconsistent cognitive mode.

### B4. Topic Sensitivity Patterns

Avg bytes per topic (largest spread first):

- **Storyteller:** space party 7.0 KB / tool library 10.2 KB / habit tracker 6.2 KB (spread: 4,004 bytes). Narrative mode thrives on the community/institutional topic, has less material on the abstract product topic.
- **Analogist:** 4.6 / 8.6 / 4.7 (spread: 3,935). Cross-domain connections are much richer for the tool library topic.
- **Technical Expert:** 5.0 / 8.6 / 5.4 (spread: 3,558). Expected — more to say about operations and systems than children's parties.
- **Questioner*:** 6.8 / 3.0 / 4.3 (spread: 3,739). Inverted pattern — produces most on the creative topic, least on the institutional one.

Most stable across topics:
- **Pragmatist:** 4.7 / 4.4 / 4.6 (spread: 342 bytes). Remarkably topic-agnostic.
- **Lawyer:** 8.2 / 8.3 / 7.9 (spread: 439). Finds regulatory material everywhere.
- **Momentum Builder:** 7.6 / 7.3 / 8.0 (spread: 705). Progressive elaboration mode works regardless of topic.

Politician shows an unexpected pattern: highest on habit tracker (9,890 avg), driven primarily by the 13.1 KB technical-architecture file. This quantitatively confirms the B24 finding that the Politician over-applies its lens on technical clusters.

### B5. Cluster Patterns

- Cluster 04 is consistently the smallest across all 3 topics (5.4–5.8 KB avg) — these are 4-question clusters vs. 5-question clusters elsewhere
- KB per question is remarkably stable at 1.22–1.47 across all 12 clusters, suggesting persona output scales roughly linearly with question count
- Tool library clusters 01–03 are very uniform (7.3 KB avg each) — the most even content distribution of any topic
- The 10 largest files are dominated by new specialized personas: Systems Thinker (4 of 10), Accountant (2), Politician (1), Momentum Builder (1), Storyteller (1)
- The 10 smallest files are dominated by the Questioner (5 of 10), plus Constraint Flipper (2), Futurist (1), Pragmatist (1), Analogist (1)

### B6. Structural Format Observations

**Two distinct formatting families exist in the roster:**

- **Bullet-format personas** (17): Use `* **bold headline** — description` pattern. Avg 15–25 bullets per file. Includes: Accountant, Analogist, Analyst*, Constraint Flipper, Devil's Advocate, Empath, First Principles Thinker, Futurist, Lawyer, Politician, Pragmatist, Questioner*, Simplifier, Storyteller, Synthesizer*, Systems Thinker, Technical Expert.
- **Prose-format personas** (5): Use numbered lists, paragraph-based responses, or other non-bullet structures. Show 0 `* **bold**` bullet count. Includes: Audience Advocate, Connector, Momentum Builder, Provocateur, Visionary.

The prose-format personas are all ones whose Phase 2 prompt refinements changed their formatting (Visionary's paradigm-shift framing, Provocateur's extractability cues, Connector's structural-parallel mode, AA's ethnographic elements, MB's progressive elaboration). The structural check's "LOW BULLET COUNT" flags for these 5 personas (60 of 61 flagged issues) are false positives — these personas produce comparable content volume through alternative formats.

**One genuine structural anomaly:** Systems Thinker on tool-library/equity-and-access has 0 h2 headings (the only file with this issue). This is a formatting error — the file has content but lacks question-level section markers.

**Response count patterns:** The specialized-lens personas (Accountant, Lawyer, Politician, Systems Thinker) consistently claim 20–25 total responses per 5-question cluster (4–5 per question), while most other personas claim 15 (3 per question). This higher idea-per-question rate is the primary driver of their elevated volume.

### B7. Implications for Orchestrator Design

1. **Token budget allocation:** If per-persona output limits are implemented, the specialized-lens personas (Systems Thinker, Politician, Accountant, Lawyer) will need proportionally more budget than the analytical-core and human-centered personas. Current spread is 2.3x between highest (Systems Thinker, 10.3 KB) and lowest (Pragmatist, 4.5 KB).

2. **Topic-aware selection reinforced:** The data quantitatively confirms the qualitative topic-sensitivity findings. Storyteller and Analogist show 2x output on tool library vs. other topics. Technical Expert shows ~70% more on tool library. Selecting these personas for topics where they naturally produce more material increases total idea volume per token spent.

3. **Format normalization:** A synthesis or extraction step that operates on raw persona output must handle two formatting families. Parsing logic that assumes `* **bold**` bullet format will miss content from 5 personas (23% of the roster). The `claimed_questions` and `claimed_responses` footer fields are more reliable indicators of actual idea count than bullet counting.

4. **Cluster 04 scaling:** All topics show a consistent ~15-20% output drop in cluster 04 (4-question clusters). If uniform content density per cluster is desired, cluster 04 questions could be expanded to 5, or the orchestrator could acknowledge this as natural scaling.
