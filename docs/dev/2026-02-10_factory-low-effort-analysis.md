# Low-Effort Factory: Implementation & Test Analysis

**Date:** 2026-02-14
**Test Run:** `test-runs/Civic-Design-Corps_factory_2026-02-10_low/`
**Comparison:** `test-runs/Civic-Design-Corps_factory_2026-02-08/` (medium effort)

---

## What Changed

Simplified Idea Factory's low effort mode from a scaled-down multi-persona pipeline (2 personas per section, drafts + synthesis) to a single-persona direct-draft pipeline. Mirrors Idea Symphony's philosophy where low effort skips the persona system entirely.

**Low effort now:** 1 custom persona, direct section drafts to `sections/`, no `drafts/` directory, no synthesis step.

**Medium/high effort:** Unchanged (multi-persona drafts + synthesis reconciliation).

### Files Modified (7 total)

1. `idea-factory/SKILL.md` — Effort table, core architecture note, directory structure, Phase 2B conditional, Phase 3 routing (new Phase 3-Low subsection), session resume table
2. `idea-factory/references/prompts/phase1-intake.md` — Effort level description
3. `idea-factory/references/prompts/phase2-outline.md` — Low effort persona count + guidance
4. `idea-factory/references/prompts/phase3-persona-gen.md` — Scaling table + low effort guidance
5. `idea-factory/references/prompts/phase3-section-draft.md` — Low effort output path and format
6. `idea-factory/references/templates.md` — Phase status variant + low-effort section template
7. `idea-factory/references/prompts/phase4-integration.md` — Handle missing drafts/debate points

---

## Volume Comparison

| Metric | Low | Medium | Ratio |
|--------|-----|--------|-------|
| Personas | 1 | 9 | 9x |
| Draft files | 0 | 18 | N/A |
| Total drafts size | 0 | 228KB | N/A |
| Section files | 6 | 6 | same |
| Avg section size | 8.6KB | 20.1KB | 2.3x |
| ACTION-PLAN.md | 19KB | 43KB | 2.3x |
| FACTORY-SESSION.md | 7.9KB | 16.2KB | 2x |
| Total session size | ~56KB | ~180KB | 3.2x |

Low effort produces roughly 1/3 the total output. The savings come from eliminating the entire drafts layer (228KB) and producing shorter sections and integration.

---

## Structural Correctness

The low-effort test run correctly follows the new pipeline:

- 1 persona (`personas/civic-practitioner.md`) assigned to all 6 sections
- No `drafts/` directory — sections written directly
- FACTORY-PLAN.md Phase Status uses low-effort variant (`Phase 3-Low: Direct Section Drafts`)
- Section files use the simplified template: has `Grounding in Brainstorming` but no `Key Debate Points` or `Synthesis Notes`
- FACTORY-SESSION.md documents the low-effort trade-offs explicitly

Shared outputs are appropriately identical:
- OUTLINE.md: byte-identical (9,850 bytes) — expected since Phase 2A is effort-independent
- SCOPE.md: nearly identical (6,858 vs 6,825 bytes) — only difference is the "Grounded Recommendations" criteria replacing "Perspective Diversity"

---

## Content Quality Assessment

### Core Recommendations: Convergence with Medium

Both effort levels arrive at the same core recommendations:
- Three-cohort sprint model with milestone-based fellow payments
- Tiered resident stipends ($700/$200/$100)
- Two-tranche implementation funding ($6K + $4K) with municipal co-investment
- Co-created decision frameworks with weighted expertise domains
- Municipal co-design from day one (not handoff)
- Stratified sortition through trusted community networks
- Dual-track measurement (technical + civic)
- Equity-first impact assessment with veto power

This convergence makes sense: the Symphony session had strong consensus on most points, and a single competent persona drawing from the same source material should arrive at similar conclusions.

### Where Medium Adds Value

- **Key Debate Points** document where personas disagreed (e.g., resident authority degree, primary threat framing between staff defensiveness and performative consultation)
- **Synthesis Notes** trace which persona contributed which insight, enabling the user to explore specific viewpoints
- **More alternatives** — medium Section 01 has 4 alternatives (A-D) vs. low's 2 (A-B)
- **Persona attribution** throughout ("Advocated by: Civic Investment Strategist") gives recommendations provenance
- **Richer scaling analysis** — medium uses three explicit tiers with dollar amounts; low uses two briefer tiers

### Where Low Is Sufficient

- Core recommendations are equally specific and actionable (dollar amounts, percentages, timelines)
- Grounding in Brainstorming sections are detailed with specific Symphony citations (topic numbers, specific findings)
- Alternatives are genuine choices (not minor variations)
- Scaling notes cover the essentials
- ACTION-PLAN.md reads well as a standalone document

### Section Depth

Low-effort sections average 8.6KB each. For comparison, medium-effort per-persona drafts average ~12.7KB each — so a low section is 2/3 the size of a single medium draft. That's substantial for "brief" depth. Not necessarily a problem (the sections are well-grounded and actionable), but the output is meatier than "low effort" might imply.

### ACTION-PLAN.md Comparison

| Feature | Low (19KB) | Medium (43KB) |
|---------|-----------|---------------|
| Sections | 6 | 6 |
| Resource scaling tiers | 3 | 5 |
| Implementation timeline | 4 narrative phases | Table with dependencies |
| Key decisions | 7 (brief) | 5 (detailed with persona convergence) |
| Persona attribution | None | Throughout |
| Cross-cutting principles | Yes (6 items) | No (implicit in debate points) |

The low ACTION-PLAN surfaces more decision points (7 vs 5) but with less analysis per decision. It adds a "Cross-Cutting Principles" section not present in medium — a useful structural addition.

---

## Issues Found

### 1. Personal Name on Low-Effort Persona (Bug)

The single persona is named "Morgan Chen" with personal pronouns ("they've led..."). This violates the title-based naming rule from `phase3-persona-gen.md`, which explicitly marks "Naomi Chen" as a bad example. Should be something like "Civic Innovation Program Director" instead.

**Root cause:** The persona-gen guidance mentions low effort should use title-based names, but the example in the guidance ("Community Program Design Specialist") may not have been prominent enough. The orchestrator defaulted to creating a character rather than a role.

**Fix needed:** Consider adding a more explicit reminder in the low-effort guidance block of `phase3-persona-gen.md` that title-based naming applies to low effort too.

### 2. Test File Issues Found During Phase 2A Review (Fixed)

- FACTORY-PLAN.md line 86 said "Medium effort level confirmed" — fixed to "Low"
- SCOPE.md "Perspective Diversity" success criteria referenced multi-persona debates — replaced with "Grounded Recommendations" criteria appropriate for single-persona mode

---

## Key Trade-off

The fundamental trade-off is clear: **you lose inter-persona tension documentation and recommendation provenance.**

- With medium effort, you can trace *why* a recommendation emerged from competing viewpoints and see where experts disagreed
- With low effort, you get the recommendation and alternatives, but not the deliberative process that produced them

For projects where Symphony brainstorming already surfaced strong consensus (as Civic Design Corps did across 21 personas and 7 topics), the single-persona distillation is sufficient. For more contested topics with genuine unresolved tensions, medium/high effort modes would add real value by surfacing those tensions explicitly in the Factory output.

---

## Verdict

The low-effort pipeline works as intended. It correctly skips multi-persona overhead, produces actionable output grounded in Symphony brainstorming, and arrives at the same core recommendations as medium when consensus is strong. The ~3x reduction in output volume is appropriate — the output is leaner without being thin.

The persona naming bug should be addressed. Otherwise, low effort is ready for general use.
