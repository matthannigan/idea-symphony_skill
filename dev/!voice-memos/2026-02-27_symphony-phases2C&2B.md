## Introduction and Testing Phase 2C Synthesis

We've completed the work on Phase 2B of Idea Symphony, which will probably soon be named the Exposition Phase. Now we need to focus on Phase 2C, which is the synthesis of the generated questions. We have 10 topics, and each of those topics has a full battery of potential questions generated through the Phase 2B testing process. Now we need to test the synthesis step.

My idea for this would be to create 30 test run files that represent versions of running the Idea Symphony question generation process for each of the 10 topics at low, medium, and high effort. For the low effort, that's a specific run with only the Tier 1 personas generating questions. For the medium effort, it's the Tier 1 personas plus the ability to assign Tier 3 personas to specialty topics, if needed. I think we talked about adding one or two based on the orchestrator's decisions. Finally, the high effort would be the high effort run of Tier 1, the run of Tier 2, and up to three of the Tier 3 add-ons, all part of the mix. Doing that for each of the 10 topics basically just aggregates those things into discrete files.

## Analyzing Test Runs and Synthesis Quality

My idea here is that we would do some analytics about each of those 30 files, or 10 files—I'm not sure which one is easier from an analysis standpoint. We would try to understand, in an ideal circumstance where certain personas' questions are synthesized and other personas' questions are appended, what the expectations would be for the quality of the synthesis that should result from the Phase 2C step. What kinds of questions should be included? What would we expect to see if the prompt associated with synthesis yields its highest quality results?

From a "keep as much as possible" standpoint, we would use those as baselines for testing various synthesis prompts. This would help us understand how much compaction occurs across the ideas and how well the different personas are represented in the synthesized data. If we had a baseline for each of the 30 runs, we could do test synthesis steps that mimic the actual Phase 2C process, comparing the results of different synthesis prompts to what the full universe might have been. This ensures we're getting the kinds of questions we expect once they have the opportunity to be aggregated together.

## Question Clustering and Baseline Comparisons

I don't know whether it would be useful to produce a version of the 30 test runs that is simply an idea mapping or clustering. We would expect the synthesis step in Phase 2C to group these kinds of questions together—not necessarily how those questions end up collapsing into a single cogent question, but more so that we expect to see this Devil's Advocate question coupled with this Audience Advocate question, coupled with this Analyst question, all put together in the same bucket.

If we can't get them down to a single question, then maybe we create large topic clusters that group related questions together across the brainstormed ideas. Here again, we would still be preserving who the question originally came from and possibly the full text of that original submission. This gives us a comparison we can always use to understand how well the synthesis worked, or what the synthesis step did in terms of either preserving ideas or condensing multiple compound questions into a single thought.

I think this data preparation step and some basic clustering or grouping analysis would be really useful. Ultimately, when we generate test runs, we can go back and compare the character of the full set of data to how the synthesis succeeded or failed against it.

## Refining the Orchestrator and Appended Voices

Once we gather that information together, it's really about working deeply on the synthesis prompt, including the concept of which ones are synthesized versus which ones are appended. We need to make sure the right number of questions are selected randomly in a round-robin order from the append set of data.

There is a step with regard to Phase 2B that also still needs to be tested: making sure the orchestrator is identifying the add-on questions. In the medium and high runs, there's some level of judgment the orchestrator can execute about who else is included in the brainstorming besides the people who are automatically dictated. So, maybe Phase 2B isn't quite done. Some work needs to be done separately, which could happen in parallel to the testing for Phase 2C, to make sure we get the identification of additional appended voices correct from the orchestrator instructions.

When the orchestrator is making assignments in Phase 2B to actually generate questions, it uses the rubric that describes who's included in what run based on their status. There's also information included that focuses on how to make a good choice—for instance, if we want the Lawyer involved in this one, or the Accountant assigned to this one. If there's more than one, how do you make a decision based on the effort level as far as which one is assigned to be the add-on? That still needs to happen.

Based on the topics we created for testing, we know the strategic alignment between the different intended question personas. We just have to make sure the instructions to the orchestrator demonstrably yield that same kind of response for each of the 10 topic areas. We should have a list of who is expected to be assigned and at what questioning level for each of the 10 topics, and then actually test run Phase 2B—not the question generation step, but the inclusion step—to make sure we've got the prompt for that correct.

## Separating Orchestrator Steps

We should probably make it part of Phase 2B that there's an early prompt where they write into `PLAN.md` a list of whose questions are being generated, at what level, and if there are people being appended, what the rationale was for appending them. Phase 2B, step one, is actually determining who should be generating questions. Phase 2B, step two, is asking those selected personas to generate questions at the specified levels. Those two tests can run in parallel while we work on orchestrator prompt refinements in this context, ensuring we're yielding a set of question-generating personas in Phase 2B, step one.

For Phase 2C, step one is synthesizing the information. That is where we need to look at what could have been possible, what was yielded, how those things compare, and what we need to do to improve the orchestration prompt to make a better version. Phase 2C, step two, is actually making recommendations for assigning brainstorming personas to the next phase.

The reason I originally suggested moving this Phase 3 activity into Phase 2C was because of context. I felt whoever generated the question list would be well-positioned to determine who the personas should be to answer the different questions by topic cluster. I still think that's true, and that you could ask the agent to produce two discrete outputs: one would be the question list, and the other would be who should be brainstorming those things. They could be separate steps or separated by phases, but the original idea was that there would be enough context for whoever put the question list together to then make the assignments. I still think that's true, even if it's two separate tasks for the orchestration agent.

## Next Steps for Prompt Refinement

My idea would be that we start with the synthesis prompt we were using in the beta version and refine that. The decision of who generates questions at what level happens in Phase 2B, but the system needs to know which ones are the append personas and which ones are the synthesized personas. I don't know whether we would choose to actually separate those by directory to make it clear. It shouldn't be necessary, but there are certain personas who never get synthesized and certain personas who never get appended.

We can create that guidance for the orchestrator, test three versions of the orchestration prompts, see which one yields the best results, and then create a final version to iterate from there until we're satisfied with the returned question sets. In this instance, a lot of the data is already there. Now we're working on prompt refinements to understand, in a non-deterministic world, how well we can get expected results given the test topics designed to evaluate certain ideas and question-generating personas.

I think that would be the conclusion of all the Phase 2 work. It actually still sounds like a lot to do, but we are getting there.