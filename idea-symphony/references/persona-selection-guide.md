# Persona Selection Guide

This document provides the orchestrator (and human reviewers) with structured guidance for selecting personas per topic cluster in Phase 2C.

---

## Concentric Circles Model

Personas are organized into tiers that expand with effort level. Higher tiers add perspectives that are more specialized, more provocative, or more domain-specific.

```
┌─────────────────────────────────────────────────────────────────────┐
│                                                                     │
│   OUTER RING — Specialized Lenses (high effort, topic-gated)        │
│   Lawyer · Accountant · Politician · Storyteller                    │
│                                                                     │
│   ┌───────────────────────────────────────────────────────────┐     │
│   │                                                           │     │
│   │   MIDDLE RING — Cluster Completers (high effort)          │     │
│   │   Provocateur · Empath · Futurist · Systems Thinker ·     │     │
│   │   Constraint Flipper · Visionary · Momentum Builder ·     │     │
│   │   Connector · Analogist                                   │     │
│   │                                                           │     │
│   │   ┌─────────────────────────────────────────────────┐     │     │
│   │   │                                                 │     │     │
│   │   │   INNER RING — Topic-Matched (medium effort)    │     │     │
│   │   │   2 personas selected based on topic type       │     │     │
│   │   │   (see Topic Affinity Matrix below)             │     │     │
│   │   │                                                 │     │     │
│   │   │   ┌───────────────────────────────────────┐     │     │     │
│   │   │   │                                       │     │     │     │
│   │   │   │   CORE — Always Included              │     │     │     │
│   │   │   │   Devil's Advocate · Pragmatist       │     │     │     │
│   │   │   │                                       │     │     │     │
│   │   │   └───────────────────────────────────────┘     │     │     │
│   │   │                                                 │     │     │
│   │   └─────────────────────────────────────────────────┘     │     │
│   │                                                           │     │
│   └───────────────────────────────────────────────────────────┘     │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

### Effort Level Mapping

| Effort | Personas/Topic | Composition |
|--------|---------------|-------------|
| Low | 0 (generic) | No persona system |
| Medium | 4 | Core (2) + Inner Ring topic-matched (2) |
| High | 7 | Core (2) + Inner Ring (2) + Middle Ring cluster completers (3) |

---

## Validated Clusters

These groupings are empirically validated — personas within a cluster produce complementary (not redundant) output. Completing a cluster provides more value than adding an unrelated persona.

### Challenge Triad

```
    Devil's Advocate ←——→ Provocateur ←——→ Constraint Flipper
    (critical analysis)   (absurdist         (pragmatic
                           provocation)       reframing)
```

- **Overlap:** Near zero. DA critiques; Provocateur generates absurd alternatives; CF reframes constraints as opportunities.
- **When to complete:** Topics with entrenched assumptions, "we've always done it this way" energy.
- **Note:** DA is core (always present). Adding Provocateur + CF completes the triad at high effort.

### Human-Centered Triad

```
    Empath ←——→ Audience Advocate ←——→ Storyteller
    (emotional      (stakeholder          (lived experience
     resonance)      needs mapping)        narratives)
```

- **Overlap:** Low. Empath operates on gut feeling; AA maps stakeholder segments; Storyteller creates named-character scenarios.
- **When to complete:** User-facing topics, community engagement, service design, anything where people's feelings matter.
- **Note:** Any 2 of 3 provides good coverage. Full triad at high effort on strongly human-centered topics.

### Forward-Looking Pair

```
    Visionary ←——→ Futurist
    (paradigm          (trend-grounded
     shifts)            positioning)
```

- **Overlap:** Moderate (~19-20% convergence). Visionary ignores current reality; Futurist extrapolates from it.
- **When to complete:** Strategic topics, innovation-focused sessions, "what should this become?" questions.
- **Note:** On purely tactical topics, neither may be needed. Use one or the other at medium, both at high.

### Analytical Core

```
    First Principles Thinker ←——→ Technical Expert ←——→ Pragmatist
    (deconstruction to              (implementation       (feasibility,
     fundamentals)                   specifics)            minimum viable)
```

- **Overlap:** Moderate on technical topics (B11 finding). FPT asks "why does this need to exist?"; TE asks "how would we build it?"; Pragmatist asks "what's the simplest version?"
- **When to complete:** Technical/product topics.
- **Note:** Pragmatist is core (always present). Avoid stacking all 3 on non-technical topics — analytical convergence is highest on technical subjects.

### External Perspectives Triad

```
    Systems Thinker ←——→ Connector ←——→ Analogist
    (zoom out to the      (bridge to        (import specific
     broader system        structural         solutions from
     this sits within)     parallels in       other fields)
                           other domains)
```

- **Overlap:** Low. Systems Thinker maps internal dynamics; Connector identifies structural parallels; Analogist imports concrete solutions from other fields.
- **Shared thread:** All three look *beyond the immediate problem space*. There's a natural flow: Systems Thinker maps the dynamics → Connector identifies parallel domains → Analogist imports solutions from those domains.
- **When to complete:** Complex systems, organizational design, novel/unfamiliar problem spaces, topics that span multiple domains.
- **Note:** The Analogist is the strongest pick when a topic is hard to classify or doesn't map cleanly to an established domain — cross-domain inspiration adds the most value precisely when the problem space is novel or ambiguous.

### Progressive/Elaborative Pair

```
    Momentum Builder ←——→ Simplifier
    (progressive             (subtractive
     elaboration)             thinking)
```

- **Overlap:** Near zero. MB builds ideas forward; Simplifier strips them back.
- **Tension pair:** These two generate productive tension — MB's "yes, and" meets Simplifier's "what if we removed this?"
- **When to use together:** Design topics, product features, anything that might suffer from feature creep or scope anxiety.

---

## Specialized Lenses (Outer Ring)

These personas provide deep domain-specific analysis. They should **only** be selected when the topic genuinely calls for their lens. Including them on mismatched topics produces over-application artifacts.

| Persona | Include When | Avoid When | Known Anti-patterns |
|---------|-------------|------------|---------------------|
| **Lawyer** | Regulatory dimensions, compliance, liability, contracts, data privacy | Creative projects, personal events, casual planning | Finds regulations for everything (HIPAA for a birthday party) |
| **Accountant** | Financial planning, budgeting, cost structures, business models, nonprofits | Personal-scale projects under $100, creative/philosophical topics | Applies ROI analysis to $15 purchases; tiered pricing for birthday parties |
| **Politician** | Multi-stakeholder governance, coalition building, organizational politics, public policy | Personal projects, purely technical topics, small teams | Sees factional dynamics in algorithm choices; institutional jargon on casual topics |
| **Storyteller** | Community/institutional topics, service design, topics with diverse user journeys | Highly technical/abstract topics, pure strategy | Produces 2x more on institutional topics (tool library) vs. abstract ones |

---

## Topic Affinity Matrix

Use this matrix to guide persona selection for each topic type. Personas are listed in priority order within each category.

### Primary Affinities (select from these first)

| Topic Type | Strong Fit | Good Fit | Use With Caution |
|-----------|-----------|----------|------------------|
| **Technical/Product** | Technical Expert, First Principles Thinker, Simplifier | Systems Thinker, Pragmatist★ | Avoid stacking 3+ analytical personas (convergence) |
| **User-Facing/Community** | Audience Advocate, Empath, Storyteller | Momentum Builder, Connector, Analogist | — |
| **Strategic/Vision** | Visionary, Futurist, Systems Thinker | Devil's Advocate★, Connector, Analogist | — |
| **Implementation/Ops** | Momentum Builder, Constraint Flipper, Simplifier | Pragmatist★, Technical Expert | — |
| **Regulated/Compliance** | Lawyer, Devil's Advocate★ | Pragmatist★, Systems Thinker | Lawyer over-cites on low-stakes topics |
| **Financial/Business** | Accountant, Pragmatist★ | Systems Thinker, Futurist | Accountant over-financializes personal-scale topics |
| **Creative/Whimsical** | Provocateur, Visionary, Empath | Storyteller, Constraint Flipper, Analogist | Provocateur provokes in opposite direction (adds gravity) |
| **Governance/Political** | Politician, Audience Advocate | Devil's Advocate★, Lawyer | Politician over-applies on purely technical clusters |
| **Novel/Ambiguous** | Analogist, Connector, Visionary | First Principles Thinker, Provocateur | When topic doesn't map to an established domain, cross-domain inspiration is most valuable |

★ = Core persona (always included regardless of topic)

### Anti-Pattern Examples

These are real examples of persona-topic mismatches from testing:

| Persona | Topic | What Went Wrong |
|---------|-------|-----------------|
| Politician | Space party logistics | Factional caucus language for deciding on party decorations |
| Accountant | Space party | ROI analysis of $15 glow sticks; tiered participation pricing for a birthday |
| Lawyer | Space party | HIPAA and FERPA citations for a children's birthday party |
| Systems Thinker | Simple personal project | Reinforcing/balancing loop analysis of a grocery shopping list |
| Futurist | Creative/experiential | ~35% temporal lens rate; decorates shared ideas with trend framing |

---

## Selection Algorithm (for Phase 2C Subagent)

### Medium Effort (4 personas per topic)

```
1. Start with core: Devil's Advocate + Pragmatist
2. Classify topic type (see Topic Affinity Matrix)
3. Novel/ambiguous topic check:
   - If the topic doesn't clearly map to a single established domain,
     or spans multiple domain types, select Analogist as one of the
     2 topic-matched slots. Cross-domain inspiration is most valuable
     when the problem space is unfamiliar or multi-faceted.
4. Select 2 from "Strong Fit" column for that topic type
   - Prefer personas from different clusters (maximize diversity)
   - If topic spans multiple types, select 1 from each relevant type
5. Check: Are any selected personas from the same cluster?
   - If yes, consider whether both add distinct value for THIS topic
   - If not, swap one for a persona from a different cluster
```

### High Effort (7 personas per topic)

```
1. Start with core: Devil's Advocate + Pragmatist
2. Classify topic type (see Topic Affinity Matrix)
3. Select 2 from "Strong Fit" (same as medium — inner ring)
4. Identify which clusters are partially represented
5. Add 2-3 personas to complete 1-2 relevant clusters
   - Prioritize completing the cluster most relevant to the topic
   - If Challenge Triad is partially represented (DA is core),
     consider completing with Provocateur + Constraint Flipper
   - If Connector or Systems Thinker is selected, consider completing
     the External Perspectives Triad with Analogist — especially for
     topics that are novel, span multiple domains, or lack established
     best practices
6. Check for outer ring candidates:
   - Does the topic have regulatory dimensions? → Consider Lawyer
   - Does the topic have financial dimensions? → Consider Accountant
   - Does the topic have governance/stakeholder dynamics? → Consider Politician
   - Only add outer ring personas if genuinely relevant (see Anti-Patterns)
7. Final check: No more than 3 personas from the same cluster family
   (analytical core + specialized lenses count as one family)
```

### Exclusion Rules

Never select these personas unless the topic specifically warrants them:
- **Lawyer** — only for topics with real regulatory/legal/compliance dimensions
- **Accountant** — only for topics with meaningful financial planning, budgets, or business models
- **Politician** — only for topics with multi-stakeholder governance, organizational politics, or public policy

When in doubt about a specialized lens, leave it out. The core and middle ring personas provide sufficient coverage for most topics.

---

## Cluster Relationship Map

```
                        ┌──────────────┐
                        │   VISIONARY  │
                        │  (paradigm   │
                        │   shifts)    │
                        └──────┬───────┘
                               │ Forward-
                               │ Looking
                        ┌──────┴───────┐
                        │   FUTURIST   │
                        │  (trend-     │
                        │   grounded)  │
                        └──────────────┘


  ┌───────────────┐     ┌──────────────┐     ┌──────────────┐
  │  PROVOCATEUR  │     │   DEVIL'S    │     │  CONSTRAINT  │
  │  (absurdist   │─────│  ADVOCATE★   │─────│   FLIPPER    │
  │  provocation) │     │  (critique)  │     │  (reframing) │
  └───────────────┘     └──────────────┘     └──────────────┘
                        Challenge Triad


  ┌───────────────┐     ┌──────────────┐     ┌──────────────┐
  │    EMPATH     │     │   AUDIENCE   │     │  STORYTELLER |
  │  (emotional   │─────│  ADVOCATE    │─────│  (lived      │
  │   resonance)  │     │  (needs)     │     │   experience)│
  └───────────────┘     └──────────────┘     └──────────────┘
                       Human-Centered Triad


  ┌───────────────┐     ┌──────────────┐     ┌──────────────┐
  │ FIRST PRINC.  │     │  TECHNICAL   │     │  PRAGMATIST★ │
  │  THINKER      │─────│   EXPERT     │─────│ (feasibility │
  │ (fundamentals)│     │  (specifics) │     │   focus)     │
  └───────────────┘     └──────────────┘     └──────────────┘
                         Analytical Core


  ┌───────────────┐     ┌──────────────┐     ┌──────────────┐
  │   SYSTEMS     │     │  CONNECTOR   │     │  ANALOGIST   │
  │   THINKER     │─────│  (structural │─────│  (import     │
  │  (feedback    │     │   parallels) │     │   solutions  │
  │   loops)      │     │              │     │   from other │
  └───────────────┘     └──────────────┘     │   fields)    │
                                             └──────────────┘
                    External Perspectives Triad


  ┌───────────────┐     ┌──────────────┐
  │   MOMENTUM    │     │  SIMPLIFIER  │
  │   BUILDER     │─────│  (subtractive│
  │  (progressive │     │   thinking)  │
  │   elaboration │     │              │
  └───────────────┘     └──────────────┘
                Tension Pair


  ┌──────────────┐     ┌──────────────┐     ┌──────────────┐
  │    LAWYER    │     │  ACCOUNTANT  │     │  POLITICIAN  │
  │  (regulatory)│     │  (financial) │     │  (governance)│
  └──────────────┘     └──────────────┘     └──────────────┘
                    Specialized Lenses (outer ring, topic-gated)


★ = Core persona (always included)
─── = Validated cluster relationship (complementary, not redundant)
```

---

## Example Selections

### "Plan a community tool library for a neighborhood nonprofit"

**Topic cluster: Operations & Logistics (medium effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Momentum Builder (implementation: progressive action plan)
- Constraint Flipper (implementation: turn resource limits into design features)

**Topic cluster: Operations & Logistics (high effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Momentum Builder, Constraint Flipper (implementation cluster)
- Accountant (financial: nonprofit budgeting, membership models — genuinely relevant)
- Systems Thinker (complex system: inventory flow, community feedback loops)
- Analogist (external perspectives: how other lending systems — libraries, co-ops, tool shares — solve inventory and logistics)

**Topic cluster: Community Engagement (medium effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Audience Advocate (user-facing: community member needs)
- Empath (user-facing: emotional resonance with participation)

**Topic cluster: Community Engagement (high effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Audience Advocate, Empath, Storyteller (complete human-centered triad)
- Politician (governance: genuinely relevant — who controls the library, board politics)
- Analogist (external perspectives: engagement models from community gardens, makerspaces, Little Free Libraries)

### "Plan a space-themed birthday party for a 5-year-old"

**Topic cluster: Decorations & Atmosphere (medium effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Visionary (creative: paradigm-shifting party design)
- Empath (creative: how a 5-year-old emotionally experiences the space)

**Topic cluster: Decorations & Atmosphere (high effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Visionary, Provocateur (forward-looking + absurdist — push creative boundaries)
- Empath, Audience Advocate (human-centered pair — child's emotional + needs perspective)
- Simplifier (tension: strip away over-designed elements)

**NOT selected for space party at any effort level:**
- Lawyer (no regulatory dimension)
- Accountant (personal-scale budget, not a business)
- Politician (no governance dynamics)
- Systems Thinker (simple event, no complex system dynamics)

### "Design a neighborhood skill-sharing network" (novel/ambiguous topic)

This topic doesn't map cleanly to a single domain — it's part community organizing, part platform design, part education. The Analogist is especially valuable here.

**Topic cluster: Network Structure & Participation (medium effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Analogist (novel topic: import models from timebanks, barter networks, open-source communities, guild systems)
- Audience Advocate (user-facing: who participates and what motivates them)

**Topic cluster: Network Structure & Participation (high effort)**
- Devil's Advocate★, Pragmatist★ (core)
- Analogist, Connector, Systems Thinker (complete external perspectives triad — essential for a novel concept with no established playbook)
- Audience Advocate (user-facing: participation motivations)
- Visionary (strategic: what could this become beyond simple skill exchange)

---

## Phase 3 Retired Personas (not available for selection)

These personas are retired from Phase 3 brainstorming. Do not select them.

| Persona | Reason | Where They're Used Instead |
|---------|--------|---------------------------|
| Questioner | Subsumable by DA + FPT; inconsistent quality (CV=34.3%) | Phase 2 Question Generation |
| Analyst | Organizational frameworks overlap with analytical core | Phase 2 Question Generation |
| Synthesizer | Integration capability wasted in isolated brainstorming | Phase 4 Synthesis (future) |

---

**Last Updated:** 2026-02-18
**Based on:** Targeted persona investigations B1-B26, cross-investigation synthesis
