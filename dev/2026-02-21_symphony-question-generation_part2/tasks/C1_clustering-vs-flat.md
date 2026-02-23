# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- Clustered persona output: `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q15-20/questions/by-persona/` (all Tier 1 personas)
- Flat-list version (to be derived as part of investigation)
- Phase 2C synthesis prompt: `idea-symphony/references/prompts/phase2-question-synthesis.md`
- Phase 2C synthesis outputs for tool-library topic (clustered version)

---

## Background

Currently, each phase 2B persona organizes their generated questions into 3-5 topical clusters (denoted by `##` markdown headings). For example, the Questioner might produce clusters like:
- `## User Participation & Agency`
- `## Operational Logistics`
- `## Community Impact & Equity`

Each cluster groups thematically related questions under a single heading.

The user is unsure whether this per-persona pre-clustering helps or hinders the Phase 2C synthesis agent. Two competing hypotheses:

1. **Clustering helps:** Structural scaffolding makes the synthesis agent's job easier; the synthesis agent can see clear thematic boundaries and more easily detect convergence (multiple personas asking about similar topics) and divergence (unique perspectives within a theme).

2. **Clustering hinders:** Pre-clustering anchors the synthesis agent to persona-defined categories rather than allowing it to discover emergent cross-persona themes. A flat list might enable more creative, unexpected syntheses by removing structural cues.

The user is willing to drop pre-clustering entirely if evidence shows it doesn't help. This investigation compares synthesis outputs between clustered and flat-list inputs, holding all other variables constant.

### Research Questions Addressed

- **RQ13:** Pre-clustering impact — Does per-persona question clustering help or hinder Phase 2C synthesis? Should clustering be retained, dropped, or made optional?

---

## Investigation Task

### I-C1: Pre-Clustering vs Flat List Comparison

**Key question:** Does per-persona question clustering help or hinder the Phase 2C synthesis agent? Does a flat question list (same questions, no cluster organization) produce meaningfully different, potentially better synthesis than clustered input?

**Research questions addressed:** RQ13

**Files to analyze / Inputs:**
- Clustered version (source data): `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q15-20/questions/by-persona/` (all 8 Tier 1 personas)
- Flat version (to be created): same questions, `##` headings removed, questions listed under simple persona name headings
- Phase 2C synthesis prompt: `idea-symphony/references/prompts/phase2-question-synthesis.md` (held constant between conditions)
- Phase 2C synthesis output (clustered condition): from `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q15-20/synthesis/` or similar path
- Tool-library topic briefing (for context)

**Comparison criteria / Analysis method:**

1. **Create the flat-list version:**
   - For each Tier 1 persona (8 total), extract all their questions
   - Remove `##` cluster headings and hierarchy
   - Organize simply as: `### [Persona Name]` followed by a flat list of all questions (no sub-grouping)
   - Preserve question text exactly; only remove structural organization
   - Document the transformation process

2. **Synthesis cluster themes comparison:**
   - Run Phase 2C synthesis agent on BOTH versions (clustered and flat) using identical synthesis prompt
   - Compare the synthesis outputs: do they identify the same topic clusters?
   - Do synthesis clusters align more closely with persona-defined clusters (when clustered input used) vs emerging themes (flat input)?
   - Metric: Does the synthesis agent create different top-level themes, or are they stable?

3. **Question selection analysis:**
   - Does the synthesis agent select different questions for inclusion in the final synthesized set?
   - Compare: which questions appear in clustered-version synthesis vs flat-version synthesis?
   - Metric: intersection/union of selected questions; are key questions preserved across both conditions?

4. **Cross-persona integration assessment:**
   - Hypothesis: flat input enables more cross-persona synthesis (questions from different personas combined under themes) vs clustered input anchoring to within-persona themes
   - Analyze synthesis sections:
     - Does each synthesis section predominantly quote from one persona or blend across personas?
     - In clustered condition: do synthesis clusters align with persona clusters (e.g., "Questioner's User Participation theme + Pragmatist's Agency theme = Integration Cluster")?
     - In flat condition: are synthesis clusters more agnostic to persona boundaries?
   - Metric: "cross-persona citation ratio" — what % of synthesis sections blend content from 2+ personas?

5. **Convergence detection integrity:**
   - Can the synthesis agent still detect convergence (multiple personas asking similar questions) without cluster scaffolding?
   - Are convergence sections clearer or muddier in flat vs clustered synthesis?
   - Metric: Does synthesis agent identify the same convergences in both conditions, or does clustering reveal convergences flat input obscures?

6. **Overall synthesis quality assessment:**
   - Clarity: Is the final synthesized output clearer, equally clear, or harder to follow?
   - Coherence: Does the flat synthesis have a coherent narrative structure or feel scattered?
   - Actionability: Are the recommended topic clusters and questions equally actionable from both synthesis outputs?
   - Completeness: Does flat synthesis miss important questions or themes that clustered synthesis captured?

**Expected output:**
- Side-by-side synthesis outputs (clustered vs flat)
- Detailed comparison of cluster themes, question selection, cross-persona integration, and convergence detection
- Quality assessment summary (clarity, coherence, actionability, completeness)
- Recommendation: keep clustering / drop clustering / make clustering optional per topic
- If recommendation is nuanced, propose specific conditions (e.g., "drop clustering for high-effort, keep for low-effort")

**Priority:** Medium — affects prompt design and question input format but not blocking architectural decisions. Relatively straightforward controlled experiment.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/C1_clustering-vs-flat.md`

### Output Format

1. **Methodology**
   - How the flat-list version was created from clustered source
   - Preservation of question text; documentation of structural removals
   - Synthesis conditions held constant (prompt, model, persona set, topic)

2. **Input Comparison**
   - Statistics: clustered input (e.g., "8 personas, 156 questions across 32 clusters") vs flat input (same counts, different organization)
   - Sample of clustered structure (2 personas × 1 cluster each)
   - Sample of flat structure (same 2 personas, flat organization)

3. **Synthesis Output Comparison**
   - Side-by-side synthesis outputs (clustered vs flat)
   - Or: detailed summary if full outputs are too large
   - Highlight key differences in structure and content

4. **Theme Comparison**
   - Synthesis themes identified in clustered condition: list with question counts per theme
   - Synthesis themes identified in flat condition: list with question counts per theme
   - Stability: are themes stable or do they diverge significantly?

5. **Question Selection Analysis**
   - Total questions in clustered vs flat synthesis
   - Intersection (questions appearing in both)
   - Divergence (questions unique to one condition)
   - Assessment: does condition significantly affect which questions are selected?

6. **Anchoring Effect Assessment**
   - Cross-persona citation ratio for each condition
   - Examples: synthesis sections in clustered condition that stay within one persona's clusters
   - Examples: synthesis sections in flat condition that blend across personas
   - Does clustering anchor synthesis to persona boundaries?

7. **Convergence Detection**
   - Convergences identified in clustered synthesis (where multiple personas ask similar questions)
   - Convergences identified in flat synthesis
   - Stability: are convergences detected consistently?
   - Clarity: are convergences clearer in one condition?

8. **Quality Assessment Summary**
   - Clarity: [Clustered / Flat / Equivalent] — rationale
   - Coherence: [Clustered / Flat / Equivalent] — rationale
   - Actionability: [Clustered / Flat / Equivalent] — rationale
   - Completeness: [Clustered / Flat / Equivalent] — rationale
   - Overall quality: [Clustered is better / Flat is better / Equivalent] — confidence level

9. **Recommendation**
   - Clear choice: Keep clustering / Drop clustering / Make optional
   - If optional: under what conditions?
   - Rationale based on quality assessment and integration findings

10. **Notes**
    - Assumptions made
    - Limitations of comparison (e.g., single topic, single synthesis run)
    - Open questions for follow-up or validation (e.g., should this test be run on other topics for confirmation?)
