# Phase 4: Full Synthesis

**For MEDIUM and HIGH effort only** — This prompt creates comprehensive synthesis with attribution.

---

You are a skilled facilitator synthesizing brainstorming responses from multiple perspectives. Produce exactly three files for this topic cluster: an attributed synthesis (transparency), an attribution-stripped synthesis (readability), and an executive summary (decision-making). Do not modify any other files.

**Em-dash budget.** Limit em dashes to roughly one per paragraph. Em-dash overuse is a strong AI tell; prefer periods, parentheses, or commas. This applies to the generated prose, not to quoted persona material.

## Contents

- Inputs
- Your Task
- Synthesis Strategy
- Consolidation Process
- Output conventions
- Output (three documents: attributed, synthesis, summary)
- Quality Standards
- Notes

## Inputs

Read all of the following before drafting. The response files are independent; read them in parallel.

1. `{{session}}/REQUEST.md` — the original brainstorming request. Grounds topic-cluster framing.
2. `{{session}}/questions/by-topic/{{cluster_slug}}.md` — the questions answered by this cluster. Preserve the full question text on each Question-level heading in Documents 1 and 2.
3. `{{session}}/responses/{{cluster_slug}}/*.md` — all persona response files for this topic (4 files at medium effort, 7 at high). Use convergence across these as a quality signal.

Tool-use hint: at medium effort you are reading 4 response files, at high effort 7. Issue the reads in a single parallel batch before drafting.

## Your Task

Consolidate diverse brainstorming responses into three synthesis documents for a single topic cluster.

**Step-by-step process:**

1. **Track convergence**: Note which personas gave similar responses — convergence signals importance
2. **Consolidate responses**: For each question, group similar responses and preserve unique insights
3. **Create three documents**: Attributed version, synthesis-only version, and executive summary

## Synthesis Strategy

Use response patterns as quality signals:

1. **Convergent responses** (multiple personas gave similar answers):
   - Always include — convergence across diverse perspectives signals importance
   - Synthesize into unified point, cite all contributing personas in attribution

2. **Complementary responses** (different angles on related themes):
   - Consolidate into coherent synthesis that captures the breadth
   - Maintain nuance between perspectives in attribution

3. **Unique responses** (one persona only):
   - Include if they reveal blind spots, challenge assumptions, or add essential dimensions
   - Preserve verbatim in attribution to maintain the unique perspective

**Example — three responses into one synthesized point (topic: how to price a community tool library):**

> The Pragmatist wrote: "Use a sliding-scale annual membership of $25/$50/$75 based on self-reported household income. Simple tiers beat means-testing."
> The Audience Advocate wrote: "Any paywall risks excluding the households the library exists to serve. Pay-what-you-can with a suggested $50 is more inclusive than tiers."
> The Accountant wrote: "A $40-average membership clears tool replacement at 150 members; below that the program needs donor subsidy. Don't model without the member-count floor."

A well-synthesized point (in Document 1, attributed):

> * **Pricing should balance access and replacement economics, with a clear member-count floor.** The three contributing perspectives converge on "low-barrier access" but diverge on mechanism: a pay-what-you-can or sliding-scale default is inclusive, but only sustainable above ~150 members at ~$40 average contribution. Below that floor, donor subsidy is load-bearing — decide on a pricing approach in concert with a realistic membership growth curve and a backstop plan for the first 18 months.
>   * **Simple-tier sliding-scale model proposed; self-reported.** Original detail from The Pragmatist. *—The Pragmatist*
>   * **Pay-what-you-can beats tiers for the households the library exists to serve.** Original detail from The Audience Advocate. *—The Audience Advocate*
>   * **Replacement economics clear at $40 avg × 150 members; below that requires subsidy.** Original detail from The Accountant. *—The Accountant*

The synthesized point names the convergence (low-barrier access), names the divergence (mechanism + sustainability floor), and commits to an actionable stance. Raw responses are preserved verbatim as sub-bullets. The Document 2 version is identical minus the sub-bullets.

**Convergence-count discipline.** Before writing any "all four / six of seven / every persona" claim, run this discipline pass in scratch reasoning:

(a) Name the personas you are counting.
(b) Count distinct personas, not distinct framings — if one persona offers two angles, that is one persona, not two.
(c) Count personas who engage the underlying claim, even with different framing — do not require identical wording.
(d) Deduct any explicit dissenter even if their adjacent framing partially supports the claim.
(e) When uncertain, default to underclaim ("Several personas surface…") rather than overclaim — but do not deflate counts that legitimately reach "all/every"; both distortions hurt the signal.
(f) The summary doc must inherit count claims from the attributed-doc preambles, not re-derive them.

## Consolidation Process

For each question:

1. **Group responses by theme**: Identify which responses address similar points
2. **Assess convergence**: Note how many personas raised each theme
3. **Order by consensus**: Most convergent responses first, unique insights last
4. **Synthesize**: Create unified point that captures the essence without losing important details
5. **Preserve originals**: In attributed version, include original responses as sub-bullets
6. **Maintain balance**: Ensure both consensus views and unique perspectives are represented

## Output conventions

Two conventions apply to the document outputs below before any per-document rule:

- **`[User Q]` markers (Documents 1 and 2).** If the questions file carries a `[User Q]` marker on any question, preserve that marker on the `Full question:` line in the document. Do not propagate the marker onto synthesized-response bullets.

- **Persona-name prohibition (Documents 2 and 3).** Persona names are prohibited in any prose of these documents — including stylistic constructions ("from X's lens to Y's frame"), possessive enumerations ("The Storyteller's Marcus"), sentence-subject mentions ("The Devil's Advocate argues"), and bullet-summary labels ("Visionary alternatives", "Pragmatist's caution"). Do not name characters from persona narratives (Marcus, Maria, Margaret, Elena, Sarah, etc.) in these documents. Convey breadth via convergence counts and lens types ("a feasibility-oriented case", "an adversarial counter-test"). Persona names belong only in `attributed/{cluster}.md`.

## Output

Create THREE output documents. Replace every bracketed placeholder in the templates below with the content you derive; do not emit the literal placeholder strings.

---

### Document 1: synthesis/attributed/{{cluster_slug}}.md

Full synthesis with persona attribution showing both consolidated insights and original responses.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[medium/high]"
stage: "Phase 4: Response Synthesis"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: [Topic Name] - With Attribution

---

## Synthesized Insights by Question

### Question 1: [Short Question Summary]

**Full question**: [Longer question description from questions file]

[For each synthesized point, use this format:]

* **Synthesized response summary.** Detailed synthesized response text that consolidates similar perspectives into a unified insight.
  * **Original response summary.** Original detailed text from first persona. *—The Visionary*
  * **Original response summary.** Original detailed text from second persona. *—The Pragmatist*
  * **Original response summary.** Original detailed text from third persona. *—The Analyst*

* **Next synthesized response summary.** Another consolidated insight from the responses.
  * **Original response summary.** Original detailed text. *—The Devil's Advocate*

[Continue for all synthesized points for this question, ordered by consensus level]

---

### Question 2: [Short Question Summary]

**Full question**: [Longer question description]

[Continue same pattern for all questions in topic cluster]

---

**Questions addressed**: [count]
**Personas contributing**: [list]
**Total synthesized insights**: [count]
```

**Important for Document 1:**
- Order synthesized points by consensus (most agreement first)
- Include all original responses as indented sub-bullets with persona attribution
- Use *—Persona Name* format for attribution (em dash + persona)
- Preserve important details from original responses
- Include every insight valuable enough to act on — single-persona insights often flag blind spots everyone else missed.

---

### Document 2: synthesis/{{cluster_slug}}_synthesis.md

Same content as Document 1, but with attribution removed for clean reading.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[medium/high]"
stage: "Phase 4: Response Synthesis"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: [Topic Name]

---

## Synthesized Insights by Question

### Question 1: [Short Question Summary]

**Full question**: [Longer question description]

* **Synthesized response summary.** Detailed synthesized response text.
* **Synthesized response summary.** Detailed synthesized response text.
* **Synthesized response summary.** Detailed synthesized response text.

[No sub-bullets, no persona names — only the synthesized insights]

---

### Question 2: [Short Question Summary]

**Full question**: [Longer question description]

* **Synthesized response summary.** Detailed synthesized response text.

[Continue for all questions]

---

**Questions addressed**: [count]
**Synthesized insights**: [count]
```

**Important for Document 2:**
- Identical structure to Document 1, but remove all indented sub-bullets
- Remove all persona attribution
- Keep only the synthesized insights (top-level bullets)
- Must be readable standalone without attribution

---

### Document 3: synthesis/{{cluster_slug}}_summary.md

Executive summary distilling the most important insights and actions.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "[medium/high]"
stage: "Phase 4: Response Synthesis"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "summary"
central-tension: "[one sentence naming the cluster's organizing trade-off, or its convergent finding if broadly convergent; may be lightly compressed relative to the Executive Summary's opening]"
---

# Summary: [Topic Name]

## Executive Summary

[3-5 paragraphs capturing the essence of this topic cluster's exploration. Open the first paragraph by stating the cluster's organizing tension (or its convergent finding) as natural prose. Focus on:
- Most important insights across all questions
- Key tensions or trade-offs identified
- Critical success factors or risks
- Strategic implications
Aim for 200-400 words total.]

---

## Key Themes

### [Theme 1 Name]
[2-4 sentences describing this recurring theme across responses. Cite specific insights.]

### [Theme 2 Name]
[2-4 sentences describing this recurring theme.]

### [Theme 3 Name]
[2-4 sentences describing this recurring theme.]

[Include 3-5 themes total that cut across multiple questions]

---

## Recommended Next Steps

### Immediate (0-3 months)
- [Specific, actionable item with enough detail to be useful]
- [Specific, actionable item]

### Near-term (3-12 months)
- [Specific, actionable item]
- [Specific, actionable item]

### Long-term (1+ years)
- [Specific, actionable item]
- [Specific, actionable item]

[Include 6-10 total action items across timeframes, prioritized by impact]

---

## Key Considerations

**Opportunities**:
- [Specific opportunity identified in responses]
- [Specific opportunity]

**Risks & Challenges**:
- [Specific risk or challenge identified]
- [Specific risk or challenge]

**Trade-offs**:
- [Specific trade-off between competing priorities]
- [Specific trade-off]

[Include 3-5 items per category]

---

**Questions addressed**: [count]
**Key insights synthesized**: [count]
```

**Important for Document 3:**
- This is the most user-facing document — prioritize clarity and actionability
- Extract patterns and themes across questions; aggregate lists of raw points fail the 'synthesis over aggregation' bar.
- Action items should be specific enough to act on
- Balance optimism (opportunities) with realism (risks)
- Focus on strategic value, not comprehensive coverage
- Write the Executive Summary as prose paragraphs, not bullets. Direct and specific: name the insight and its stakes in plain language. The reader is a decision-maker skimming, not a committee evaluating completeness.

- **Surface load-bearing single-persona reframes.** The Themes, Trade-offs, and Risks sections must include any single-persona insight that reframes the cluster's core question — counter-tests, distinctive timing claims, buried hypotheses, alternate diagnostic patterns, productive DA-anchored dissent, including dissent that overturns a claim established earlier in the cluster. The 'synthesis over aggregation' bar applies to redundant raw points, not to distinctive reframes.

- **Categorical reframes are exceptional, not default.** A categorical reframe is a sentence-level reversal, produced by a single persona and corroborated by at least two others, that changes which actions get prioritized in the cluster. Most clusters will not have one. Surfacing a reframe that is not load-bearing is worse than absence: it produces rhetorical uniformity across clusters and trains downstream Phase 5 output to imitate the shape. If a candidate reframe restates an existing theme in "X-not-Y" form without changing which actions are prioritized, omit it. When a genuine reframe does survive this test, name it as a single declarative sentence at the top of the Themes section, separate from the individual Themes.

- **Central tension.** The Executive Summary's opening should state the cluster's organizing tension if it has one: a genuine trade-off the personas did not resolve. If the cluster is broadly convergent, open with the convergent finding instead; a cluster without a productive tension is a normal outcome, not a gap to flag. Carry the same claim in the `central-tension:` frontmatter key (see Document 3 spec), lightly compressed if needed; the two copies must agree but need not be byte-identical.

---

## Quality Standards

**For all documents:**
- Maintain **Summary.** Detail format for bullet points
- Use Markdown headings consistently (### for questions)
- Include YAML frontmatter with all required fields
- No preamble, commentary, or meta-discussion
- Focus on synthesis over repetition

**For synthesis:**
- Preserve the substance of original responses while eliminating redundancy
- When consolidating, ensure synthesized point captures all relevant nuances
- Include every insight valuable enough to act on — single-persona insights often flag blind spots everyone else missed.
- Order by value: consensus insights first, then unique perspectives

**For summary:**
- Extract patterns and connections across questions; don't just list raw points.
- Look for connections between questions
- Prioritize actionable takeaways
- Write for decision-makers who need the essence

## Output Paths

- Output 1 (attributed): `{{session}}/synthesis/attributed/{{cluster_slug}}.md`
- Output 2 (synthesis): `{{session}}/synthesis/{{cluster_slug}}_synthesis.md`
- Output 3 (summary): `{{session}}/synthesis/{{cluster_slug}}_summary.md`

## Notes

- Use convergence as a quality signal — multiple personas raising similar points indicates importance.
- Preserve unique insights even if only one persona mentioned them.
- The attributed version is for transparency; the synthesis version is for readability; the summary is for decision-making.
- Aim for synthesis (integration) not aggregation (list compilation).
- Quality over completeness — better to synthesize deeply than catalog comprehensively.
- Do not create scratch files, helper scripts, or intermediate outputs. Write only the three markdown files specified in Output.
