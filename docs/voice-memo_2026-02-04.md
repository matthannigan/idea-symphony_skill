# Idea Symphony: Next Version and Process Improvements

I want to talk about the Idea Symphony skill and the next version of it. We've run six test runs and collected data about those runs to give us information. There is also a to-do list of potential improvements that we could make and changes that might need to happen to further evaluate the approach.

## Reevaluating Effort Levels

I would like to create a slightly different approach from an effort standpoint, commensurate with the recommendations from the review. Right now, the system is set up with the concept of low, medium, and high effort. Realistically, the content coming out of the "low" effort runs seems adequate for what would be a typical approach. The content coming out of the "medium" run seems appropriate for what I would consider an intensive brainstorming process.

I propose migrating the current settings—or a slightly tweaked version of them—from "low" to "medium," and from "medium" to "high." I would like to remove the previous approach for "high" and think about that in a different way. I also want to reconceptualize what the "low" approach might be.

## The New "Low" Effort: Rapid Generic Brainstorming

Let's focus on this idea: we have a new "medium" (the old low) and a new "high" (the old medium). Let's talk about the new "low."

For the new low effort, I am interested in continuing the sub-agent isolated context, which allows the orchestrator to manage individual sub-agents. However, I would like to remove the multi-persona context portion and the synthesis portion.

In this situation:

* **Phase 1:** All steps remain the same.
* **Phase 2:** Instead of multiple personas, there would be a generic prompt—probably based on "The Questioner" persona—asking for the creation of 15 to 20 questions in topical clusters. There would be no Phase 2, Step 2 synthesis process because you would only have one question list to use moving forward.
* **Phase 3:** Instead of a symphony of many different brainstorming participants with different personas, I would simply run one brainstorm on the different topic clusters in parallel agents. The topics would continue to be divided up and assigned to an agent given a new context; it wouldn't know the answers to any of the other topics. This would be a general-purpose instruction (e.g., "You are a brainstorming participant, act as a coach, give suggestions"). It would use no specific persona, simply generating responses.
* **Phase 4:** There would be no need to do the first parts of synthesis because there is only one set of responses per topic. You perhaps would still do the Phase 4 summarization to provide an overview based on the single brainstorming response.
* **Phase 5:** You would do the other steps necessary for synthesis and the final write-up of the `BRAINSTORM.md` summary.

All the same sub-agents would still be activated, but you would only have one run for everything, and there would be no individualized personas used. This would be the new low-effort approach. It would generate an initial pass at questions, responses, and a brainstorm document much faster. If the current runs using the GLM model take a half hour at medium effort, perhaps this version could be a 5 to 10-minute brainstorming process.

### Utility of the New "Low" Approach

The utility of this approach is that it gives you the option of isolating different kinds of instructions, perhaps focusing on template work. You could also use it to compare runs between models. As new models are released, you could potentially do a low-effort run and compare it to an existing run done on low effort with a prior model. For example, when the next version of Claude is released, you could have a standard prompt to run and see how well the new version does before allowing it to be the default for the multi-persona brainstorming approach.

By using the context isolation of the sub-agents, you are also assuring that there are no limitations for the context windows regarding brainstorming responses or the ultimate synthesis work. It has many advantages and could be an interesting tool for a quick run to give an initial assessment.

### Integration with Deep Research

I could also see situations where, from a process perspective, I take an idea, run it through the low-effort Idea Symphony process, and generate the brainstorming document. I could then feed that brainstorming document into a "Deep Research" request that looks for substantiation for those ideas or examples in the real world. Instead of using internal model training data, I could bring in current real-world examples with citations. I could then feed both sets of information into a medium-effort brainstorming process with the multi-agent or multi-persona perspective.

I could definitely see that approach being something I would use: doing an initial generative brainstorm at a fast pass, and then using that as a way of generating ideas for Deep Research or ideas I want to further develop using actual real-world examples.

## Structural Changes to the Skill

From a changes perspective regarding where things stand right now, the `SKILL.md` file currently references different kinds of templates and contains many workflow instructions.

It will be necessary to:

1. Pull out some of the prompts and make those documents in the `references` section.
2. Take the templates and split them into their own files so they stay atomic.
3. Bifurcate the workflow instructions. For example: "If you've selected low effort, this is what the workflow looks like; if you've selected medium or high, this is what the workflow looks like."

## The New "Ultra" Effort

The last idea is regarding an "Ultra" setting that sits above "High." I am not necessarily thinking of adding additional brainstorming agents—I think that five personas talking about each topic area generates an adequate amount of data. Instead, there is an opportunity to add another level for ideas requiring the most thoughtful work by changing the input data or changing the personas to give something different.

### Leveraging "Momentum Builder" and "Connector"

Currently, at the conclusion of Phase 4 (for what will now be the "High" effort implementation), you have topic clusters with five responses each, a summary document, an attributed document, and a synthesis document.

I believe a couple of personas currently participating in the general brainstorming process might be better utilized if given a different instruction or place in the process. specifically "The Momentum Builder" and "The Connector."

* **The Momentum Builder** has an explicit prompt of "Yes, and..."
* **The Connector** is supposed to draw relationships between ideas.

These personas would be more valuable if they were able to look at other people's suggestions. My thought is that in the "Ultra" setting, you add another round to the synthesis process. You create a preliminary set of synthesis information and summaries, and then spin up a new set of agents on each topic. These agents are given instructions for "The Momentum Builder" or "The Connector," but they are also provided with the summaries of everything generated so far.

By concatenating all the summary documents, those agents have access to key ideas and insights that have already emerged before they answer the questions. Their responses could be used to update the synthesis documents, or perhaps you just rerun the synthesis with two additional voices included. I also thought about potentially including an antagonistic or "Critic" approach, but I am not exactly sure about that yet.

### Custom Subject Matter Expert (SME) Persona

The final idea for "Ultra" involves layering on a custom persona prompt created based on the content being brainstormed. This might happen during the normal Phase 3 or during the synthesis phase; I could test both tracks.

The concept is that the orchestrator agent reads the user request and supporting materials, then spins up an agent responsible for creating a persona in the style of the standard personas, but explicitly unique to the brainstorming task.

* *Example:* For a Pittsburgh community garden, the persona would be an expert at community gardens, sustainable land use practices, and navigating municipal regulations.

You come up with a persona for the most capable brainstorming participant imaginable for that session, create a prompt, and include it alongside the generic prompts. I want to test whether including expertise in the persona prompt reframes the way results are generated.

I don't know whether I would do that during the normal Phase 3 (as a sixth participant) or if I would do it like "The Connector" and "Momentum Builder"—adding them at the end of Phase 4 with access to the summaries and key insights. I will probably test it both ways to see which results are better.

## Summary of Proposed Changes

To recap, my idea at its core is to:

1. **Drop the old "High"** (seven participants per topic is unnecessary).
2. **Shift Effort Levels:** Recapitulate the previous "Low" as "Medium," and the previous "Medium" as "High."
3. **Create a new "Low"** effort process that utilizes sub-agent context isolation but does *not* involve multiple personas.
4. **Create an "Ultra"** effort version that adds an additional synthesis step leveraging "The Momentum Builder" and "The Connector" personas (with access to summaries), as well as a custom Subject Matter Persona generated at the beginning of the process.