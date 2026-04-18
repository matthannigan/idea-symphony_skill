## Phase 2B: Question Generation Roster

**Effort Level:** high

### Tier 1 Personas (always included)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Questioner | Analytical | 15-20 |
| Analyst | Analytical | 10-15 |
| Devil's Advocate | Structural | 10-15 |
| Appreciative Inquirer | Structural | 8-12 |
| Audience Advocate | Structural | 10-15 |
| Systems Thinker | Structural | 10-15 |
| Provocateur | Perspective | 5-8 |
| Analogist | Perspective | 5-8 |
| Visionary | Perspective | 5-8 |
| Storyteller | Perspective | 5-8 |

### Tier 2 Personas (high effort only)

| Persona | Category | Volume Range |
|---------|----------|-------------|
| Constraint Flipper | Perspective | 5-8 |
| Empath | Structural | 8-12 |
| First Principles Thinker | Structural | 7-10 |
| Futurist | Structural | 8-12 |

### Tier 3 Personas (orchestrator-selected)

| Persona | Category | Volume Range | Selection Trigger Strength |
|---------|----------|-------------|---------------------------|
| Technical Expert | Tier 3 | 8-10 | moderate |

### Selection Rationale

**Connector/Analogist decision:** Analogist (default)
- Swap rationale: The topic is a single-domain product-simplification problem (one mobile app, one team, one user base). There are no distinct systems needing bridging, merging, or reconciliation. The REQUEST does not describe cross-domain reconciliation, institutional mergers, or cross-disciplinary design — conditions under which Connector's isomorphism and recombination modes activate. Keep Analogist; metaphorical reframing of "feature bloat" and "killing your darlings" is the kind of single-domain reframing Analogist handles well.

**Tier 3 selections — structured rationale per candidate persona:**

- Persona: Accountant
- Trigger strength: moderate
- Topic citation: "8 months of funding remaining" and "Team: 6 engineers, 1 designer, 1 PM"
- Decision: exclude

  Runway and team costs are real constraints, but the REQUEST frames the problem as product simplification ("identify the 3-4 features that represent the app's true core value"), not as financial structure, pricing, revenue, or business-model design. There are no pricing questions, no unit-economics chain, no funding-mechanism design. The Analyst's financial coverage is sufficient for the runway-as-constraint dimension. Not a central financial-structure topic.

- Persona: Lawyer
- Trigger strength: none
- Topic citation: No regulatory, liability, compliance, data-privacy, or statutory content appears in the REQUEST.
- Decision: exclude

  The REQUEST mentions no regulatory exposure. Devil's Advocate can flag any latent risk (e.g., removing features with contractual or ToS implications) at the high level the topic warrants.

- Persona: Politician
- Trigger strength: none
- Topic citation: Internal concerns cited are "Team morale and the psychology of killing your darlings" and "how to communicate the simplification to existing users without triggering churn."
- Decision: exclude

  These are organizational-change-management and user-communication concerns, not stakeholder politics in the veto-player / coalition-sequencing / governance sense the Politician persona targets. No institutional change, no governance structure, no coalition-building across political actors. Audience Advocate plus Empath (Tier 2) cover the user-side and team-side concerns without political-analytical vocabulary.

- Persona: Technical Expert
- Trigger strength: moderate
- Topic citation: "Technical debt implications of removing deeply integrated features" and "Current State: 15 features, none executed well; UI requires 6 navigation tabs and a hamburger menu" with a 6-engineer team.
- Decision: include

  Feature-removal from a mature codebase is a genuine engineering-tradeoff problem: dependency unwinding, shared-infrastructure decisions, data migration for deprecated features, architectural simplification vs. incremental refactoring, build/release implications for a clean relaunch vs. phased deprecation. These are engineering-architecture questions that extend past Analyst's framework-level coverage. Mobile-app is cited in the guide as a strong-trigger case for Simplifier analysis, and while Simplifier is excluded from Phase 2B, the underlying technical architecture is genuinely present. Meets the high-effort "moderate+" threshold. Single Tier 3 inclusion; within the 0-2 ceiling.

**Notes:** Accountant was the closest borderline call. The 8-month runway is a salient constraint, but the REQUEST's "Key Considerations" list centers product/UX/psychology concerns, not financial structure. At medium effort the call would be clearly exclude; at high effort it remains exclude because the trigger is constraint-citation rather than topic-centrality. Technical Expert is the only Tier 3 inclusion.
