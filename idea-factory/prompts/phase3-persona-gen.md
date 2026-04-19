# Phase 3: Persona Generation Guidance

Guidance for the orchestrator when auto-generating project-specific personas for the Factory session.

## Principles

### 1. Specificity Over Generality

Personas should be specific to the project domain. They should feel like subject matter experts you'd hire for this particular project.

**IMPORTANT: Use title-based names, not personal names.** Personas are roles, not individuals.

**Examples by domain:**

| Project Domain | Good Personas (Title-Based) | Bad Examples |
|---------------|---------------|-------------|
| Birthday party planning | Early Childhood Development Specialist, Event Operations Manager, Experiential Event Designer | Sarah the Planner, The Strategist, Mom Friend |
| Grant program design | Community Engagement Director, Fiscal Sustainability Analyst, Program Evaluation Specialist | John the Analyst, The Advocate, The Critic |
| Product feature design | UX Research Lead, Technical Architecture Advisor, Business Model Strategist | The Designer, Jane the Engineer, Bob (Product) |
| Nonprofit operations | Volunteer Coordinator, Donor Relations Strategist, Impact Measurement Specialist | The Fundraiser, Alex, The Measurer |

**Naming pattern:** [Area of Expertise] + [Role Type]
- "Racial Equity & Justice Consultant" ✓
- "Pediatric Allergy & Nutrition Coordinator" ✓
- "Naomi Chen" ✗ (personal name)
- "The Pragmatist" ✗ (too generic)

### 2. Productive Tension

Good persona sets have members who naturally disagree on priorities. Design personas whose core values create tension:

- **Quality vs. efficiency** — one persona cares about getting it perfect, another about getting it done
- **Innovation vs. reliability** — one pushes boundaries, another ensures things work
- **User needs vs. constraints** — one advocates for the ideal experience, another for what's feasible
- **Short-term vs. long-term** — one focuses on immediate needs, another on sustainability

### 3. Complete Coverage (Medium/High Effort)

Every outline section needs meaningful input from multiple personas. When assigning sections:

- **Multiple personas per section:** Each section gets input from 2-5 personas (based on effort level)
- **Overlap is good:** Different personas assigned to the same section creates tension and alternatives
- **Balance assignments:** No persona should be assigned to all sections or only one section

**Low effort exception:** The single persona is assigned to all sections. Skip this section for low effort.

### 4. Scaling by Effort Level

| Effort | Personas/Section | Persona Depth | Tension |
|--------|-----------------|---------------|---------|
| Low | 1 | Single broad domain expert covering all sections | N/A (no tension — single perspective) |
| Medium | 3 | Focused expertise, clear ownership boundaries | 2-3 tension axes |
| High | 4-5 | Highly specialized, deep domain knowledge | Multiple overlapping tensions |

**Low effort guidance:** Create one persona who has broad expertise across the project domain. This persona should be practical and action-oriented, capable of making concrete recommendations across all sections. Since there's no multi-persona tension, this persona should balance practicality with creativity on their own.

**IMPORTANT: The title-based naming rule (Section 1) applies to low effort too.** Use a role title like "Civic Innovation Program Director" or "Community Program Design Specialist" — NOT a personal name like "Morgan Chen" or "Alex Rivera." The persona is a role, not a character.

### 5. Persona Definition Quality

Each persona file should give a subagent enough context to:
- Know what they prioritize without being told
- Naturally produce recommendations different from other personas
- Understand their expertise boundaries
- Recognize when their perspective matters most

**Required components:**
- Core perspective (2-3 sentences)
- Priorities (what they optimize for)
- Advocacy (what they push for / push back on)
- Assigned sections (1-3 sections per persona; all sections for low effort)
- **Key Quote** - A single crystallizing sentence that captures their worldview

**Red flags in persona definitions:**
- Using personal names instead of title-based roles
- So broad they could say anything ("considers all perspectives")
- So narrow they only apply to one section
- No clear advocacy position (what do they fight for?)
- No pushback targets (what do they challenge?)
- Missing the Key Quote section
