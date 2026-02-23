# Idea Symphony Phase 2B Open Questions as of 2026-02-20 10:30 AM

## Persona Roster Composition

1. Current Phase 2B personas are heavily analytical. The existing medium roster is Questioner + Analyst + Audience Advocate; high adds Devil's Advocate + First Principles Thinker. The research identifies 8 Tier 1 personas that include 4 the current system doesn't use in Phase 2B at all (Storyteller, Analogist, Appreciative Inquirer, Provocateur, Visionary). Do you want the new medium default to be all 8 Tier 1 personas, or a subset? The voice memo suggests 8 for medium — just confirming.

2. What should the low effort roster look like? Currently low effort skips personas entirely (single generic subagent). Should low effort now get a small persona roster (e.g., 3-4 from Tier 1), or stay as a generic non-persona path? If it gets personas, the model cost argument (use Haiku/Sonnet) makes this cheap.

3. For high effort, how should the +N specialist slots work? The voice memo mentions adding up to 5 specialized personas. Options:
  - (a) All 8 Tier 1 + orchestrator picks from Tier 2/3 based on topic (fully automatic)
  - (b) All 8 Tier 1 + user can optionally specify additional personas
  - (c) Some hybrid — auto-suggest specialists, user confirms

4. Are there any Tier 1 personas you'd consider demoting or any Tier 2 personas you'd promote? For example, the research rates Momentum Builder as Tier 2 with caveats about embedded answers — do you agree? And the Visionary is Tier 1 but the voice memo didn't specifically call it out.

5. The research flags that removing Appreciative Inquirer or Storyteller collapses entire question dimensions (strengths-based and narrative). Should there be a hard constraint that these two are always included at medium+ effort, or is it acceptable for some sessions to lack those dimensions?

## Model Selection & Cost

6. The voice memo proposes Sonnet or Haiku for Phase 2B subagents. Do you have a preference between the two, or should we test both? Current SKILL.md says "Claude Sonnet or Gemini Pro" — are we dropping the Gemini option?

7. Should the synthesis subagent (Phase 2B.2) stay on Opus? The synthesis step is judgment-intensive — merging questions, preserving unique dimensions, handling convergence signals. The voice memo focuses on switching the generation subagents, but the synthesis agent's model choice matters too, especially given the new emphasis on preserving diverse dimensions.

## Question Volume & Structure

8. The current prompt asks each persona for 15-20 questions in 3-5 clusters. With 8+ personas, that's 120-160 raw questions before synthesis. The voice memo raises whether 5-10 per persona might be better. Do you want to test multiple volume settings (e.g., 5-10 vs 10-15 vs 15-20), or do you already lean toward a specific range?

9. Should personas still organize their own questions into clusters, or just produce a flat list? If the synthesis step is doing the real clustering anyway, per-persona clusters may be wasted effort or could even bias the synthesis. On the other hand, clusters help the synthesis agent understand the persona's framing.

## Testing Methodology

10. For the persona coverage evaluation tests, what's your preferred approach? The voice memo outlines two options:
  - (a) Present an Opus agent with the included vs. excluded questions and have it evaluate coverage gaps
  - (b) Actually run the full Phase 2B pipeline with different rosters and compare outputs

Option (a) is much faster and uses existing data. Are you comfortable starting there and only running full pipeline tests if needed?

11.  How many test topics should we use? We have the space-party, tool-library, and habit-tracker data from prior runs. Should we generate fresh question data from the new Tier 1 roster for all three, or start with one topic?

12.  Should the iterative investigations use a single agent with accumulated context, or clean-context agents per investigation? The voice memo raises this explicitly. My recommendation: use clean-context agents for each investigation to avoid contamination, since the whole point is getting fresh reads on the data. Does that match your thinking?

## Synthesis Prompt Revision

13. The voice memo identifies synthesis as the next high-priority area after roster testing. Should synthesis prompt revision wait until after we've settled the roster composition and volume questions, or should we work on it in parallel? My instinct is that roster decisions directly affect what the synthesis prompt needs to handle, so it should come second.

14. For preserving unique dimensions during synthesis, do you envision an explicit "dimension preservation" mechanism? For example, the synthesis prompt could require tagging each output question with which persona(s) contributed it, and enforce minimum representation from each question-mode cluster (analytical, generative, human-centered, systems, etc.). Or do you prefer a lighter-touch approach?

## Architecture & Scope Questions

15. Should the 6 question-mode clusters from the research (Analytical Probing, Generative Disruptors, Human-Centered/Narrative, Systems/Strategic, Specialized Risk/Economics, Meta/Integrative) be formalized into the skill? They could serve as a selection constraint ("ensure at least 3 clusters are represented") or as a synthesis organizing principle. Or should they remain research context only?

16. Phase 2C (persona selection for Phase 3) currently uses the concentric circles model. The research findings give us much richer data about persona relationships and cluster dynamics. Should Phase 2C be updated as part of this work, or is that a separate effort?

17. Do you disagree with any of the mapping/suitability assessments? Anything that doesn't match your experience from test runs — e.g., a persona ranked higher or lower than you'd expect?