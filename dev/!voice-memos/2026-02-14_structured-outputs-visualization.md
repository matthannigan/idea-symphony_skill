# Future Improvements: Structured Data and Visualization

Okay, let's continue to think a little bit about the Idea Symphony and Idea Factory skills.

## Structured Data and Static HTML Outputs

One idea that I thought could potentially be useful would be to test whether there is the ability to create more of a structured data representation of the outputs. Potentially, we could produce a static HTML page based on that structured data as an alternative output for the results of an Idea Symphony brainstorm or an Idea Factory run.

Right now, all of the outputs coming from the different moments are Markdown. That's extraordinarily useful from a consumption standpoint, but the ability to trace an idea all the way back to its source is a little difficult because the ideas transform. You have to open lots of different documents and perhaps do a manual search.

### Implementation Strategy: JSON and SQLite

Let's talk specifically about Idea Symphony and its potential for structured data output. My idea here is that we ask the sub-agents and the orchestrator to actually produce structured JSON for their responses. That JSON data is either kept in JSON files or maybe moved into an abbreviated SQLite database. This would enable you to see the steps involved or potentially produce an HTML version of the brainstorm where you could click through things, see the connections between ideas, and trace the process back.

For example, regarding the questions generated during Phase 2 of the Symphony: on a high run, there are five outputs for different kinds of questions, and then a single question synthesis. In this context, the agents would be responsible for providing structured JSON, followed by a final structured JSON that is the synthesis of the questions.

At the step where users are invited to review the final questions before proceeding to Stage 3, you could imagine an HTML output that converts that structured JSON or database storage into a readable format. You would see the questions, and if you wanted to see where a question came from, there would be a hyperlink to the original idea or a way to reveal the inputs in a browsable way.

### Benefits of Structured Data

In a world where you set the run for the Symphony Brainstorm and "set it and forget it," this provides a way of browsing the content differently after the fact. In a situation where you want to make edits, it might be easier to have this interface.

I am not yet looking to make the move where this becomes a full web app with a GUI interface. I think the skill focus is useful. I'm just thinking about how to make the final outputs interconnected, allowing users to jump around or reveal information as they browse.

Clearly, Markdown is super useful for copy-and-pasting to Google Docs and for portability, so I am not saying Markdown should be eliminated. I'm wondering if there is an opportunity to create a structured dataset first, and then have the Markdown be an output from the structured data rather than the raw export from the agents. This could potentially improve the quality of the sub-agent generation because you could enforce a structured JSON response format that guarantees the right elements are present.

It would be interesting to test creating a little microsite at the final phase of the Symphony and Factory that makes the content easier to present and browse than the current Markdown files.

## Visual Elements and Image Generation

The second idea revolves around visual elements and visual ways of understanding the content. I don't know exactly where I would layer these ideas in, but I could imagine offering an ability where, if somebody has an API key available for "Nano Banana," some image generation could occur as part of the process. This would help improve comprehension and make the results more browsable.

### Infographics and Graphic Facilitation

Perhaps there is an idea for infographics or other summary visual elements. For the Idea Factory, I could imagine creating an infographic summary image that would apply to each section of the action plan.

The same might be true of Idea Symphony. You could create what looks like a brainstorming document using the section summary to offer the outputs in a visual way, similar to a graphic facilitation artifact or a whiteboard output.

If we are producing a microsite using static HTML, adding visual elements would certainly improve the potential for comprehension given the amount of content being generated. Simply having a browsable sidebar where you can jump around quickly without opening dozens of files, combined with multimodal understanding opportunities, could be an interesting output.

### Audio vs. Visuals

I wouldn't necessarily take it to the extreme level of audio summaries yet. I don't currently have a great API key solution for that. I'm much more likely to use a notebook system to generate audio summaries, though maybe some recommended prompts could emerge to help a user do that quickly.

## Sequencing and Prioritization

Let's focus more on this concept of visualizations—both graphic facilitation-style brainstorming whiteboard outputs as well as infographics. I think these would fit the theme of "you just hosted a brainstorming session."

I would probably consider building this as a separate skill. I don't know a lot about adding skills that require API keys; right now, the skills I've built focus on text generation using the models themselves. However, with something like "Nano Banana," which is a popular approach for image generation, it is possible to describe a skill that executes the prompt on your behalf and stores those graphical outputs alongside the textual outputs.

In terms of sequencing, my suggestion would be to **work on the second idea first** (visualization), and then focused on the concept of structured content and the microsite later. First, figure out the skill to generate the images, then explore the structured data ideas.