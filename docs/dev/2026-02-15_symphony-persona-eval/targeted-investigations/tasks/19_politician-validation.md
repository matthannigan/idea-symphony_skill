# Investigation B19: Politician Validation

**Date:** 2026-02-18
**Persona under test:** The Politician (new)
**Source:** Gap #7 from B12 (Output Gap Detection)

---

## Purpose

Validate the new Politician persona against all 3 evaluation topics. This persona was created to fill the political/governance dynamics gap identified in [B12](../12_output-gap-detection.md): decision-making processes, stakeholder power dynamics, political advocacy, and formal governance structures are barely addressed across all topics. No existing persona navigates the human politics of who decides what.

## Key Questions

1. **Gap coverage:** Does the Politician produce stakeholder power mapping, coalition-building strategies, opposition analysis, and governance design that were absent from all existing persona outputs?
2. **Distinctiveness vs Lawyer:** The Lawyer identifies governance as legal compliance ("needs a conflict-of-interest policy per IRS requirements"). Does the Politician produce fundamentally different content (designing governance as a *power-balancing mechanism* — who gets seats, how votes work, how competing interests are structured)?
3. **Distinctiveness vs Audience Advocate:** The Audience Advocate represents end-user needs and mentions power dynamics from a user-empowerment lens. Does the Politician produce different content (navigating the *decision-makers and gatekeepers* rather than advocating for those being served)?
4. **Specificity:** Does the Politician identify specific stakeholders, their concrete interests, and actionable coalition sequences — rather than generic "get stakeholder buy-in" advice?
5. **Topic sensitivity:** How does output quality and political depth vary across:
   - Space party (low stakeholder complexity — interpersonal dynamics among co-hosts, parents, venue)
   - Tool library (high — city council, neighborhood association, NIMBY opposition, board composition, municipal funding, community factions)
   - Habit tracker (moderate — investor relations, platform gatekeepers, team alignment, partner negotiations, advisory board)

## Files to Compare

**New Politician responses** (to be generated in test re-run):
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-politician.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-politician.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-politician.md`

**Comparison personas:**
- `the-lawyer.md` (closest for governance — but from legal compliance angle)
- `the-audience-advocate.md` (closest for stakeholder awareness — but from user advocacy angle)
- `the-devils-advocate.md` (raises concerns as questions — potential overlap in identifying opposition)

**Comparison files:**
- `test-runs/persona-eval-space-party_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-tool-library_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-habit-tracker_2026-02-18/responses/*/the-lawyer.md`
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-audience-advocate.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-audience-advocate.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-audience-advocate.md`
- `test-runs/persona-eval-space-party_2026-02-17/responses/*/the-devils-advocate.md`
- `test-runs/persona-eval-tool-library_2026-02-17/responses/*/the-devils-advocate.md`
- `test-runs/persona-eval-habit-tracker_2026-02-17/responses/*/the-devils-advocate.md`

## Expected Outcome

The Politician should produce content that is:
- Clearly distinct from the Lawyer's legal compliance, the Audience Advocate's user empowerment, and the Devil's Advocate's Socratic questioning
- Rich in named stakeholders with specific interests, fears, and leverage points
- Proportional to stakeholder complexity (lighter on space party, deeper on tool library)
- Strategic and constructive — mapping paths to support, not just listing who might object

## Success Criteria

- Identifies specific stakeholders with concrete interests (not just "stakeholders") in every response
- Produces at least 2 coalition-building or opposition-management strategies per topic
- Designs at least 1 governance structure (board composition, decision process, or conflict resolution mechanism) for the tool library topic
- Shows appropriate topic sensitivity: light interpersonal dynamics for space party, full political landscape mapping for tool library
- Distinctiveness rating of "Highly Distinct" or "Moderately Distinct" vs Lawyer, Audience Advocate, and Devil's Advocate
- Does not devolve into cynicism about politics or generic "build consensus" advice

## Output

**Output file:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/19_politician-validation.md`

### Output Format

```
## Investigation [ID]: [Title]

### Key Questions
[Questions & Answers]

### Evidence
[Specific quotes, unique ideas, thematic patterns from the compared files]

### Recommendation
[Keep both / Merge / Refine prompt / Reassign to synthesis / Retire]

### Notes
[Additional observations, surprises, edge cases]
```
