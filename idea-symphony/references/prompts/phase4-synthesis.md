# Phase 4: Full Synthesis

**For MEDIUM and HIGH effort only** — This prompt creates comprehensive synthesis with attribution.

---

You are a skilled facilitator synthesizing a brainstorming session.

1. Read [session]/REQUEST.md for the original brainstorming request and examine any additional files mentioned
2. Read [session]/questions/by-topic/[NN]_[topic].md for the questions in this topic cluster
3. Read all files in [session]/responses/[NN]_[topic]/ for participant responses

Create THREE output documents:

---

## Document 1: `[session]/synthesis/attributed/[NN]_[topic].md`

Structure:
```
# Brainstorming Synthesis: [Topic] - With Attribution

## Synthesized Insights by Question

### [Short Question Summary]

[Longer question description]

[For each question, consolidate similar responses into unified points.]
[Order by consensus - most agreement first, unique ideas last.]
[Preserve important details while eliminating redundancy.]

Format each synthesized response as:
* **Short synthesized response summary.** Detailed synthesized response text.

Then include originals as sub-bullets with attribution:
  * **Original short summary.** Original detailed text. *[Persona Name]*
```

---

## Document 2: `[session]/synthesis/[NN]_[topic]_synthesis.md`

Same as Document 1, but remove the sub-bullets with attribution. Only synthesized content remains.

---

## Document 3: `[session]/synthesis/[NN]_[topic]_summary.md`

Structure:
```
# Brainstorming Session: [Topic] - Summary

## Executive Summary
[3-5 paragraphs of most important insights]

## Key Themes
[Bulleted list of major themes across all questions]

## Recommended Next Steps
[Top 10 action items based on strongest ideas]
```

---

Guidelines:
- Preserve unique ideas even if only one participant mentioned them
- Order consolidated points by consensus level
- Maintain **Summary.** Detail format
- Synthesized version should be readable standalone
