# Sonata Naming Scheme (Parked)

Reference mapping for the symphonic/sonata-form naming scheme considered for Idea Symphony's phases and effort levels. **Not in use.** The operational docs use plain phase numbers and `min`/`low`/`medium`/`high` effort keys.

This doc exists so the mapping is recoverable if we ever want to reintroduce the branded names (e.g. in a README, a user-facing launch page, or marketing copy) without re-deriving them.

**Origin:** `dev/2026-02-23_new-workflow-naming.md` — the initial sketch that proposed mapping the skill's phases onto sonata-form movements.

---

## Phase mapping

| Operational name (current) | Sonata name (parked) | Notes |
|---|---|---|
| Phase 1: Context Gathering | Introduction | Welcome, resume, on-boarding, effort detection |
| Phase 2: Question Generation | Exposition | Original memo considered splitting into "Theme Statement" (Step 2.1–2.2: roster + question generation) and "Bridge" (Step 2.3: synthesis). Step 2.4 persona selection wasn't explicitly mapped. |
| Phase 3: Multi-Perspective Brainstorming | Development | |
| Phase 4: Response Synthesis | Recapitulation | |
| Phase 5: Final Output | Coda | |
| `min` effort workflow | Scherzo | Self-contained speed run; the one movement that sits outside the main sonata arc |

## Effort level mapping

| Internal key (current) | Branded label (parked) | One-line character |
|---|---|---|
| `min` | Quick | Tactical — checklists, implementation steps, quick decisions |
| `low` | Focused | Practical — multi-perspective questions, lean brainstorming (2 brainstorming personas/topic) |
| `medium` | Strategic | Strategic — frameworks, complex decisions, design choices (4/topic) |
| `high` | Comprehensive | Philosophical — foundational thinking, high-stakes, research (7/topic) |

## Why this was parked

- The sonata names worked as organizing metaphors but added a translation layer in operational docs — every conditional and resume-state reference had to use both the branded name and the internal key, which made tables and prompts harder to scan.
- Effort labels were even tighter coupled to documentation: `min`/`low`/`medium`/`high` need to appear in YAML frontmatter, PLAN.md, and session filters as stable identifiers, and dual labeling created inconsistency across files.
- The sonata concept is still a nice external framing for a README or launch page — just not load-bearing in the skill's operation.

## If we ever reintroduce

- Keep `min`/`low`/`medium`/`high` as the canonical keys everywhere code, prompts, or templates read.
- Use the sonata names only in user-facing surfaces (README, documentation introductions, possibly session welcome messages).
- Do not reintroduce the branded effort labels as parallel identifiers in tables; one label per row.
- The file `idea-symphony/references/prompts/min-workflow.md` was previously named `scherzo.md` — if the branding returns, that's the one filename worth renaming back.

---

**Last updated:** 2026-04-16
