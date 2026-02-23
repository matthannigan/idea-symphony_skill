# Idea Symphony: Phase 2B Open Questions and Architecture Decisions

We have some follow-up open questions about Phase 2B for Idea Symphony. I will read through the questions and respond to each.

## Question 1: Persona Roster Composition (Medium Default)

Yes, I want the new medium default to start with the eight Tier 1 personas identified through the research. We need to set aside any preconceptions currently present within the skill about the number of personas participating in Phase 2B.

In particular, I want to test the **Provocateur**. I want to understand how its slightly absurdist questions, intended to inspire a different approach, are ultimately processed by the brainstorming agents. The starting point for our new medium run should be these eight Tier 1 personas, and hopefully, we will learn more about what is possible with this new approach as we proceed.

## Question 2: Low-Effort Roster

Currently, the low-effort tier skips personas entirely, but I think it should get a small set. While this represents a broader architectural change, I have two ideas for how to handle it:

1. **Create a "Minimum" Tier:** We could create a new tier below "Low" called "Min" (minimum). This would function like the current low-effort run, featuring a single generic question generation persona and a single generic brainstorming persona for a true speed run. "Low" would then utilize three or four of the most important Tier 1 agents to provide adequate coverage—not as comprehensive as medium, but better than the generic run.
2. **Revise the Generic Prompt:** Alternatively, instead of changing the architecture and renaming tiers, we could simply update the generic prompt used for low-effort runs. If we strip Tier 1 down to its 3–4 most critical personas, we can incorporate the dimensions and ideas from those personas directly into the generic prompt. Since the generic prompt skips the Phase 2C synthesis step, revising it to incorporate these key learnings could bring those vital question dimensions into the speed run without structural changes.

## Question 3: High-Effort Specialist Slots

For the high-effort run, we should not allow the user to specify additional specialist personas at this stage; that could be an area for future development.

The better approach is to use specific guidance that we will create for Phase 2B. The Orchestrator should make the decision to fill those additional roster slots based on the subject matter being brainstormed. The guidance document will instruct the Orchestrator on how to add complementary dimensions or bring in a specialist as needed.

## Question 4: Persona Promotions and Demotions

Regarding the promotion and demotion of specific personas:

* **Momentum Builder:** This persona surprised me in Phase 3 by providing meaningful contributions despite its "yes-and" framing. However, I would not promote it to Tier 1 for question generation unless there is a strong justification.
* **Questioner:** This persona is performing extremely well—"punching above its weight"—despite a fairly generic prompt. It has not required the extensive revisions other personas have needed. It is highly valuable and will definitely stay in the Tier 1 subset.
* **Analyst & Devil's Advocate:** Both are highly valuable, though we may have to pick and choose between them for a stripped-down low-effort run due to limited slots.
* **Audience Advocate & Empath:** I would strongly consider promoting one of these into the medium Tier 1 group. It would be valuable to investigate which one adds more value to the potential synthesis.
* **Systems Thinker & First Principles Thinker:** The First Principles Thinker was in my original batch, while the Systems Thinker is relatively new. I would be interested in seeing their relative performance and promoting one of them to the medium Tier 1 group.
* **Futurist & Connector:** I do not see a situation where the Futurist is promoted. The Connector is not a high-quality candidate for promotion and brings very little value here.
* **Constraint Flipper, Pragmatist, & Simplifier:** These are better suited for answering questions rather than generating them, so they will not be incorporated into the high tier.
* **Synthesizer:** This persona will disappear entirely from Phase 2. Its function will either be woven into the Phase 4 Orchestration prompts or handled as a separate substitute prompt.
* **Accountant:** We need to verify if we get adequate discussion of financial costs and budgets without the Accountant. If the user's inquiry suggests sophisticated financial modeling, this specialist should be brought in. However, we might also consider creating a "lower" version of this persona—like a Bookkeeper or "Purse Strings" persona—that focuses on money matters without conducting deep systematic analyses.
* **Lawyer & Politician:** The Lawyer should remain strictly in the specialist realm for high runs. The Politician also functions well as a specialist (e.g., it is a perfect fit for the "Tool Library" topic, but not the others).
* **Technical Expert:** I agree that this should be used sparingly. I need to review it carefully to see if it acts strictly as a "subject matter expert" in the weeds with the content. Generating a good SME persona on the fly requires hard work from the Orchestrator.
* **Visionary:** I agree it belongs in Tier 1.

Again, eight is not a magic number for the medium run. It could be seven, nine, or ten. I want to ensure we craft the most ideal set of question-generation personas for the medium baseline, and then iterate from there to subtract for low and add for high.

## Question 5: Preserving Appreciative Inquirer and Storyteller Dimensions

The research flags that removing these personas collapses entire dimensions. While true, we will have to make compromises for the low-effort runs.

We may need to create essential clusters for the question-generation personas (similar to Phase 3). For example, within an analytical cluster featuring the Questioner, Analyst, and Devil's Advocate, a low-effort run might only select the single strongest persona (the Questioner). We must determine what dimensions are adequately covered in the medium tier and understand exactly what is lost when we strip the roster down to 3–4 personas for the low tier.

## Question 6: Model Selection (Sonnet vs. Haiku)

Yes, Phase 2 should switch models. Realistically, I have been running these tests using GLM (which sits somewhere between Haiku and Sonnet in capability) and still getting great questions and brainstorming responses. Let's start by switching the generation models from Opus/Pro to Claude Haiku and Gemini Flash.

## Question 7: Synthesis Sub-agent Model

The synthesis sub-agent should definitely stay on Opus. This is a highly judgment-intensive step and requires the strongest agent available.

## Question 8: Question Volume Settings

I do want to test multiple volume settings (e.g., 5–10 vs. 10–15 vs. 15–20 questions). This will require generating new test data, which can easily be saved into additional subdirectories for analysis.

Currently, the agents are not instructed to prioritize their questions. While the Opus synthesizer has a good framework for determining importance, asking Haiku agents to both cluster topically and prioritize by importance might be too challenging.

This brings up a potential shift in how we define "effort." Instead of effort correlating to the addition or subtraction of personas, effort might relate to the volume of questions generated. For example:

* **Low Effort:** 8 agents generating 5–10 questions.
* **Medium Effort:** 8 agents generating 10–15 questions.
* **High Effort:** Up to 15 agents generating 15–20 questions.

Alternatively, we could allow the Orchestrator to handle custom effort requests in Phase 1 (e.g., a user requesting high-effort question generation but medium-effort brainstorming).

## Question 9: Question Clustering

If the synthesis agent is doing the real clustering, having the personas organize their own questions might seem like wasted effort. However, it is a potentially useful artifact to document in the session log for the user.

If we feel this pre-clustering anchors the synthesis agent unhelpfully, I am willing to set it aside. We should test a version that produces a flat list alongside a version with built-in clusters to see which yields better synthesis results.

## Question 10 & 11: Testing Methodology and Test Topics

For persona coverage evaluation, Option A is my preferred approach. We should not run the full pipeline yet. The questions should be generated in advance so they remain stable. The Opus agent can then conduct its research against these static buckets of questions. End-to-end pipeline testing should be reserved for the final steps when we are evaluating the Orchestrator's assignment logic and the final synthesis prompt.

Regarding test topics, we do not need to generate fresh question data unless we change the volume instructions (e.g., testing the 5–10 request). We should maintain our baseline data from the existing topics to ensure traceability and backtrackability, allowing us to monitor for regressions as we make changes.

## Question 12: Context

Let's determine which investigations need to analyze full stes of 5-10, 10-15, and 15-20 questions and which can just run on the current 15-20 questions.

## Question 13: Synthesis Prompt Sequencing

Yes, let's defer. Keep tracking it as an outstanding concern but out-of-scope for this investigation.

## Question 14: Preservation of Dimensions

I think we're going to need to enforce minimums and add some tagging so there can be a quality gate.

## Question 15: Question-Mode Clusters

Yes, if those clusters bear out in this research, I think they'll end up explicitly mentioned in the selection doc and SKILL.md.

## Question 16: Phase 2C brainstorming persona selection

This is an important question to answer. Defer for now; keep track of the issue; mark as out of current scope.

## Question 17: Mapping disagreements.

See Question 4 discussion from voice memo.