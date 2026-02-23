# Phase 2B Question Generation — Targeted Investigation

**Date:** 2026-02-21
**Parent:** `dev/2026-02-21_symphony-question-generation_part2/methodology.md`
**Inputs:**
- Provocateur q15-20 output (all three test topics)
- Phase 3 test data from `test-runs/` (if available)
- Persona coverage mapping findings (Provocateur fitness assessment)
- Tier 1 persona definitions from I-R1

---

## Background

The Provocateur persona generates deliberately absurd, assumption-destroying, provocative questions designed to disrupt conventional thinking. Example framings: "What if the opposite were true?", "What if this failed spectacularly?", "What if we removed the core constraint entirely?"

The user flagged this persona specifically for observation, expressing concern about whether Phase 3 brainstorming agents can productively handle absurdist questions or if they'll be confused, dismiss the provocations, or produce vacuous responses. The persona coverage mapping rated Provocateur as "High" fitness but included a critical caveat: "must be paired with analytical and human-centered personas to convert provocations into usable territory."

This raises an integration readiness question: When Provocateur-style questions appear in the synthesized question set and Phase 3 brainstorming personas attempt to answer them, do the responses constructively open new territory (genuine disruption of assumptions leading to insights), or do they produce unproductively confused or superficial output?

### Research Questions Addressed

- **RQ14:** Provocateur integration — Can Phase 3 brainstorming personas productively handle Provocateur-generated questions, or should synthesis-level filtering/softening occur?

---

## Investigation Task

### I-P1: Provocateur Integration Assessment

**Key question:** When Provocateur-style questions appear in the synthesized question set and are answered by Phase 3 brainstorming personas, are the responses constructively disruptive (opening new territory, challenging assumptions) or unproductively confused (ignoring/mishandling the provocation)?

**Research questions addressed:** RQ14

**Files to analyze / Inputs:**
- Provocateur q15-20 outputs (all three test topics):
  - `test-runs/symphony-phase2-questions-persona-eval/space-party_2026-02-21_q15-20/questions/by-persona/the-provocateur.md` (~7.0 KB)
  - `test-runs/symphony-phase2-questions-persona-eval/tool-library_2026-02-21_q15-20/questions/by-persona/the-provocateur.md` (~10.4 KB)
  - `test-runs/symphony-phase2-questions-persona-eval/habit-tracker_2026-02-21_q15-20/questions/by-persona/the-provocateur.md` (~8.6 KB)
- Phase 2C synthesis outputs where Provocateur questions appear (to see how synthesis agent handles them)
- Phase 3 test data from `test-runs/`: brainstorming responses to questions that include Provocateur-generated prompts
  - If such data exists: analyze actual Phase 3 responses for quality, confusion, or creative territory opening
  - If no Phase 3 test data exists with Provocateur questions: investigate may need to recommend a targeted test run
- Tier 1 persona definitions (for comparison baseline of productive question-answering)

**Comparison criteria / Analysis method:**

1. **Categorize Provocateur questions by type:**
   - Absurdist inversion: "What if the opposite were true?" / "What if X became Y?"
   - Constraint destruction: "What if we removed X constraint?" / "What if X wasn't required?"
   - Deliberately impossible scenario: "What if we had unlimited [resource]?" / "What if X never happened?"
   - Reductio ad absurdum: "Following this logic to its end, we get X—is that what we want?"
   - Assumption exposure: "What assumption must be true for X to fail?" / "What are we NOT seeing?"
   - Document 2-3 examples per category from the test data

2. **For each question type, assess Phase 3 persona compatibility:**
   - Starting hypothesis: Some question types (absurdist inversion, constraint destruction) are tractable; others (deliberately impossible, reductio ad absurdum) risk confusion
   - For each type, predict which Tier 1 personas (Pragmatist, Analyst, Storyteller, etc.) would likely handle it well vs struggle
   - Rationale: Does the question have a clear analytical handle, or does it require pure creative extrapolation?

3. **Identify "safe provocations" vs "hazardous provocations":**
   - Safe: Provocations that sound wild but have clear analytical handles or emotional resonance that Phase 3 personas can grasp
     - Example (safe): "What if participants became co-designers of the space?" — Storyteller can run with relational impact; Pragmatist can explore implementation
   - Hazardous: Provocations that are so abstract or absurdist that Phase 3 personas may produce vacuous or confused responses
     - Example (hazardous): "What if the tool library existed in a 4-dimensional space?" — unclear how Pragmatist adds value

4. **If Phase 3 test data exists with Provocateur-influenced topics:**
   - Analyze actual Phase 3 responses for:
     - Constructive disruption: Does the response acknowledge the provocation and reframe it productively?
     - Confusion markers: Does the response ignore, minimize, or misinterpret the provocation?
     - Territory opening: Does the response suggest genuinely new ideas or just variations on existing territory?
     - Quality assessment: Is the response as useful as responses to Tier 1 brainstorm questions?
   - Compare quality metrics (clarity, actionability, novelty) across Provocateur-influenced vs non-Provocateur brainstorms

5. **If Phase 3 test data does NOT exist with Provocateur questions:**
   - Recommend conducting a targeted Phase 3 test run: use synthesized question set including Provocateur questions on one topic, analyze Phase 3 responses
   - Document what a test run would need to assess (personas to test, brainstorm depth, response quality evaluation criteria)

6. **Recommend synthesis-level handling approach:**
   - **Include as-is:** Provocateur questions proceed through synthesis unchanged; Phase 3 personas answer as-is (highest disruption potential, highest risk of confusion)
   - **Include with synthesis filtering:** Synthesis agent softens Provocateur language while preserving the core assumption-challenging intent (e.g., "What if we fundamentally reimagined the space?" instead of "What if the space existed in 4D?")
   - **Revise Provocateur prompt:** If Provocateur questions are consistently hazardous, revise the persona prompt to generate more tactically absurdist questions (those with clearer analytical handles)
   - **Exclude from synthesis:** Do not include Provocateur questions in the final synthesized set, or make inclusion optional based on topic/effort level

**Expected output:**
- Provocateur question taxonomy (categorized by type with examples)
- Phase 3 persona compatibility assessment (which personas handle which question types)
- Safe vs hazardous provocations list (with examples and rationale)
- Analysis of actual Phase 3 responses (if data exists) or recommendation for targeted test
- Synthesis handling recommendations and proposed synthesis prompt adjustments
- Final recommendation on how to integrate Provocateur into the synthesis workflow

**Priority:** Medium — important for quality and persona coverage but not blocking effort-level decisions. Helps ensure selected personas (including Provocateur if included) produce usable output.

**Output file:** `dev/2026-02-21_symphony-question-generation_part2/findings/P1_provocateur-integration.md`

### Output Format

1. **Provocateur Question Taxonomy**
   - Question types (absurdist inversion, constraint destruction, etc.)
   - 2-3 examples per type from test data
   - Distribution: how many of each type appear in q15-20 outputs

2. **Phase 3 Compatibility Assessment**
   - Per-question-type analysis: which Tier 1 personas (Pragmatist, Analyst, Storyteller, Appreciative Inquirer, etc.) are predicted to handle each type well
   - Rationale for compatibility or incompatibility
   - Risk factors

3. **Safe vs Hazardous Provocations**
   - List of safe provocations with examples
   - List of hazardous provocations with examples
   - Criteria used to determine safety

4. **Phase 3 Response Analysis** (if data exists)
   - Side-by-side examples of Phase 3 responses to safe vs hazardous provocations
   - Quality assessment: constructive disruption vs confusion markers
   - Comparison of response quality metrics vs Tier 1 brainstorm questions

5. **Test Run Recommendation** (if Phase 3 data does not exist)
   - What should be tested (topic, personas, brainstorm depth)
   - Success criteria (quality metrics, disruption markers)
   - Estimated scope

6. **Synthesis Handling Recommendations**
   - For each question type, recommended handling (include as-is / soften language / exclude)
   - Proposed synthesis prompt adjustments (if softening is recommended)
   - Examples of softened provocations

7. **Recommendation**
   - Clear choice: Include as-is / Include with synthesis filtering / Revise Provocateur prompt / Exclude from synthesis
   - Rationale and confidence level
   - Implementation notes

8. **Notes**
   - Assumptions made
   - Data availability and gaps
   - Open questions for follow-up
