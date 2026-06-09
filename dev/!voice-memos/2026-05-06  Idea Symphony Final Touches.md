# Idea Symphony — Final Touches

## Status

We recently finished the Phase 5 work on Idea Symphony and now have a really stable skill. The remaining actions are to regenerate the Phase 4 and Phase 5 outputs for all of the test runs. We've got Phase 4 for six of them, I believe, and Phase 5 for two of them, so there's still a lot to do — we just need to churn those out.

Then we want to promote those from test runs to examples — something that can actually be published along with the repository in some way to show people the yield expected from Idea Symphony.

## Phase 6 idea: NotebookLM and image-based outputs

I was thinking a little bit about a potential Phase 6 for the Symphony. Right now, the result is these large text documents, which clearly is a valuable resource that can be taken lots of other places, but it's not necessarily the way that everybody loves to consume information. So I was thinking about potentially investigating the ability to create a couple of NotebookLM or image-based outputs that would also be a value-add for the brainstorming output at the end of Phase 5.

One idea was — I don't know whether the user would choose this at the beginning of the process or whether we would offer it to them as a Phase 6, but at the end of the brainstorming process. I don't know whether or not this should actually be considered Idea Factory, but Idea Factory is really supposed to be about creating a new product or a revised document or something that transforms the brainstorming content into a whole new output. This would be — I think it belongs more directly in Idea Symphony because it's about actually being able to understand what the brainstorming yielded. I want to try and apply the things that I used to do to consume this content in the same kind of way.

NotebookLM podcasts are a particularly good one. I have an existing NotebookLM audio prompt that's a skill within the Positronic Matt Rix repository, and we can use that to generate something that is basically — upload these documents, run these prompts against them, and create yourself a podcast series. My general idea would be a single podcast focused on the content of `brainstorm.md`, and then a podcast series that launches with the content of `brainstorm.md` but then scales up to include additional content from the various `_summary.md` documents, so that there's a podcast about each of the clusters based on the summary files. The expectation would be that somebody could take this series of information, upload them to NotebookLM, run these audio prompts to create deep dives, and end up with that.

Another potential NotebookLM output would be a presentation of the content — writing a prompt for that. That one might be a little bit harder to turn into a series, but I'd be open to suggestions on that front. The last would be infographic-style generations.

Obviously my workflow includes a lot of NotebookLM, and it's a tool that I've recommended to other people, so I think it's potentially one to consider leveraging. But you could also plumb in other things — like Nano Banana image generation that could run with a Python script if the user has a Google Generative AI key in their environment. GPT Image is another potential one, although that's not one I necessarily have access to, so I can't test it as well.

Maybe it's a focused NotebookLM layer. I think it's potentially something that's asked at intake: do you use NotebookLM, and would you like to generate prompts and instructions for NotebookLM artifacts at the conclusion of the brainstorming? That could create multimedia content. Again, the idea would be a detailed presentation, a single podcast or a podcast series, infographics, and potentially a cinematic video. I haven't had any experience with those, so I don't know how that would land — I'd have to do a little experimenting. But I definitely think the slides, the podcast series, and the infographic would be good ones to start with.

Maybe it's an early question that the user is asked, stored in PLAN.md, and it triggers as a Phase 6 if there's a desire from the user to run those additional outputs. This would all be about making the brainstorming content more intelligible, more useful. It's just a matter of some additional prompt generation.

## Architectural question: Phase 6 vs. an extra step inside Phase 5

One key element is whether any of these NotebookLM prompts should be additional outputs that are run during Phase 5, when the sub-agent doing `brainstorm.md` has access to all this information already. If the sub-agent has all this info, should we actually just run these additional points of data within the execution of Phase 5 — modifying the Phase 5 final-output prompt so that, if the user has selected they want NotebookLM outputs to accompany their brainstorming, here's where that should run?

That would reduce the number of LLM calls. It would have more tokens out because of the additional need to generate NotebookLM things. And it's potentially a structurally different task. From a context perspective, those sub-agents have everything they need to do that work. So it could be really useful not to make it a Phase 6 but actually just to make it an extra optional step within Phase 5 that modifies the Phase 5 prompt — converting it from "final output" to "final output plus NotebookLM interpretations."

From a decision-making standpoint, once you have all that context, it probably makes the most sense to generate all of the outputs rather than asking the user which ones they want. Computationally I don't think it's any less expensive to do the different ones — maybe with the exception of the cinematic video, which I actually don't know as much about as a video overview or the podcasts.

The easiest way to do this is to have it be: here are these prompts that you cut and paste, and the user ends up with an extra file in their session directory like `notebook-lm-instructions.md`. It just has "put these files here, run this thing, paste the prompt, click, click, click," all that other stuff. Doing that means it's all on the user to make that happen, as opposed to wiring in a Python script related to Nano Banana, or wiring in a Python script related to GPT Image — then I have to maintain those as well. That could be something that's extensible, or something that people perhaps already have their own skills for, and we don't need to create a separate set of Idea Symphony outputs related to that. It can just be: here are some primary ones for NotebookLM. You could also suggest "we're going to give these to you as if you're going to run them in NotebookLM, but you might choose to instead plug them into another service" — probably be able to use the same prompting structure.

## Polish pass

If we're able to do that, then a lot of it starts to focus on polishing Idea Symphony — making sure that everything in that skill is exactly where it needs to be, doing some sort of final audit, a really close inspection of everything that's in SKILL.md, everything that's in the prompts and the templates, the way that it's documented in the repository, all that other kind of stuff.

## Max version

I had this idea of a "max" version as a final prompt that could be executed. It's so token-heavy even to run on `high` right now, with the amount of Opus synthesis that has to occur. I don't know how necessary it is to go deeper on the idea of the max version.

## Sanity check on `high`

One important comment I do need to verify: I want to make sure the `high`-effort runs are still seen as helpful. It may require me reading the brainstorms themselves. What I don't want to create is a situation where there's so many dissenting voices and so much challenge to the user's original idea that `high` really feels like an exercise in frustration — "I was excited about this idea and I wanted to brainstorm it, and then Idea Symphony shit all over it." I don't want to do that. Or "wow, they just uncovered all these problems I'd never considered, and I'm too frustrated to figure out how to move it forward."

We may need a little bit of a sanity check on the outputs, just to make sure that all the work we've done to preserve the different voices and to surface the tensions still yields a document that is ultimately useful to the user who asks for help working through an idea.

## Idea Factory next

It's been a long time since I worked on Idea Factory. The next evolution would be to return to that and apply the learnings, principles, and research methodology from the different phases of Idea Symphony — to do that at Factory, perhaps with less token cost. Really map the techniques and ideas that were learned and applied in the Symphony into the Factory model.

## Idea Forge

Idea Forge is the Agent Teams version, and that's received zero development since Agent Teams were announced and launched. I would really question the need to continue to have that idea, or to even investigate it.

It could be interesting to look at where the Agent Team becomes the max run, and you have the dialogue of the back-and-forth between the users. If you're going to do the Agent Team, it probably only has the Symphony architecture for medium and high. I don't know that the Agent Team is useful or needed in the min and low effort runs — doesn't really make sense, and you're not going to invest the tokens. But I could see the difference between medium and high materially mattering on how you choose to situate the teams. It's probably something that requires research and piloting to even determine whether there's a useful articulation.

The other thing that may really discount the Forge would be to acknowledge that it's a Claude-specific idea — not necessarily something that's been picked up widely by others. Even though I've done all this work to make Claude-compatible prompts and Claude-directed work, the skill is still portable to other systems — to Codex, Manus, Cursor, and other places where skills can live. The Agent Teams would not be. So there's a possibility that maybe it was a cool idea, but actually shouldn't be investigated further.

Cool idea, not been tested, and not as portable. The amount of content being spit out by the other Symphony phases through the disconnected mechanism is certainly more than what somebody could or should need.

It would be better to spend time trying to get Factory to really help a user revise a document based on a brainstorm, or pitch a wholly new idea after doing a brainstorm. Those would be the kinds of outputs that I think would be much more valuable than further work on the brainstorming itself. The brainstorm is working pretty well.

The layer I was talking about earlier with the NotebookLM interpretations — I do think those are core to the Symphony. They're just ways of expressing Symphony content through other distribution channels, so I think they should stay with Symphony. If Factory gets worked on to the same degree that Symphony does, you could imagine wanting Factory to also have the same kinds of NotebookLM outputs elsewhere.

That's where that stuff stands.

## Naming concern: OpenAI's "Symphony"

OpenAI released a tool called Symphony that's an orchestration layer. Obviously we're not trying to commercialize Idea Symphony or to make it something more than just a cool skill, but I haven't done any work to promote it or make it available to others.

One option, if I feel like Symphony has now been a little bit co-opted by this new OpenAI tool, is that I could repurpose the Idea Forge name to be the brainstorming tool — the "forging" of ideas — and then Factory remains the tool where, once the idea content has been smelted, you turn it into these various products: a revised design brief, a strategy memo, a new grant application.

Although I still love Idea Symphony as a name, and we did the work to come up with cool names for each of the phases based on the sonata form, I could be convinced to actually abandon the Idea Symphony name and instead call it Idea Forge — so you have Forge and Factory as the two primary tools. Some people will know that I had Idea Symphony, but now it's just language that has been repurposed in some other way.

Maybe I need to do a little bit of benchmarking, a little bit of searching for the idea. The original impetus for Symphony was about the orchestration layer, and that's obviously why OpenAI chose to use it as well. But from a slash-command perspective, maybe Factory and Forge work better together than Symphony and Factory do, which was always a bit "bleh" — there was always a difference in my mind in terms of how they should be applied.

A couple of different things to consider on that.

## Near-term sequencing

I think we're super-duper close. I would love to finish the examples over time, using the next usage window to blast out versions of the Idea Symphony outputs. Maybe I should work a little bit on this NotebookLM-outputs idea before I actually hit go, just so that I don't have to rerun the same Opus-agent read — and instead just make those additional outputs from Phase 5.

Maybe I should make those changes first and then actually start to churn through everything. There's a lot of Phase 4 that still needs to be regenerated, so there's a ton of work to do just on the new Phase 4 outputs, and those could start in time. But for Phase 5, maybe I should hold off on doing Phase 5 until I have some of the work on the NotebookLM side of things in.
