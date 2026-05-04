# Phase 2 Step 2.1: Question Generation Persona Selection

**For `low`/`medium`/`high` effort** — Selects the question-generation roster (Tier 1 always, Tier 2 at `high`, Tier 3 by trigger) and the Connector/Analogist swap. Skipped at `min` effort (single generic generator instead).

---

You are selecting the question-generation roster for a single brainstorming session. Produce exactly two outputs:

1. **`{{session}}/personas/question-generation.md`** — full roster + selection rationale (the audit trail).
2. **A new section appended to `{{session}}/PLAN.md`** — a compact summary for execution. Append only; do not modify any other section of PLAN.md.

Do not modify any other files. Show reasoning inside the structured `Rationale` / `Swap rationale` / `Topic citation` fields in Output 1; no preambles, closing remarks, or reasoning outside those fields.

Work through the checklist below in the listed order, completing each step before moving on. Each step's output feeds the next.

## Inputs

1. `{{session}}/REQUEST.md` — the topic body. Read in full before selecting. All `Topic citation` fields in your output must be verbatim quotes or close paraphrases from REQUEST — do not speculate about content REQUEST does not state.
2. `{{effort}}` — `low`, `medium`, or `high` (substituted by the orchestrator from Phase 1). At `low`, follow the checklist as written but apply the modifications in the Low Effort section at the bottom of this file.
3. `{{skill}}/guidance/phase2A_question-gen-personas.md` — reference. Consult only if you need volume ranges, Tier 2 details, or expanded persona guidance. Everything you need to make decisions is embedded in the checklist below.

---

## Checklist (work in this order)

### Step 1 — Evaluate each Tier 3 trigger, one persona at a time

For EACH of the four Tier 3 personas (Accountant, Lawyer, Politician, Technical Expert), in this order, answer the three questions below. Evaluate all four Tier 3 personas; record a trigger-strength decision for each, including obvious "none" cases. Auditability of the exclusion matters as much as the inclusion.

#### 1.1 Accountant

- **Question 1 (domain match):** Is financial structure a dimension of the brainstorming need? Look for: unit economics, revenue models, pricing strategy, budget structure, cash-flow modeling, capital allocation, business model design, organizational finance.
- **Question 1b (gating test — REQUIRED):** The financial dimension must be a *core decision axis* of the brainstorming goal, not one listed consideration among many. If "monetization," "revenue," "pricing," or "unit economics" appears only as a single bullet within a broader product, operational, or personal-strategy considerations list, it is NOT a trigger by itself. Ask: *if you removed all financial content from the REQUEST, would the central question being brainstormed change?* If no → none. If the financial content is a background concern rather than a decision axis the user is actively trying to resolve → none.
- **Question 2 (depth):** Does the REQUEST name the specific financial MECHANISM (dollars, percentages, specific models, named revenue streams)? Or is the "budget" mention just a consumer spending concern? Consumer spending is NOT a trigger. Generic monetization mentions without dollar content, unit-economics structure, or runway math do NOT clear the moderate bar.
- **Question 3 (trap check):**
  - Birthday-party / hobby-topic trap where "budget-friendly" means frugal consumer choices → none.
  - Product-strategy trap: a mobile-app or habit-tracker REQUEST that lists "monetization" or "revenue model" as one concern among feature-prioritization, UX, retention, and technical-debt bullets is product management with a financial surface, NOT an Accountant trigger. The brainstorming need is product strategy, not financial architecture. → none.
  - If yes to either → none.
- **Output for this persona:**
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase from REQUEST]"
  - Rationale: [1 sentence linking the citation to the trigger definition; if moderate/strong, state explicitly why Q1b's gating test is satisfied]

#### 1.2 Lawyer

- **Question 1 (domain match):** Is regulatory/compliance exposure a dimension of the brainstorming need? Look for: specific regulatory frameworks (HIPAA, FDA, zoning ordinance, STR ordinance, mandatory reporting, licensing regimes), liability structure, contract design with legal stakes, compliance architecture.
- **Question 2 (depth):** Is this "trigger on need, not keywords"? Named statutes or compliance regimes where the brainstorming need is to *design* regulatory strategy → strong. "Liability concerns" without specific framework → Devil's Advocate territory, not Lawyer.
- **Question 3 (trap check):**
  - Career-change topics that name "lawyer"/"attorney" as a target career are NOT a Lawyer trigger (partial false positive per R6 — persona responds to keyword and produces regulatory implementation guide rather than decision-exploration).
  - Generic "safety concerns" or "liability" mentions without regulatory frameworks are not Lawyer triggers.
  - **Operating-environment-permits trap:** Routine permits, licenses, health codes, and zoning checks for a single small business (e.g., food-truck health permits, vendor licenses, parking ordinances, event permits) are operating-environment CONSTRAINTS to comply with, not compliance ARCHITECTURE to design. Lawyer fires when the brainstorming need is to design multi-jurisdiction regulatory strategy, tenant-protection ordinance architecture, consent/referral frameworks across institutions, or a named statutory regime (HIPAA, FDA, STR ordinance). If permits/licenses appear only as routine check-the-box operational constraints for one small business → none. (Accountant and/or Politician typically cover the strategic dimension in these cases.)
  - If yes to any → none.
- **Output for this persona:**
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase from REQUEST]"
  - Rationale: [1 sentence linking the citation to the trigger definition]

#### 1.3 Politician

- **Question 1 (domain match):** Is stakeholder politics / governance / institutional change a dimension of the brainstorming need? Look for: coalition building, voter approval, governance structure design, institutional mergers, multi-stakeholder conflict, organizational-change politics, community coalition assembly.
- **Question 2 (depth):** Is the political/governance mechanism CENTRAL (the decision hinges on it) or ambient (there are stakeholders but no decision-process politics)? Central → strong. Ambient (e.g., "team morale," "user communication") → not a Politician trigger.
- **Question 3 (trap check):** "Team morale" and "communicating change to users" are not stakeholder politics — they are organizational management. If the only political content is this kind → none.
- **Output for this persona:**
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase from REQUEST]"
  - Rationale: [1 sentence linking the citation to the trigger definition]

#### 1.4 Technical Expert

- **Question 1 (domain match):** Is genuine technical architecture a dimension of the brainstorming need? Look for: engineering tradeoffs, hardware/software co-design, ML/AI system architecture, sensor fusion, model architecture, power/latency/accuracy tradeoffs, embedded/signal-processing decisions.
- **Question 2 (depth):** Is the REQUEST naming ACTUAL architectural decisions, or is it using tech vocabulary metaphorically?
- **Question 3 (trap check):**
  - "Modern JS framework," "cloud backend," "mobile app" keywords alone are NOT triggers. Web/mobile product topics without hardware/ML/systems-architecture are Technical Expert false positives.
  - "Technical debt" in a product-strategy context (like mobile-app feature pruning) is product management, not architecture.
  - Career-change "legacy code" framing is a clear false positive per R6.
  - If yes to any → none.
- **Output for this persona:**
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase from REQUEST]"
  - Rationale: [1 sentence linking the citation to the trigger definition]

### Step 2 — Evaluate Connector/Analogist swap

**The Connector/Analogist decision does NOT depend on effort level.** It is a topic-structure decision only. If medium and high for the same topic give different answers in this step, you have made an error — re-evaluate.

Default is **Analogist**. Swap to Connector when EITHER of the following applies:

- **(a) Distinct constraining systems:** The topic requires bridging, merging, or reconciling distinct systems whose constraints interact (the reconciliation IS the brainstorming need, not just context).
- **(b) Multiple institutional/stakeholder systems that must interoperate:** The topic involves two or more institutional, organizational, or stakeholder systems (e.g., schools + courts + faith orgs + volunteer frameworks; users + team + investors + codebase; hardware + ML + privacy + regulatory pathway) where referrals, safeguards, consent frameworks, or structural linkages must be designed *across* them. Multi-institutional social programs and multi-stakeholder product systems qualify here even when they serve a single community or a single product — the "multi-system" test is about whether distinct institutional/stakeholder systems with their own logic must be reconciled, not whether there are multiple communities or domains.

Keep **Analogist** when:
- The topic has multiple stakeholders or facets of ONE system (e.g., one business navigating its operating environment; one community program with diverse members; one product's UX).
- Only one institutional/decision-making system is actually in play, even if it contains many people or concerns.

**Positive swap examples (choose Connector):**
- Career transitions across fields (two career systems bridged by one person)
- Multi-institutional change (school consolidation — districts + unions + communities + state)
- Cross-disciplinary technical design (wearable — hardware + ML + privacy + regulatory as interacting systems)
- Multi-institutional social programs (mentorship spanning faith org + schools + juvenile justice + volunteer management — referrals and safeguards span institutional systems)
- Multi-stakeholder product systems where user needs, team capacity, runway, and codebase are structurally linked constraints

**Negative swap examples (keep Analogist):**
- Single-domain business strategy (food-truck — one business navigating permits, pricing, competition)
- Bounded event planning (birthday party)
- Single-community initiatives (tool library — one community, multi-stakeholder is NOT multi-system)
- Single-product UX design (habit-tracker)
- A single business operation navigating regulation + community politics + its own finance (property-management — these are facets of one hospitality operation, not distinct institutional systems being reconciled)

**Output:**
- Decision: [Analogist (default) | Connector (swap)]
- Swap rationale: [1-2 sentences citing REQUEST content that meets or fails criteria (a) or (b); if you chose Analogist, briefly note why (b) does not apply]
- Effort-invariance check: confirm this decision would be the same at the opposite effort level. If not, re-evaluate.

### Step 3 — Apply effort threshold

Take the Step 1 trigger-strength outputs and apply the effort rule:

- If **{{effort}} = low**: include only personas with trigger strength = strong. Ceiling: 0 or 1. If two or more strong triggers exist, choose the one most central to the stated brainstorming goal and put the second in Notes as a deferred alternative.
- If **{{effort}} = medium**: include only personas with trigger strength = strong. Ceiling: 0 or 1. If two or more strong triggers exist, choose the one most central to the stated brainstorming goal and put the second in Notes as a deferred alternative.
- If **{{effort}} = high**: include personas with trigger strength = strong OR moderate. Ceiling: 0, 1, or 2. If three or more qualify, pick the two most central to the stated brainstorming goal; put the third in Notes.

**Why these ceilings:** Low ceilings keep Tier 3 additions focused on the topic's dominant decision axis. Deferred alternatives preserve the audit trail without inflating the final roster or diluting per-persona volume.

**Output:**
- Final Tier 3 inclusions: [list or "None"]
- If more qualified than the ceiling allows, list deferred alternatives.

**Example of a ceiling-forced pick (medium):** If both Accountant and Politician trigger strong on a topic about municipal budget coalitions, the ceiling of 1 forces a pick. If the REQUEST centers on coalition assembly to pass the budget, include Politician and note Accountant as a deferred alternative. If the REQUEST centers on restructuring the budget itself and coalition politics are ambient, include Accountant and note Politician.

### Step 4 — Write the two outputs

Assemble Steps 1-3 into Output 1 and Output 2 below. Write Output 1 as a fresh file at `{{session}}/personas/question-generation.md`. Append Output 2 to `{{session}}/PLAN.md` as a new section; do not edit any other section of PLAN.md.

---

## Output 1: `{{session}}/personas/question-generation.md`

Replace every bracketed placeholder (e.g., `[Project Name]`) with the content you derive; do not emit literal placeholder strings. The Stream column reflects each persona's Phase 2.3 method (Synthesize: collapse to canonical questions; Append: round-robin across the question pool); Tier 1 and Tier 2 stream assignments are fixed per persona as shown. For Tier 3, default to `Synthesize` unless the personas guide says otherwise.

````markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "{{effort}}"
stage: "Phase 2 Step 2.1: Question Generation Persona Selection"
model-requested: "opus"
model-reported: "[model the subagent self-identifies as, e.g., claude-opus-4-7]"
---

# Question Generation Personas

## Tier 1 Personas (always included)

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | [range per effort] | Synthesize |
| Analyst | Analytical | [range per effort] | Synthesize |
| Devil's Advocate | Structural | [range per effort] | Synthesize |
| Appreciative Inquirer | Structural | [range per effort] | Synthesize |
| Audience Advocate | Structural | [range per effort] | Synthesize |
| Systems Thinker | Structural | [range per effort] | Synthesize |
| Provocateur | Perspective | [range per effort] | Append |
| [Analogist or Connector] | Perspective | 5-8 | Append |
| Visionary | Perspective | [range per effort] | Append |
| Storyteller | Perspective | [range per effort] | Append |

## Tier 2 Personas (`high` effort only)

{If effort = high, populate the table exactly as below. Otherwise REPLACE the table with the single line: `N/A — {{effort}} effort`.}

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

## Tier 3 Personas (orchestrator-selected)

{If zero Tier 3 personas meet the effort threshold, REPLACE the table with the correct sentinel:
- Low/Medium: `None selected — no strong triggers for this topic`
- High: `None selected — no triggers at or above moderate threshold for this topic`

Otherwise include one row per selected persona, using the canonical Category labels below.}

| Persona | Category | Volume | Stream | Trigger Strength |
|---|---|---|---|---|
| Accountant | Specialist (financial) | 8-12 | Synthesize | [strong \| moderate] |
| Lawyer | Specialist (regulatory) | 8-10 | Synthesize | [strong \| moderate] |
| Politician | Specialist (governance) | 8-10 | Synthesize | [strong \| moderate] |
| Technical Expert | Specialist (architecture) | 8-10 | Synthesize | [strong \| moderate] |

## Selection Rationale

**Connector/Analogist decision:** [Analogist (default) | Connector (swap)]
- Swap rationale: [1–2 sentences citing REQUEST content that meets or fails criterion (a) or (b); if Analogist, briefly note why (b) does not apply]
- Effort-invariance check: [confirm the decision would be the same at the opposite effort level]

**Tier 3 selections — structured rationale per candidate persona:**

For EACH of Accountant, Lawyer, Politician, Technical Expert (in that order), produce a block with all four fields populated. Fields MUST use the exact labels shown.

- Persona: Accountant
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase from REQUEST; if the REQUEST has no relevant content, write the explicit absent form: `(no financial content in REQUEST)`]"
  - Decision: [include | exclude]

- Persona: Lawyer
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase; explicit absent form allowed]"
  - Decision: [include | exclude]

- Persona: Politician
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase; explicit absent form allowed]"
  - Decision: [include | exclude]

- Persona: Technical Expert
  - Trigger strength: [strong | moderate | none]
  - Topic citation: "[verbatim quote or close paraphrase; explicit absent form allowed]"
  - Decision: [include | exclude]

**Notes:** [Deferred alternatives when the effort-ceiling forced a pick (e.g., "Politician also qualified as strong; deferred per medium ceiling of 1"), OR genuinely ambiguous cases that did not fit the structured fields. Use `—` if the call was clean. Do NOT use Notes as a substitute for Topic citation, Trigger strength, or Swap rationale.]
````

---

## Output 2: PLAN.md section

Append the following block to `{{session}}/PLAN.md` as a new section. Do not modify any other section of PLAN.md. The Tier tables omit Trigger Strength and Rationale columns intentionally — the full rationale lives in Output 1.

If a `## Phase 2 Step 2.1: Question Generation Personas` section already exists in PLAN.md (e.g., on a re-run), replace that section in place rather than appending a duplicate.

````markdown
## Phase 2 Step 2.1: Question Generation Personas

**Effort:** {{effort}}
**Connector/Analogist:** [Analogist (default) | Connector (swap)]

Full rationale: see [personas/question-generation.md](personas/question-generation.md).

### Tier 1 Personas

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Questioner | Analytical | [range] | Synthesize |
| Analyst | Analytical | [range] | Synthesize |
| Devil's Advocate | Structural | [range] | Synthesize |
| Appreciative Inquirer | Structural | [range] | Synthesize |
| Audience Advocate | Structural | [range] | Synthesize |
| Systems Thinker | Structural | [range] | Synthesize |
| Provocateur | Perspective | [range] | Append |
| [Analogist or Connector] | Perspective | 5-8 | Append |
| Visionary | Perspective | [range] | Append |
| Storyteller | Perspective | [range] | Append |

### Tier 2 Personas

{If effort = high, populate the table. Otherwise REPLACE with the single line: `N/A — {{effort}} effort`.}

| Persona | Category | Volume | Stream |
|---|---|---|---|
| Constraint Flipper | Perspective | 5-8 | Append (3-5 round-robin) |
| Empath | Structural | 8-12 | Synthesize |
| First Principles Thinker | Structural | 7-10 | Synthesize |
| Futurist | Structural | 8-12 | Synthesize |

### Tier 3 Personas

{If zero Tier 3 personas selected, REPLACE the table with the correct sentinel:
- Low/Medium: `None selected — no strong triggers for this topic`
- High: `None selected — no triggers at or above moderate threshold for this topic`

Otherwise include one row per selected persona.}

| Persona | Category | Volume | Stream |
|---|---|---|---|
| [Persona] | [category] | [range] | [Synthesize \| Append] |
````

---

## Volume Ranges (refer to this table)

Matches `idea-symphony/guidance/phase2A_question-gen-personas.md` Effort Level Mapping.

| Tier | Persona | Medium | High |
|---|---|---|---|
| 1 | Questioner | 10-15 | 15-20 |
| 1 | Analyst | 10-15 | 10-15 |
| 1 | Devil's Advocate | 8-12 | 10-15 |
| 1 | Appreciative Inquirer | 8-12 | 8-12 |
| 1 | Audience Advocate | 10-15 | 10-15 |
| 1 | Systems Thinker | 10-15 | 10-15 |
| 1 | Provocateur | 5-8 | 5-8 |
| 1 | Analogist / Connector | 5-8 | 5-8 |
| 1 | Visionary | 5-8 | 5-8 |
| 1 | Storyteller | 5-8 | 5-8 |
| 2 | Constraint Flipper | N/A | 5-8 |
| 2 | Empath | N/A | 8-12 |
| 2 | First Principles Thinker | N/A | 7-10 |
| 2 | Futurist | N/A | 8-12 |
| 3 | Accountant | 8-12 | 8-12 |
| 3 | Lawyer | 8-10 | 8-10 |
| 3 | Politician | 8-10 | 8-10 |
| 3 | Technical Expert | 8-10 | 8-10 |

## Low Effort

At `low` effort, produce the same roster structure as medium. Tier 1 is always
included; Tier 2 is omitted (high-only); Tier 3 is gated to 0-1 strong-trigger
persona per the personas guide. Connector/Analogist swap evaluation still
applies. The Synthesize/Append split still applies.
