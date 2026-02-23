# Symphony User Questions: Test Run Analysis & Recommendations

**Date:** 2026-02-14 (initial), 2026-02-15 (R1/R2/R5 follow-up)
**Test runs:**
- `test-runs/community-art-project_2026-02-14_no-questions/` — control (medium, no user questions)
- `test-runs/community-art-project_2026-02-14_with-questions/` — medium effort with user questions (re-run after R1/R2/R5)
- `test-runs/community-art-project_2026-02-15_with-questions_low/` — low effort with user questions

**Topic:** Community art project inspired by The Sprout Fund's Belonging program
**Phases completed:** Phase 1 + Phase 2 (stopped before Phase 3)

---

## Summary

The user-questions feature works well. Persona isolation is fully maintained, the synthesizer integrates user questions alongside persona output, and the PLAN.md correctly tracks user question status.

Initial testing found 3 of 13 user questions lost during synthesis (non-convergent tactical questions). Prompt revisions (R1, R2, R5) addressed this — see [Resolution](#resolution-r1-r2-r5-implemented) below.

---

## Key Findings

### 1. Persona Isolation: Confirmed Working

All three persona files (The Questioner, The Analyst, The Audience Advocate) are **byte-identical** between the two runs. This confirms the design decision is working as intended:

- Persona generators do NOT see USER-QUESTIONS.md
- Persona generators only read REQUEST.md
- REQUEST.md in the with-questions run mentions USER-QUESTIONS.md exists ("see USER-QUESTIONS.md") but does not embed the questions — personas would need to independently read that file, and the instructions don't tell them to

**Verdict:** Isolation preserved perfectly.

### 2. Synthesis Integration: Mostly Successful

| Metric | No Questions | With Questions |
|--------|-------------|----------------|
| Total synthesized questions | 30 | 35 |
| Topic clusters | 7 | 6 |
| Input questions | 117 (42+25+50) | 130 (42+25+50+13) |
| Compression ratio | 3.9:1 | 3.7:1 |

The synthesizer incorporated the 13 user questions as a "+1" input source. The final output grew by 5 questions (30→35), not by the full 13 — meaning the synthesizer correctly consolidated user questions with convergent persona questions rather than blindly appending them.

PLAN.md correctly states: "All 13 user questions preserved through synthesis" and "Input questions: 130 (42 from Questioner, 25 from Analyst, 50 from Audience Advocate, 13 user-defined)."

### 3. User Question Traceability: Mixed Results

Tracking each of the 13 user questions through to QUESTIONS.md:

| # | User Question (abbreviated) | Survived? | How |
|---|---------------------------|-----------|-----|
| 1 | Protect participants (undocumented) | ✅ Yes | Topic 02, Q1 — clearly preserved |
| 2 | Right "vocabulary" for community | ✅ Yes | Topic 02, Q2 — clearly preserved |
| 3 | Meet people where they are (sessions at community centers) | ✅ Yes | Topic 03, Q4 — clearly preserved |
| 4 | Who are the "gatekeepers"? | ✅ Yes | Topic 03, Q1 — clearly preserved |
| 5 | "Big Stage" for launch (timing with festivals) | ⚠️ Lost | No question about launch timing/event alignment in QUESTIONS.md |
| 6 | Partners as distribution hubs | ✅ Yes | Topic 05, Q2 — clearly preserved |
| 7 | Jury composition (mix of professionals + community) | ✅ Absorbed | Topic 04, Q2 — folded into broader jury structure question |
| 8 | Empower youth (youth jury) | ✅ Yes | Topic 04, Q5 — clearly preserved |
| 9 | Balance public voting vs. expert jury | ✅ Yes | Topic 04, Q6 — clearly preserved |
| 10 | "Take-Away" format (signs, posters, stickers, quantity) | ✅ Yes | Topic 05, Q1 — clearly preserved |
| 11 | DIY element (teaching kit, print-at-home) | ✅ Yes | Topic 05, Q5 — clearly preserved |
| 12 | Honor artists (honorarium budget) | ⚠️ Absorbed/diluted | No specific honorarium question in QUESTIONS.md; The Analyst's Q17 covers budget breakdown but the user's specific framing about *valuing artists' labor* is lost |
| 13 | Art vs. organizing (separate roles/consultants) | ⚠️ Lost | No direct question about separating art management from community organizing roles |

**Preservation rate:** 10/13 clearly preserved (77%), 2 absorbed into broader questions, 1 lost entirely.

### 4. What Got Lost and Why

The three questions that didn't survive well share a common trait: they are **highly specific and tactical** — naming concrete details from the Sprout Fund case study.

- **Q5 ("Big Stage")** asked about timing the launch with a local festival or civic holiday. This is a specific tactical recommendation from the case study. The synthesizer likely viewed it as a scheduling detail rather than a strategic question, and no persona independently raised launch timing.

- **Q12 (honorarium budget)** asked "How will your budget reflect the value of the artists' labor?" — a values-framing question. The Analyst's budget breakdown question covers the dollar amounts but misses the user's framing about *honoring* labor.

- **Q13 (art vs. organizing roles)** asked about separating creative direction from community organizing — a specific operational insight from the Sprout Fund's approach. No persona independently raised role separation.

**Pattern:** Tactical, case-study-specific user questions that lack convergence with persona questions are most at risk of being dropped. The synthesizer prioritizes convergent questions and may view non-convergent tactical details as too narrow for the question-generation phase.

### 5. Structural Differences

The with-questions run produced 6 topic clusters (vs. 7 without). The clusters are organized differently:

**No questions (7 clusters):**
1. Community Vision & Strategic Foundation
2. Partnerships & Community Trust
3. Decision-Making & Power Dynamics
4. Resources & Operational Model
5. Accessibility & Inclusive Design
6. Distribution & Community Reach
7. Impact Measurement & Sustainability

**With questions (6 clusters):**
1. Community Context & Shared Vision
2. Trust, Safety & Inclusion
3. Partnerships & Community-Led Engagement
4. Decision-Making & Power Dynamics
5. Logistics, Distribution & Materials
6. Impact Measurement & Long-Term Value

Notable: The user questions about logistics and distribution caused the synthesizer to merge "Resources" and "Distribution" into a single "Logistics, Distribution & Materials" cluster, and "Accessibility" content was folded into "Trust, Safety & Inclusion." The user's tactical specificity shifted the overall structure toward more concrete topics.

---

## Recommendations for SKILL.md

### R1: Add Traceability Markers to Synthesis Output — ✅ Implemented

**Problem:** User questions that get consolidated with persona questions lose their identity. The user can't verify their questions survived.

**Solution:** Instruct the synthesis subagent to mark user-originated questions in QUESTIONS.md output by appending `[User Q]` to the question text.

**Changes made to:** SKILL.md Phase 2A (step 2), SKILL.md Phase 2B.2 (step 2), `phase2-question-generation-generic.md`, `phase2-question-synthesis.md`.

**Verified:** Both medium and low effort test runs produce `[User Q]` markers on all user-originated questions. The medium-effort synthesizer also added convergence markers (`[All 3]`, `[Q+AA]`, etc.) as a bonus.

### R2: Strengthen Non-Convergent User Question Preservation — ✅ Implemented

**Problem:** The synthesizer drops user questions that lack persona convergence, especially tactical/specific ones.

**Solution:** Differentiate handling based on convergence:
- **Convergent** user questions: consolidate with persona questions as normal, mark result with `[User Q]`. Do NOT keep as separate entry.
- **Non-convergent** user questions: preserve verbatim or with minimal refinement, mark with `[User Q]`.

**Note on over-correction:** The initial R2 implementation told the synthesizer that all user questions are "especially important to preserve" without distinguishing convergent from non-convergent. This caused the synthesizer to keep convergent user questions as separate entries alongside near-identical persona questions (46 questions, well over the 20-35 target). The fix was to explicitly instruct: consolidate convergent user questions freely, only preserve non-convergent ones verbatim.

**Changes made to:** SKILL.md Phase 2B.2 (steps 2 and 4), `phase2-question-generation-generic.md`, `phase2-question-synthesis.md`.

**Verified:** After the over-correction fix, the medium-effort run produced 35 questions (within target). The synthesis notes report "8 were convergent with persona questions and consolidated naturally, 5 were unique or framed distinctively and preserved with [User Q] markers." All 3 previously-lost questions (Q5 "Big Stage", Q12 "Honor artists", Q13 "Art vs. organizing") now survive.

### R3: Consider Whether Tactical User Questions Belong in a Separate Pass

**Status:** Monitor, not yet needed.

Some user questions (like Q5 "Big Stage" and Q13 "art vs. organizing") are more like *answers* or *recommendations* than questions. They encode the user's prior knowledge from the case study. The question-generation phase may not be the right place to surface these — they might be better handled as constraints or recommendations that flow directly to Phase 3 brainstorming or Phase 4 synthesis.

For now, the current approach (keep everything as questions) is simpler. But if future test runs show a pattern of tactical user inputs getting lost, consider:
- A `USER-CONTEXT.md` for user-provided insights/answers that go directly to brainstorming
- A `USER-QUESTIONS.md` for genuine questions the user wants explored

### R4: Low Effort Path — ✅ Tested

**Verified** in `test-runs/community-art-project_2026-02-15_with-questions_low/`:
- All 13 user questions preserved with `[User Q]` markers
- Generic generator added 22 of its own questions (35 total across 5 clusters) — over the 15-20 target but reasonable given 13 user questions as input
- Generated questions complement rather than duplicate user questions — no near-duplicate pairs
- PLAN.md correctly reports "13/13 user questions preserved"

### R5: Quality Gate Needs Concrete Guidance — ✅ Implemented

**Problem:** The original quality gate said "Verify that the intent of each user-provided question is represented in QUESTIONS.md" — subjective and unreliable.

**Solution:** Quality gates in both Phase 2A and Phase 2B.3 now use a mechanical check: count `[User Q]` markers in QUESTIONS.md and compare against the number of questions in USER-QUESTIONS.md. If any are missing, log which ones and re-examine.

**Changes made to:** SKILL.md Phase 2A quality gate, SKILL.md Phase 2B.3 quality gate (step 4).

**Verified:** Both medium and low effort test runs report marker counts in PLAN.md.

---

## Implementation Summary

| Rec | Status | Outcome |
|-----|--------|---------|
| R1 | ✅ Done | `[User Q]` markers in all paths |
| R2 | ✅ Done | Convergent = consolidate, non-convergent = preserve verbatim |
| R3 | Monitor | No action needed yet |
| R4 | ✅ Tested | Low effort path works correctly |
| R5 | ✅ Done | Mechanical count-check in both quality gates |
