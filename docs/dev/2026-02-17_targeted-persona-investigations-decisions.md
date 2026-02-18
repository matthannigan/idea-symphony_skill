# Targeted Persona Investigations — Cross-Investigation Synthesis

**Date:** 2026-02-17
**Parent:** `docs/dev/2026-02-17_targeted-persona-investigations-results.md`

---

## Part 1: Consistent Recommendations (Well-Supported Across Investigations)

### 1.1 Persona Retirements

**Retire The Questioner** — strongest consensus finding across the entire evaluation.
- B3 (Challenge Overlap): recommends retirement. Subsumed by DA and FPT, inconsistent quality (CV=34.3%), incomplete ideation mode that leaves ideas as open questions.
- B11 (Analytical Convergence): independently recommends retirement. Lowest output volume (4.7KB avg), highest variance, fewest unique ideas (0–1 per topic). Most substantive content restates other personas' ideas as questions.
- B12 (Output Gap Detection): notes assumption-challenging function is better performed by DA and FPT.
- No investigation recommends keeping or refining The Questioner. This is unambiguous.

**User decision:** Retire Questioner from Phase 3.

### 1.2 Persona Retentions (Existing Roster)

The following personas are endorsed for retention by every investigation that assessed them. No investigation recommends retiring any of these.

**Devil's Advocate** — unanimously "Highly Distinct" (B3, B9, B11). Only persona whose output mode (critique rather than generation) produces fundamentally different content from the analytical group. Only true outlier in the 8-persona analytical convergence analysis.

**First Principles Thinker** — unanimously endorsed (B3, B8, B11). Strongest performer in the challenge cluster (B3). Highly distinct from Simplifier (B8). Produces genuinely surprising insights through assumption deconstruction that the Pragmatist and Analyst don't replicate.

**Pragmatist** — unanimously endorsed (B2, B11). "Highly Distinct" from Technical Expert (B2). Extreme consistency (CV=8.3%) reflects reliable application of minimum-viable lens. Retained in B11's recommended analytical five.

**Technical Expert** — unanimously endorsed (B2, B11). "Highly Distinct" from Pragmatist (B2). Appropriate topic sensitivity (CV=26.5%) — more to say about technical topics than creative ones.

**Audience Advocate** — unanimously "Highly Distinct" (B6, B7, B11). Distinct from Storyteller (B6), Empath (B7), and all other analytical personas (B11). Equity/accessibility lens functions as a distinct perspective rather than an analytical method. B11 notes it "punches above its perceived weight."

**Storyteller** — unanimously endorsed (B6). "Highly Distinct" from Audience Advocate. Named-character technique is unique across all 18 personas. No role drift detected.

**Visionary** — unanimously endorsed with prompt refinement (B1, B5). "Highly Distinct" from both Futurist (B1) and Momentum Builder (B5). Operates at system/paradigm level. Prompt should be sharpened to discourage trend-citing language and push toward paradigm shifts (B1).

**Constraint Flipper** — endorsed without reservation (B9). "Highly Distinct" from both Provocateur and Devil's Advocate. Pragmatic reframing of real limitations occupies unique space.

**Analogist** — no investigation flags concerns. Assessed only in B12 (gap detection) where its cross-domain parallels are noted as partially covering the External Scout gap (~15%).

**User decision:** Affirm all recommended retentions.

### 1.3 New Persona Inclusions

All three new candidate personas are unanimously validated:

**Empath** — include in roster (B7, B12). Highest-performing new candidate. Fills genuine gap in emotional-first reasoning. "Highly Distinct" from both Audience Advocate and Storyteller. Unique capability to flag emotional inauthenticity ("performative allyship," "compliance energy"). Minor prompt refinement: add standard footer format, reinforce "don't rationalize" directive.

**Simplifier** — include in roster (B8, B12). Strongest validation of any new persona. Subtractive orientation is fundamentally different from FPT's decomposition and Pragmatist's feasibility focus. No prompt refinements recommended — existing anti-confusion guardrails are working as intended. Most consistent new persona (CV=12.5%).

**Provocateur** — include in roster (B9, B12). Fills genuine gap in absurdist/generative provocation. "Highly Distinct" from both Devil's Advocate and Constraint Flipper. Prompt refinements recommended: volume consistency across topics, extractability cues after absurd premises, steer toward absurd rather than hostile provocation.

**User decision:** Affirm new inclusions. Make recommended prompt refinements and re-run tests to confirm concerns addressed via prompt refinement.

### 1.4 Gap Priorities

**Systems Thinker is the #1 gap** — B12 finds this strongly visible and essentially uncovered across all three topics. No existing persona maps feedback loops, identifies system archetypes, or traces second-order consequences. Cannot be addressed through prompt augmentation of existing personas — fundamentally different reasoning mode.

**Regulatory/Compliance is the #2 gap** — B12 finds this strongly visible and essentially uncovered. Even the Devil's Advocate only raises regulatory-adjacent concerns as questions (~10% coverage). Severity is high for any brainstorming in regulated domains.

**Financial/Economic modeling is the #3 gap** — B12 finds no persona produces detailed financial analysis across any topic. Budget projections, pricing strategies, revenue models, and cost-benefit analysis are absent or superficial.

**External Scout is the #4 gap** — B12 validates the framework synthesis prediction. No persona systematically scans competitive landscape or existing solutions (~15% partial coverage from Analogist).

**User decisions:**
1. Develop and test new Systems Thinker persona
2. Develop and test new Lawyer persona to address regulatory/compliance recommendations.
3. Investigate Financial/Economic modeling issue further. Is this a gap in the Phase 2 questions or the Phase 3 brainstorming?
4. Defer for future Idea Symphony development. External scouting must rely on real-world, documented findings and may be able to be generated from a deep research request that could feed into the system after Phase 1 or Phase 2. There's too much potential for hallucinations if we create a persona charged with assessing the competitive landscape without supporting data.

### 1.5 Structural Findings

**Analytical convergence is structural, not just thematic** (B11). The 8 analytical personas converge on *which* topics to address and *what* solutions to propose, differing primarily in *how* they frame ideas. Convergence is driven by question structure: specific questions narrow the solution space. Worst on technical/product topics (habit-tracker: 4/5 themes at 8/8 convergence), better on creative/social topics.

**Topic sensitivity is real and consistent** across multiple investigations. The Provocateur produces more on technical topics (B9). The Synthesizer performs better on technical topics (B10). The Simplifier finds more subtractive material on product-design topics (B8). Convergence worsens on technical topics (B11). The orchestrator's topic-aware persona selection should account for these patterns.

**Human-centered triad is well-validated** (B6, B7). Empath (gut feelings) → Audience Advocate (stakeholder needs) → Storyteller (lived experience) form a complementary set. Any two of three provide coverage without redundancy.

**Challenge triad is well-validated** (B9). Provocateur (generative absurdism) → Constraint Flipper (pragmatic reframing) → Devil's Advocate (critical analysis) form a clean cluster with no significant overlap. Productive as a sequence in synthesis.

**User decision:** Refine orchstrator prompts using these insights. Consider framing increased effort not just as increasing in brainstorming persona count but also completion of clusters like the challenge triad. 

---

## Part 2: Conflicts Requiring Decision

### Conflict 1: Momentum Builder — Keep in Phase 3 vs. Reassign

This is the sharpest contradiction in the investigation set.

**B5 (Expansion Overlap) says: Keep in Phase 3. Refine prompt. Do NOT reassign or retire.**
- Evidence focus: compared Momentum Builder against Visionary only. Found them "immediately distinguishable in voice, framing, and idea register."
- Key argument: MB's ideas are "arguably more immediately useful for Phase 3 synthesis — they come pre-packaged as actionable extensions." Output quality is solid (6.4KB avg, #3 overall volume). Practical, actionable ideas complement the Visionary's expansive thinking.
- Explicitly states: "Do NOT reassign to synthesis or retire."

**B10 (Independence Viability) says: Reassign to synthesis/ultra-mode. #1 priority for reassignment.**
- Evidence focus: assessed MB's ability to function in Phase 3's isolated context, compared against Connector and Synthesizer.
- Key argument: "yes, and" mode is "actively counterproductive in isolation." MB manufactures phantom inputs, wastes ~30% of each bullet validating non-existent contributions. "Excels at refinement, not generation — exactly the wrong strength for an isolated brainstorming phase."
- Explicitly states: "This is the clearest candidate for removal from Phase 3."

**Assessment:** Both investigations agree on the *evidence* — MB produces solid ideas but its reactive framing is structurally mismatched with isolated brainstorming. They disagree on the *weight* to give that mismatch. B5 argues the underlying ideas are strong enough that the awkward framing is cosmetic. B10 argues the structural mismatch degrades output quality and that MB would be *dramatically* more effective with actual inputs to build on.

**Resolution requires deciding:** Is the Momentum Builder's Phase 3 output good enough to justify keeping it there (with prompt refinement), or is the structural mismatch severe enough that reassignment to a synthesis role unlocks substantially more value? B5's recommendation to "refine the prompt to remove 'build on others' ideas' framing" would partially address B10's concerns, but B10 argues this effectively turns MB into a different persona. The uninvestigated overlap between MB and Pragmatist (flagged by B5 as needing checking) adds risk: if prompt refinement makes MB more independent, does it then converge with the Pragmatist?

**User decision:** Try B5 prompt refinements first. Re-run tests. Assess again.

### Conflict 2: The Futurist — Refine vs. Retire

**B1 (Forward-Looking Overlap) says: Refine prompts. Do not merge with Visionary.**
- Evidence focus: pairwise comparison with Visionary only. Found "fundamentally different cognitive modes" — imagination-first vs. trend-extrapolation.
- Key argument: Futurist has distinctive infrastructure-readiness thinking no other persona covers. Unique contributions (climate adaptation tools, municipal API integration, SMS-based check-ins, behavioral data portability) are "notably more actionable and specific" than Visionary's. Prompt refinement can reduce ~25% convergence to ~10-15%.
- Acknowledges: 35% volume gap reflects a real quality difference.

**B11 (Analytical Convergence) says: Retire. Replace with nothing; Visionary covers forward-looking ideation.**
- Evidence focus: compared Futurist against all 7 other analytical personas simultaneously. Rated "Low Distinctiveness."
- Key argument: majority of Futurist output applies "as X evolves" temporal framing to ideas other personas produce in present tense. Genuinely unique ideas are a minority. Heavy overlap with Technical Expert on technology solutions. Doesn't form a clean sub-mode — it's a "lens applied on top of other personas' ideas rather than a generative engine."
- Mitigation offered: add "consider future implications" prompt element to remaining personas.

**Assessment:** This conflict stems from different comparison scopes. B1 looked at the Futurist in the best-case framing (against the Visionary, where its grounded trend-extrapolation is maximally distinct). B11 looked at it in the worst-case framing (against the full analytical roster, where its ideas are largely redundant). B11's evidence is broader and more damning — the Futurist's unique contributions (1-2 per topic) don't justify a full persona slot when the majority of its output overlaps with 5+ other personas.

**Resolution requires deciding:** Is the Futurist's infrastructure-readiness and trend-grounding capability (B1's strongest argument for retention) valuable enough to justify a dedicated persona, or can it be absorbed into the Technical Expert or Visionary prompts? B1's proposed prompt refinements (requiring trend citations, 1-5 year plausibility constraint) might sharpen the Futurist enough to increase unique output — but B11's structural finding (the temporal framing is a lens, not a generative engine) suggests the fundamental issue is the persona's cognitive mode, not its prompt.

**User decision:** Try B1 prompt refinements first. Re-run tests. Assess again.

### Conflict 3: The Synthesizer — Cautious Deprioritization vs. Definitive Reassignment

**B4 (Integration Overlap) says: Keep both Connector and Synthesizer. "Consider deprioritizing" Synthesizer for Phase 3; assess fit in synthesis phases.**
- Tone: cautious, hedged. "If keeping both in Phase 3, avoid selecting both for the same topic cluster."
- Key argument: Synthesizer adapted adequately to isolation. "Neither persona showed the feared 'synthesis template with nothing to synthesize' anti-pattern."

**B10 (Independence Viability) says: Reassign to synthesis/ultra-mode. #2 priority for reassignment.**
- Tone: definitive. Synthesizer is operating "at perhaps 40% of its potential" in Phase 3.
- Key argument: true capability (integrating diverse perspectives) is "completely wasted" in isolation. "Phase 3 brainstorming quality would not materially decline without it."

**Assessment:** Less conflicting than Conflict 1 — both agree the Synthesizer's natural mode fits synthesis better than brainstorming. They differ on urgency. B4 says deprioritize; B10 says reassign. B10's evidence is more specific (Synthesizer at "40% of potential," concrete examples of wasted synthesis capability). B10 also notes the Synthesizer's surprisingly strong technical architecture output, suggesting conditional retention for technical topics could be a middle path.

**Resolution requires deciding:** Is there a synthesis/ultra-mode phase for the Synthesizer to be reassigned *to*? If that phase doesn't exist yet, reassignment is premature. If it does or will, B10's case for reassignment is well-supported.

**User decision:** Retire Synthesizer from Phase 3.

### Conflict 4: The Analyst — Retire (B11) vs. Reassign to Synthesis

Only B11 addresses the Analyst's fate, and it self-describes this as "the closest call." The Analyst is the strongest producer of the three retirement candidates (6.2KB avg). B11 offers an alternative: "If the Analyst is retained, retire First Principles Thinker instead." B12 separately notes the Financial/Economic modeling gap, which the Analyst could partially fill if its prompt were augmented.

**Resolution requires deciding:** Should the Analyst be retired from Phase 3 (freeing a slot), reassigned to a synthesis role (where its organizational frameworks would be more valuable), or retained with an augmented prompt that adds financial/economic modeling (addressing the #3 gap)? The last option would be a two-for-one: retaining the Analyst while partially closing the financial gap.

**User decision:** Retire Analyst from Phase 3. Design prompt refinements that would benefit person in Phase 2 (Question Generation).

### Conflict 5: Devil's Advocate Augmentation Scope

**B3 says: minor prompt tweak** — consistently require mitigations/solution sketches alongside critique.

**B12 says: substantial augmentation** — add explicit regulatory framework identification as an alternative to creating a dedicated Regulatory/Compliance persona.

These are compatible in principle but different in magnitude. A minor constructiveness tweak (B3) is low-risk. Adding regulatory identification (B12) would significantly expand DA's cognitive scope and might dilute its core critical-voice strength.

**Resolution requires deciding:** Should the DA's scope be expanded to cover regulatory territory (more efficient, but risks diluting its distinctive critique mode), or should regulatory coverage come from a separate persona or prompt element applied across multiple personas?

**User decision:** Make only minor prompt tweaks as recommended in B3.

### Conflict 6: Ethnographer Gap — Absorb into AA vs. Separate Approach

**B6 says: absorb ethnographic elements into Audience Advocate prompt.** Provides specific augmentation language (empathy mapping, emotional journey mapping, unarticulated need discovery). Cautions that testing is needed to ensure augmentation doesn't dilute barrier-identification strength.

**B12 says: gap is partially covered (~30% ST, ~25% AA, ~20% Empath) but substantial uncovered territory remains.** Systematic observation protocols, empathy map generation, "day in the life" research, and latent need identification remain absent.

**B7 says: the three human-centered personas (Empath, AA, Storyteller) form a strong triad.** Implies the Ethnographer gap might be adequately addressed by the triad without a new persona.

**Resolution requires deciding:** Is AA augmentation (B6's approach) sufficient to close the Ethnographer gap, or does the uncovered territory (B12) require a dedicated persona? B6's own caution about testing is well-founded — augmenting the AA risks turning it into a hybrid that does neither advocacy nor ethnography well.

**User decision:** Augment prompt as recommended in B6.

### Conflict 7: Adding Analytical Personas for Gaps vs. Reducing Analytical Dominance

**B11 recommends:** reduce analytical representation from 8 to 5 (retire Questioner, Futurist, Analyst).

**B12 finds:** the four highest-priority remaining gaps (Systems Thinker, Regulatory, Financial, External Scout) are all analytical in nature.

This creates a direct tension: addressing the most important content gaps would add analytical personas, but the roster is already analytically heavy (even after B11's proposed retirements, 5 of ~15 personas would be analytical). Adding 2-4 more would push the ratio back toward dominance.

**B12 proposes a resolution:** address 1-2 gaps through new personas and the rest through prompt augmentation of existing analytical personas. This is a reasonable principle but doesn't specify which gaps get personas vs. augmentation.

**Resolution requires deciding:** Which gaps get dedicated personas (highest value, can't be replicated via augmentation) and which get prompt augmentation (lower marginal value, existing personas can stretch)? B12's own severity rankings suggest: Systems Thinker → new persona (fundamentally different reasoning mode), Regulatory → either new persona for regulated domains or augment DA, Financial → augment Analyst or Pragmatist, External Scout → augment Futurist (if retained) or Analogist.

**User decision:** Revisit conflict after retirements, refinements, and testing new persona.

---

## Part 3: Summary of Unambiguous Actions

These actions face no contradicting evidence across any investigation:

1. **Retire The Questioner** from Phase 3. (Consider Phase 2 question-generation role.)
2. **Include The Empath** in the roster with minor prompt refinements (footer format, "don't rationalize" reinforcement).
3. **Include The Simplifier** in the roster as-is (no prompt changes needed).
4. **Include The Provocateur** in the roster with prompt refinements (volume consistency, extractability cues, absurd-not-hostile guardrails).
5. **Refine The Visionary's prompt** to discourage trend-citing, push toward paradigm shifts.
6. **Refine The Devil's Advocate's prompt** to consistently require mitigations alongside critique (B3's minor scope).
7. **Prioritize Systems Thinker** as the next new persona to develop — strongest gap signal.
8. **Refine The Connector's prompt** for isolation (shed mechanical "Connect X with Y" formula).
9. **Build topic-sensitivity awareness** into the orchestrator's persona selection logic.

**User decision:** Agree with all of the above.

## Part 4: Decisions Needed Before Proceeding

### Resolved

- **Analyst disposition** — ✅ Retire from Phase 3. Design prompt refinements for Phase 2 (Question Generation).
- **Synthesizer disposition** — ✅ Retire from Phase 3.
- **DA augmentation scope** — ✅ Minor only (constructiveness per B3).
- **Ethnographer gap approach** — ✅ Augment AA prompt per B6.

### Pending Test Results

- **Momentum Builder disposition** — Immediate action decided: apply B5 prompt refinements, re-run tests. Final disposition (keep vs. reassign) and MB↔Pragmatist overlap check depend on test outcomes.
- **Futurist disposition** — Immediate action decided: apply B1 prompt refinements, re-run tests. Final disposition (keep refined vs. retire per B11) depends on whether refinements meaningfully increase unique output against the full analytical roster.

### Deferred

- **Gap persona allocation** — Revisit after retirements, refinements, and new persona testing are complete. Current decisions narrow the scope: Systems Thinker and Lawyer are confirmed as new personas; External Scout is deferred to a non-persona approach (deep research feed after Phase 1/2); Financial/Economic gap requires investigation into whether it originates in Phase 2 questions or Phase 3 brainstorming before determining the right intervention.
