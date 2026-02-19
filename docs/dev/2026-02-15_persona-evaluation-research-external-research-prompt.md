# Brainstorming Methodology External Research Plan

## Context

Idea Symphony is a brainstorming facilitation skill that transforms an agent from a single-perspective assistant into a simulated multi-perspective brainstorming panel, mimicking the dynamics of facilitated team ideation sessions.

The skill orchestrates sessions using **multiple subagents, each with their own isolated context window**. Rather than having an agent switch between personas within a single conversation, this skill spawns dedicated subagent tasks—each embodying a distinct thinking archetype—to generate genuinely diverse perspectives unconstrained by shared context.

The skill produces a complete paper trail of all intermediate outputs, enabling transparency, debugging, and the ability to trace any synthesized insight back to its original source.

## Task

As part of the persona evaluation research, we need to map our 15 Idea Symphony personas against established brainstorming and creative thinking frameworks to identify gaps — thinking modes or perspectives that are absent and would meaningfully improve brainstorming quality.

## Architecture Constraint: Isolated Subagents

**Critical context for all analysis:** Idea Symphony personas operate as **isolated subagents with separate context windows**. Each persona runs independently, reads shared input files, and writes its output to disk. Personas never interact with each other in real-time — the orchestrator manages sequencing and file routing.

This means:
- There is no "group discussion" to facilitate or mediate
- Personas cannot clash with, suppress, or respond to each other during their turn
- Process management (when to brainstorm vs critique) is handled by the orchestrator, not by any persona
- Each persona must produce value **independently** through its written contribution

All framework mappings and candidate persona proposals must be evaluated against this constraint. A gap is only actionable if the missing thinking mode can produce value when operating in isolation on a shared topic.

## Current 15 Personas (for reference)

| Category | Personas |
|---|---|
| **Generative** (4) | Visionary, Momentum Builder, Analogist, Constraint Flipper |
| **Analytical** (8) | Pragmatist, Devil's Advocate, Analyst, Audience Advocate, Technical Expert, Questioner, Futurist, First Principles Thinker |
| **Connective** (3) | Connector, Storyteller, Synthesizer |

## Research Steps

### Step 1: Framework-by-Framework Coverage Mapping

Research each framework below and produce a mapping table showing which of our 15 personas covers each role/dimension, and which are uncovered.

**Frameworks to research:**

1. **de Bono's Six Thinking Hats** — White (facts/data), Red (feelings/intuition), Black (caution/risk), Yellow (benefits/optimism), Green (creativity/alternatives), Blue (process/meta-cognition)
2. **SCAMPER** — Substitute, Combine, Adapt, Modify/Magnify, Put to other use, Eliminate, Reverse
3. **Design Thinking roles** — Empathize, Define, Ideate, Prototype, Test
4. **TRIZ inventive principles** — Research the 40 inventive principles; identify which thinking patterns are present in our personas and which major categories are missing
5. **de Bono's Lateral Thinking techniques** — Random entry, provocation, movement, challenge
6. **Creative Problem Solving (CPS) model** — Clarify, Ideate, Develop, Implement — and the cognitive roles within each
7. **Walt Disney's Three Rooms** — Dreamer, Realist, Critic
8. **Belbin Team Roles** — 9 roles across action-oriented, people-oriented, and thinking-oriented categories

For each framework, use WebSearch/WebFetch to research the canonical roles or dimensions, then map our personas against them.

### Step 2: Stakeholder Perspective Audit

Research common stakeholder archetypes from:
- **Business strategy:** Financial, regulatory/compliance, operational, competitive
- **Design/UX:** End user, edge-case user, non-user/affected party, accessibility
- **Social impact:** Cultural, environmental/sustainability, equity/justice, community governance
- **Innovation:** Early adopter, skeptic, incumbent/legacy, ecosystem partner

Map which stakeholder perspectives our personas naturally represent and which are systematically absent.

### Step 3: Cognitive Diversity Audit

Research cognitive diversity models and map our personas:
- **Divergent vs convergent thinking** — Do we have enough of both?
- **Systems thinking** — Does any persona explicitly think in systems, feedback loops, emergent behavior?
- **Abductive reasoning** — Reasoning from observation to best explanation
- **Emotional/intuitive reasoning** — de Bono's Red Hat; does any persona operate from gut feeling, aesthetics, or emotional resonance?
- **Provocative thinking** — Deliberately absurd or impossible starting points to unlock new directions
- **Subtractive thinking** — Removing elements rather than adding (our personas seem heavily additive)

### Step 4: Synthesize Findings

Produce a single research document at `2026-02-15_brainstorming-frameworks-research.md` containing:

1. **Framework mapping tables** — Each framework with persona coverage marked
2. **Gap summary** — A consolidated list of uncovered thinking modes/perspectives, with which frameworks flagged each gap
3. **Candidate persona concepts** — For each significant gap:
   - Proposed name and role description
   - Which frameworks support its inclusion
   - Whether an existing persona could be expanded to cover it instead
   - Priority: critical gap (multiple frameworks flag it) vs nice-to-have (single framework)
   - **Architecture viability:** Does this thinking mode produce value when operating in isolation on a shared topic, or does it require real-time interaction with other personas? (If the latter, it is not viable as an Idea Symphony persona.)
4. **Observations about analytical over-representation** — Whether frameworks confirm the 8/15 analytical skew is a problem, or whether it's actually appropriate

## Output

Single document: `2026-02-15_brainstorming-frameworks-research.md`

## Additional Background

### Current Persona Prompts

[paste in contents of docs/personas.md]

### Target Users & Triggers

- **Solo creators and knowledge workers** seeking diverse perspectives without a team
- **Small team leads** wanting to augment team brainstorming with structured AI input
- **Product managers** exploring multiple angles of concepts or features
- **Writers and content creators** seeking inspiration and varied viewpoints
- **Anyone working on complex problems** that benefit from multi-perspective analysis

### Workflow Overview

The Idea Symphony skill follows a structured workflow with distinct phases. Phases 2-4 split into A (low effort) and B (medium/high effort) variants.

#### Phase 1: Context Gathering
1. Receive user's initial concept, idea, or problem statement
2. Optionally receive supporting materials (documents, constraints, goals)
3. Ask about user-defined questions to preserve through all phases
4. Determine effort level (intelligent suggestion or user-specified)
5. Determine persona selection based on topic and effort level

#### Phase 2: Question Generation
- **Low (Phase 2A):** Single generic subagent generates 15-20 questions in 3-5 clusters
- **Medium/High (Phase 2B):** 3 or 5 persona subagents generate questions independently, then a synthesis subagent consolidates them into topic clusters

#### Phase 3: Multi-Perspective Brainstorming
- **Low (Phase 3A):** 1 generic subagent per topic cluster, 3-5 responses per question
- **Medium/High (Phase 3B):** 3 or 5 persona subagents per topic cluster, each responding independently

#### Phase 4: Synthesis
- **Low (Phase 4A):** Summary-only synthesis per topic cluster
- **Medium/High (Phase 4B):** Full synthesis producing attributed, synthesis, and summary documents per topic cluster

#### Phase 5: Final Output
1. Concatenate synthesis files into `SYNTHESIS.md`
2. Generate final `BRAINSTORM.md` summary and session index
3. Present results to user
