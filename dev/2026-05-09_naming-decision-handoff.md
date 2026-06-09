# Handoff Prompt — Naming Decision Review & Recommendation

**Date:** 2026-05-09
**Purpose:** Paste this prompt into a fresh Claude session after the Perplexity deep research report is in hand. The session will read the report, assess it, and produce a structured recommendation for the user's review.
**Prerequisite:** Perplexity research has been run using `dev/2026-05-09_openai-symphony-naming-research_prompt.md` and the results saved to `dev/2026-05-09_openai-symphony-naming-research_results.md`.

---

## How to use this handoff

1. Run the Perplexity Deep Research prompt from `dev/2026-05-09_openai-symphony-naming-research_prompt.md`.
2. Save the output to `dev/2026-05-09_openai-symphony-naming-research_results.md` exactly as Perplexity produced it (don't pre-summarize — the assessor needs the raw report).
3. Open a fresh Claude Code session in this repo.
4. Paste the entire fenced block below as the first message.

---

## The handoff prompt

```
I need you to read a competitive-analysis research report and produce a
structured assessment + recommendation for a naming decision. I will make
the final call — your job is to give me the sharpest possible read on the
evidence and a defensible recommendation, not to hide ambiguity.

## What you're working with

Read these files in this order before doing anything else:

1. `dev/!voice-memos/2026-05-06  Idea Symphony Final Touches.md` — the
   original voice memo where the naming concern was raised. Section
   "Naming concern: OpenAI's 'Symphony'" is the relevant part. Read the
   whole memo for context on why this skill exists and where it's headed.

2. `dev/2026-05-09_symphony-final-polish.md` — the broader finishing-touches
   plan. The "Naming decision: Symphony vs. Forge" section frames the
   decision and notes it must be locked before bulk regen of examples.

3. `dev/2026-05-09_openai-symphony-naming-research_prompt.md` — the prompt that
   was run on Perplexity. Read this so you understand what the research
   was asked to investigate and what biases the prompt may have introduced.

4. `dev/2026-05-09_openai-symphony-naming-research_results.md` — the raw
   Perplexity Deep Research output. This is your primary source.

5. `idea-symphony/SKILL.md` — skim the first 100 lines so you understand
   what the skill actually does and what naming has to fit. The phase
   names (sonata-form: Exposition, Development, Recapitulation, etc.)
   are baked into the skill and would be lost if the musical metaphor is
   abandoned.

6. `CLAUDE.md` — the repo's ground-truth on the three-skill structure
   (Symphony, Forge, Factory) and what each is meant to do.

## What to produce

A single new markdown file at `dev/2026-05-09_naming-decision-assessment.md`
with the following structure. Do not write anywhere else.

### 1. Research-quality audit (1-2 paragraphs)

Before trusting the report, audit it. Specifically:
- Did the research actually answer each of the six goals in the prompt,
  or did it skip/punt sections?
- Are quantitative claims (GitHub stars, HN comments, search rankings,
  etc.) cited with sources, or are they vibes?
- Where is the report's evidence weakest? Flag findings that should be
  weighted lightly because they're speculative or thinly sourced.
- Did the report identify naming-precedent analogues (§4) with real
  examples, or did it abstract-handwave?

If the report is meaningfully incomplete or unreliable, say so up front.
Don't proceed to a recommendation built on a shaky foundation — instead,
recommend re-running the research with a sharper prompt.

### 2. Headline findings (5-8 bullet points)

Distill what the research actually established about each of:
- OpenAI Symphony's reach and trajectory (1-week-out signals)
- Pre-existing AI-space "Symphony" tools
- Search-result collision risk for "Idea Symphony" specifically
- The four known "Idea Forge" prior-art collisions (university makerspace,
  drone company, Gemini competition, theideaforge.app) and which are
  growing vs. dormant
- Any third-option candidates the research surfaced
- Naming-precedent analogues (what happened to other small projects when
  big labs took their name)

Each bullet should be a fact-claim grounded in the report, with a
parenthetical confidence indicator: (high / medium / low confidence) based
on the source quality behind it.

### 3. Three-branch comparison

A table comparing the three branches on the same axes. Branches:
- A. Keep "Idea Symphony"
- B. Rename to "Idea Forge"
- C. Rename to a third-option candidate (pick the strongest one from §5b
  of the research; if none are clearly strong, say so and skip this branch)

Axes:
- Search discoverability (will users find the skill?)
- Same-domain confusion risk (could users mistake it for a different tool
  in ideation/brainstorming/AI-orchestration space?)
- Brand continuity cost (loss of sonata-form phase names, loss of any
  existing recognition)
- Pairing fit with "Idea Factory" (the companion skill)
- Asymmetric downside if the bet goes wrong

Mark each cell as Strong / Acceptable / Weak / Bad with a one-line
justification. Don't pad — terse cells are fine if the evidence is thin.

### 4. Recommendation

A single recommendation with three required components:

- **The call:** A, B, or C, named explicitly.
- **Confidence:** high / medium / low, with one sentence on why.
- **What would flip the recommendation:** the specific evidence or
  development that, if it appeared, would change your answer. Example:
  "If theideaforge.app gets >10K MAU within six months, branch B becomes
  untenable and I'd switch to C."

Be willing to recommend "no rename" if the evidence supports it. The
voice memo expresses real attachment to the Symphony name and the
sonata-form phase names — that attachment is a legitimate input but
shouldn't drive the recommendation. Weight it as one signal among many.

### 5. Open questions for the user

Anything the research didn't resolve that the user needs to decide
themselves before locking in the name. Examples might include:
- Personal-preference tiebreakers between close alternatives.
- Whether to do a small benchmark survey (ask 3-5 trusted reviewers
  which name lands better) before deciding.
- Whether to delay the decision past the example-publish milestone
  (i.e., publish as "Idea Symphony" now and reserve renaming as a
  future option).

## Tone and constraints

- Be direct. If the evidence supports keeping Symphony, say so. If it
  supports renaming, say so. Don't both-sides findings that aren't
  genuinely balanced.
- Don't pad. A 3-page assessment that says what it knows is better than
  a 6-page one that hedges.
- Cite the report's own claims with brief inline references like
  "(report §3)" or "(report ¶4)" so I can spot-check.
- Do not modify any other files. Output is the single new assessment
  document.
- Do not run the Perplexity research yourself. The report is the input;
  if it's missing or empty, stop and tell me.
- Auto mode is fine for executing this task — you don't need to ask
  permission to read the listed files or write the assessment file.
```

---

## Notes on the handoff design

- **Read order is prescribed.** Voice memo first → polish plan → research prompt → research results → SKILL.md → CLAUDE.md. This puts the human goal (voice memo) before the analysis frame (polish plan) before the data (research) before the technical constraints (SKILL.md, CLAUDE.md). Future-Claude won't accidentally weight the data over the goal.
- **Research-quality audit comes first.** If Perplexity produced a thin or hand-wavy report, the assessor needs to flag that *before* building a recommendation on it. This is a guard against treating the report as authoritative when it might not be.
- **Confidence indicators required on every finding.** Forces the assessor to distinguish "OpenAI Symphony has 4,200 GitHub stars (hard fact)" from "OpenAI Symphony is becoming the dominant orchestration paradigm (vibes)."
- **Three-branch table, not two-branch.** Per `dev/2026-05-09_openai-symphony-naming-research.md` §5b, both leading candidates are crowded; the third-option branch must be evaluated alongside, not as an afterthought.
- **"What would flip the recommendation" is mandatory.** Forces the assessor to articulate the decision boundary, which is the most useful artifact for future decisions if circumstances change.
- **Sonata-form attachment named explicitly.** The voice memo is candid about loving the Symphony name; the prompt acknowledges this as a legitimate input but tells the assessor not to let it drive. Naming the bias defuses it.
- **Auto-mode permission granted in-prompt.** Saves the user from having to approve each file read in a fresh session.

## Expected workflow timeline

1. Run Perplexity research (~10-15 min, mostly waiting).
2. Save results to `dev/2026-05-09_openai-symphony-research-results.md` (~1 min).
3. Open fresh Claude session, paste handoff prompt, let it run (~3-5 min).
4. Review assessment, decide. If decision is to rename, the next step is a rename PR before bulk regen of examples.
