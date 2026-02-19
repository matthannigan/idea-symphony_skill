# Brainstorming Personas

**IMPORTANT: This is a closed set of 22 personas. Do not invent, modify, or use any personas not listed below.**

This file contains links to the full system prompts for all 22 brainstorming personas used in Idea Symphony.

## Persona Prompt Links

- [The Accountant](./personas/the-accountant.md) - Financial clarity, cost modeling, economic sustainability
- [The Analyst](./personas/the-analyst.md) - Systematic breakdown and pattern recognition
- [The Analogist](./personas/the-analogist.md) - Cross-domain pattern recognition
- [The Audience Advocate](./personas/the-audience-advocate.md) - End-user/community perspective, empathy mapping
- [The Connector](./personas/the-connector.md) - Cross-domain bridging and structural parallels
- [The Constraint Flipper](./personas/the-constraint-flipper.md) - Turning limitations into opportunities
- [The Devil's Advocate](./personas/the-devils-advocate.md) - Constructive challenge, risk identification, and mitigation
- [The Empath](./personas/the-empath.md) - Emotional resonance, gut-feeling reasoning
- [The First Principles Thinker](./personas/the-first-principles-thinker.md) - Deconstruction to fundamentals
- [The Futurist](./personas/the-futurist.md) - Trend-grounded analysis and strategic positioning
- [The Lawyer](./personas/the-lawyer.md) - Regulatory frameworks, compliance, legal requirements
- [The Momentum Builder](./personas/the-momentum-builder.md) - Progressive elaboration, "yes, and..." energy
- [The Politician](./personas/the-politician.md) - Stakeholder politics, coalition building, power dynamics
- [The Pragmatist](./personas/the-pragmatist.md) - Feasibility and implementation focus
- [The Provocateur](./personas/the-provocateur.md) - Absurdist provocation, lateral thinking
- [The Questioner](./personas/the-questioner.md) - Deep probing and assumption challenging
- [The Simplifier](./personas/the-simplifier.md) - Subtractive thinking, removing unnecessary complexity
- [The Storyteller](./personas/the-storyteller.md) - Narrative framing, user journey visualization
- [The Synthesizer](./personas/the-synthesizer.md) - Consolidation and theme extraction
- [The Systems Thinker](./personas/the-systems-thinker.md) - Feedback loops, second-order consequences, system dynamics
- [The Technical Expert](./personas/the-technical-expert.md) - Implementation feasibility
- [The Visionary](./personas/the-visionary.md) - Paradigm-shifting, transformative thinking

---

## Persona Selection by Phase

### Phase 2: Question Generation
Always include **The Questioner**. Add 1-3 more from:
- The Analyst
- The First Principles Thinker
- The Devil's Advocate
- The Audience Advocate

**Note:** The Questioner excels at question generation but is not recommended for Phase 3 brainstorming, where its output tends toward restating ideas as questions rather than generating distinct content.

### Phase 2C/3: Brainstorming Persona Selection

Phase 3 persona selection is handled automatically by **Phase 2C** using the concentric circles model. An Opus subagent classifies each topic cluster and selects personas per topic (4 for medium, 7 for high effort).

See **[persona-selection-guide.md](persona-selection-guide.md)** for the full methodology:
- Concentric circles model (core → inner ring → middle ring → outer ring)
- Topic affinity matrix with strong/good/caution fit per topic type
- Validated persona clusters and anti-pattern examples
- Selection algorithms for medium and high effort
- Exclusion rules for specialized lenses (Lawyer, Accountant, Politician)

**Retired from Phase 3:** The Questioner, The Analyst, and The Synthesizer are Phase 2-only personas. They are not available for Phase 3 brainstorming selection.
