# Perplexity Deep Research Prompt — OpenAI Symphony Competitive/Naming Analysis

**Date:** 2026-05-09
**Purpose:** Inform naming decision for Idea Symphony skill (keep "Symphony" vs. rename to "Idea Forge"). Decision needed before publishing examples per `dev/2026-05-09_symphony-final-polish.md`.
**Tool:** Perplexity Deep Research (or Comet/Pro Search if Deep Research is unavailable).

---

## Context for the prompt (do not paste into Perplexity — for human reference)

OpenAI released a tool called **Symphony** on/around 2026-05-09, announced at https://openai.com/index/open-source-codex-orchestration-symphony/ with the repository at https://github.com/openai/symphony. Key facts:

- Symphony is an agent orchestrator that turns a project-management board (e.g., Linear) into a control plane for Codex coding agents.
- Released as a `SPEC.md` reference implementation, not a maintained product.
- Reference implementation in Elixir; spec is language-agnostic.
- Built on top of Codex App Server (headless JSON-RPC mode for Codex).
- OpenAI claims a 500% increase in landed PRs for some internal teams.
- Linear's founder publicly highlighted a workspace-creation spike at release time.
- Open-sourced explicitly to demonstrate Codex App Server, not as a competitive product.

I maintain a **separate, unrelated** Claude skill called **Idea Symphony** — a multi-perspective brainstorming orchestration skill that uses subagents with isolated context windows to generate diverse persona viewpoints on a brainstorming topic. It has nothing to do with coding, Codex, Linear, or PR orchestration. It does, however, also use the word "orchestration" in its design vocabulary (subagent orchestration for ideation).

The naming question is whether OpenAI's Symphony has enough cultural/search reach that "Idea Symphony" risks confusion, dilution, or unfindability — and whether I should rename my skill to "Idea Forge" before publishing examples publicly.

---

## The prompt to paste into Perplexity Deep Research

```
I need a competitive landscape and naming-collision analysis for a personal
project decision.

## Background

OpenAI announced an open-source project called "Symphony" on 2026-05-09, blog
post at https://openai.com/index/open-source-codex-orchestration-symphony/
and repository at https://github.com/openai/symphony. Symphony is an
orchestration layer that turns project-management tools (like Linear) into
a control plane for OpenAI's Codex coding agents. It's released as a
reference SPEC.md rather than a maintained product, with an Elixir reference
implementation. OpenAI claims a 500%+ increase in landed pull requests on
internal teams.

I maintain an unrelated personal project — a Claude skill called "Idea
Symphony" — that performs multi-perspective brainstorming using AI personas
in isolated context windows. It has no relationship to coding, Codex, Linear,
or pull-request orchestration. I'm deciding whether OpenAI's release of a
tool named "Symphony" creates enough naming collision that I should rename
my skill (candidate alternative: "Idea Forge").

## Research goals

Produce a thorough analysis covering the following questions. Cite sources
for every quantitative or factual claim. Where evidence is thin or
speculative, say so explicitly.

### 1. OpenAI Symphony's reach and trajectory

- How is OpenAI Symphony being received in the developer community as of
  the research date? Quantify where possible: GitHub stars on
  openai/symphony, Hacker News submission rank/comment volume, Reddit
  discussion volume (r/OpenAI, r/programming, r/MachineLearning, r/Claude,
  r/LocalLLaMA), X/Twitter engagement on the announcement.
- Are major tech-news outlets covering it (TechCrunch, The Verge, Ars
  Technica, The Information, Wired)? List the coverage with publication
  dates and headlines.
- Are independent developers building on it (forks, alternative-language
  implementations, tutorials, "I tried Symphony" blog posts)?
- Is the term "Symphony" being adopted as a generic noun for
  Codex-orchestration patterns the way "Cursor rules" or "Claude skills"
  have become category terms? Or is it being treated as a one-off
  reference implementation?

### 2. Pre-existing "Symphony" tools in the AI/agent space

- Beyond OpenAI's release, what other tools, libraries, frameworks, or
  products in the AI / agentic-AI / orchestration space already use
  "Symphony" or "Symphony-" names? List them with a one-line description
  of each.
- Specifically check: Microsoft, Google, Salesforce, IBM, AWS, Anthropic,
  Cohere, Hugging Face, LangChain ecosystem, LlamaIndex ecosystem,
  CrewAI ecosystem, AutoGen ecosystem.
- Are there any "Idea Symphony"-named projects (any domain) that
  predate or are contemporaneous with my skill? Search GitHub, npm,
  PyPI, and general web.

### 3. Search-result collision

- For the queries "idea symphony", "symphony AI brainstorming",
  "symphony brainstorming", "claude idea symphony", and
  "symphony skill" — what currently ranks on Google and on perplexity
  itself? Summarize the top 5 results for each query.
- Hypothetically: if a user searched "Idea Symphony" hoping to find a
  Claude brainstorming skill, would OpenAI's Symphony dominate results
  enough to obscure it? Rate the collision risk: high / medium / low.

### 4. Naming-precedent analogues

- Find examples of small open-source tools that share a name with a
  later, larger release from a major lab/company. What happened to the
  smaller project's discoverability, branding, and adoption? Examples
  to look for: any tool that shared a name with a later OpenAI, Google,
  Meta, or Microsoft release.
- For each precedent: did the smaller project rename, coexist, or fade?
  What seems to predict each outcome?

### 5. Alternative name evaluation: "Idea Forge" (and beyond)

**Known prior art on "Idea Forge" (do not re-research these — treat as
established):** the first page of Google for "idea forge" includes (a) a
university makerspace, (b) a drone company, (c) a Google Gemini developer
competition, and (d) a recently launched webapp at theideaforge.app. So
"Idea Forge" is not a greenfield name — it has its own crowdedness,
different in shape from the OpenAI-Symphony collision.

Given that, please:

- For each of the four prior-art uses above, assess: is it active and
  growing, dormant, or declining? Specifically dig into theideaforge.app —
  what does it do, how recent is the launch, who's behind it, and is its
  domain (brainstorming/ideation) overlapping enough with my skill to
  cause user confusion?
- Are there other "Forge"-named tools in the AI agent / orchestration /
  ideation space that would create additional collision? (Stable Diffusion
  Forge UI, Hugging Face's various Forge-named projects, AI Forge, etc. —
  list any.)
- Compare the *shape* of the two collisions: "Symphony" collides with one
  big-lab release in an adjacent domain (agent orchestration); "Forge"
  collides with multiple smaller players, one of which (theideaforge.app)
  is in the *same* domain (ideation). Which collision shape is worse for
  a personal Claude skill that may eventually be published with examples?

### 5b. Third-option name search (high priority given §5 findings)

Both leading candidates are crowded. Surface 5–10 candidate alternative
names that:

- Are distinctive in the AI / agent / ideation / brainstorming /
  productivity tooling landscape (low-collision in Google search,
  GitHub, npm, PyPI, Product Hunt).
- Evoke the skill's actual function: multi-perspective brainstorming via
  isolated-context AI personas. Metaphors that have worked in this space
  include musical/orchestral, manufacturing/forge, council/parliament,
  ensemble/cast, kitchen/chef, kaleidoscope/prism, and round-table.
- Pair naturally with "Idea Factory" (the user's companion skill for
  action planning — this naming pair will likely persist).
- Are short enough to work as a slash-command verb or skill name (one
  word ideal, two words acceptable).

For each candidate, give: (1) the name, (2) a one-sentence rationale,
(3) a quick collision check (any major prior art?), (4) how it pairs
with "Idea Factory."

### 6. Recommendation framework

Synthesize the findings into a recommendation framework (not a single
recommendation — I'll make the call myself). Given that both "Symphony"
and "Forge" are crowded in different ways, treat this as a three-way
comparison: keep Symphony, rename to Forge, or rename to a third-option
candidate from §5b. Address:

- Under what conditions does the evidence favor keeping "Idea Symphony"
  (i.e., living with the OpenAI Symphony collision)?
- Under what conditions does it favor "Idea Forge" (living with the
  multi-player Forge crowdedness, including the same-domain
  theideaforge.app)?
- Under what conditions does it favor a third-option name from §5b?
- What's the cost/benefit asymmetry across all three branches? Worst
  case of keeping Symphony if OpenAI's tool grows huge; worst case of
  Forge if theideaforge.app or the Gemini Idea Forge competition gains
  traction in the same ideation domain; worst case of a third-option
  rename (loss of any continuity, plus risk that the new name has its
  own undiscovered collision).

## Output format

Structure the response as:

1. **Executive summary** (3–5 sentences with the headline findings)
2. **Section-by-section findings** for each of the six research goals above
3. **Recommendation framework** (the synthesis from goal #6)
4. **Sources cited** (numbered list with URLs)

Be specific. Quantify where possible. If a claim is speculative, label it
as such. Do not pad. If a question can't be meaningfully answered with
available sources, say so rather than filling space.
```

---

## How to use this

1. Open Perplexity and select **Deep Research** mode (or **Pro Search** with the "research" toggle if Deep Research is unavailable).
2. Paste the entire fenced block above into the prompt input.
3. Let it run (Deep Research typically takes 5–15 minutes for a query of this scope).
4. Save the output to `dev/2026-05-09_openai-symphony-research-results.md` for the record.
5. Review against the open decision in `dev/2026-05-09_symphony-final-polish.md` §"Naming decision" and lock in keep-vs-rename before bulk regen of examples.

## Notes on the prompt design

- **No leading the witness.** The prompt asks for a recommendation *framework* rather than a single recommendation, since the user explicitly wants to make the call themselves.
- **Quantification requirement.** GitHub stars, HN comment counts, etc. — these are specifically requested because vibe-based assessments of a 1-week-old release tend to be unreliable.
- **Precedent lookup (§4).** This is the most decision-relevant section: how have other small projects fared when a large lab took their name? Real precedents are more useful than abstract guessing.
- **Third-option opening (§5b/§6).** Promoted to a first-class section because both leading candidates are crowded — "Symphony" by OpenAI, "Forge" by a university makerspace, drone company, Gemini competition, and the same-domain theideaforge.app. The decision shape is genuinely three-way, not two-way.
- **Forge prior art pre-loaded.** Section 5 hands the model the four known Forge collisions so research time goes to *trajectory* and *same-domain risk* rather than re-discovering what we already know.
- **Asymmetric-risk framing (§6).** Prompts the model to think about the regret-minimization shape of the decision across all three branches, not just point estimates.
