## Question 1: Phase 2B and the Medium Default Roster

We have some follow-up, open questions about Phase 2B for Idea Symphony. I'm going to try and read the question briefly and then respond as best I can. Currently, Phase 2B is heavily analytical, and there's an existing roster. The research identifies eight Tier 1 personas included in the current system.

Let's have the starting point for our new medium default be the eight Tier 1 personas that were identified through the research. In particular, I do want to test the Provocateur and understand how those questions will ultimately be turned around, since they are kind of absurdist and supposed to inspire a different approach. I just want to make sure that the brainstorming agents aren't totally thrown off. The Provocateur is probably the one that is going to be most interesting to see how layering that in helps.

We need to set aside the preconceptions that are currently present within the skill and the number of personas participating in Phase 2B. We should base this on the research and targeted investigations, not my pre-existing ideas. So, the starting point for our new medium should be the eight Tier 1 personas, and hopefully, we'll learn a little bit about what's possible with a new approach as we go on.

## Question 2 & 3: Low Effort Roster and Generic Prompts

Question two is: what should the low-effort roster look like? Currently, it skips it entirely. Should they get a small set? I think yes. This is a broader architectural change, but I'm starting to feel like maybe we need to create a low-effort run that has a smaller number of brainstorming agents in both question generation and brainstorming (Phase 2 and Phase 3). This kind of brings us back to where we started with low. Since this is a broader architectural change, I don't necessarily want to get totally distracted by it as we refine around question three, but I have two ideas for that.

One idea is to actually create a tier that sits below "low" called "min" (for minimum). That would be what currently looks like low right now, where there's a single generic question-generation persona and a single generic brainstorming persona in order to get that speedrun version. But maybe now, if there's a tier that can reasonably create good questions and good responses that sits below the current ideas for medium, I think it might be worth pursuing. As suggested, it could be a small subset—the three or four most important agents from Tier 1 that provide adequate coverage. It wouldn't be as good as medium, but something better than the generic.

The other thing to think about, as it relates to the generic and this concept of a new minimum run, is that we may need to do some work on the generic prompt. Based on the research and the final decisions for the synthesis, the generic prompt actually skips the synthesis stuff in Phase 2C. As we build the Phase 2C synthesis prompt, we also want to revise the generic prompt to incorporate as many learnings as possible. Obviously, we won't have the complete isolation that comes from the individual context windows for each of the sub-agent-based persona generation, but I think we can bring the same kinds of dimensions of questions into that speedrun version and see if that could be helpful.

Another way to think about low right now—instead of flipping everything over architecturally and having to change the word "low" to "min"—is that we could work on that generic prompt right now. If you strip Tier 1 down to its essentials, you end up with three or four personas. We could then use those current persona prompts, which are working well, to update the generic prompt so that it brings in those additional dimensions. That might allow us to avoid the architectural change of renaming "low," and instead just proceed with the understanding that the new generic prompt incorporates ideas from these three or four critical personas.

## Question 4: High Effort Slots and Specialists

For the high effort, how should the plus and specialist slots work? The voice memo mentions it adding up to five. There could be all eight of the Tier 1 plus some topical ones, or the user could specify, or a hybrid.

Let's not allow the user to specify at the current phase. That could be an area for future development. I think the better approach would be to use specific guidance that we will create for Phase 2 that helps fill out those additional roster slots based on the subject matter being brainstormed.

To the best degree possible, we could provide instructions in the persona selection guidance for Phase 2B. If you're doing a high run and you have more slots available, follow this guidance to either add additional complementary dimensions or bring in a specialist as needed. The guidance document will describe that, and the orchestrator should be making that decision as part of its process for spinning up Phase 2B.

## Question 4 (cont.): Persona Promotions and Demotions

Are there any Tier 1 personas you consider demoting, or any Tier 2 personas you promote? For example, the research rates the Momentum Builder as Tier 2 with caveats. Do you agree?

The Momentum Builder really surprised me as it relates to Phase 3. I was pretty certain it was going to fall out of the brainstorming, but we found that despite its "yes, and" framing, it still did a really good job of coming up with meaningful contributions. I probably would not consider promoting that to Tier 1 unless there was a large justification for it.

Looking at the persona mapping, the Questioner and Analyst were already on my list for Phase 2B, as well as the Devil's Advocate. Those first three are really valuable. I imagine we're going to lose one of those on the low-effort run just because there won't be enough slots. The Questioner is particularly interesting; it hasn't received any revisions since we began these investigations, unlike some other personas revised for Phase 3. However, it's punching above its weight. Its performance is extremely high despite having a pretty generic prompt without as much of the "avoid" steering found in newer Phase 3 prompts. I'm glad it's doing a great job, and it will definitely stay in the stripped-down Tier 1 subset. We may have to pick and choose between the Analyst and the Devil's Advocate.

As I mentioned earlier, the Provocateur is one I have some questions about. It's really good and hits a very different portion of the question generation dimensions with lateral thinking, but it's a super different approach.

I would consider promoting the Audience Advocate and the Empath. I'd definitely like to see what they add. If we assume the medium tier starts with these top eight Tier 1 personas, I really want to build the best medium possible. Eight is not an arbitrary magic number. If the best number for medium is eleven, and we move the model down to Sonnet or Haiku, I'm fine with eleven personas—as long as we don't end up with 200 questions. It might be nice to see the Audience Advocate or the Empath always in the mix for medium Tier 1. It's hard to imagine including both, but we could investigate which one adds more value to a potential synthesis.

For the Systems Thinker and the First Principles Thinker: I originally had First Principles in the mix for Phase 2B. I think one of those two could be interesting to include in the medium Tier 1, but probably not both. Systems Thinker is relatively new, whereas First Principles was in our original batch of 15. I'd be interested to see their relative performance.

I don't see the Futurist being promoted. The Connector is not a high-quality candidate for promotion either; it doesn't bring much. The Constraint Flipper is a better example of something that would go into the high tier. The Pragmatist and the Simplifier are better at answering questions than generating them, so they don't need to be included in the high tier for Phase 2.

The Synthesizer will probably disappear entirely and get woven into the orchestration prompts for Phase 4, or we'll build a specific prompt that substitutes for orchestration. It's not on the list for Phase 2.

For the Accountant, it's a critical domain lens for financial topics. We need to verify that we still get adequate discussion of financial costs and sustainability without the Accountant. If the user's inquiry suggests financial modeling, that specialist should be brought in. For general topics like the space party, we just need to verify that the general Questioner still covers budget and cost adequately. If the Accountant is too highly specialized, we could imagine a lower-level version like a Bookkeeper or "purse strings" persona, but we probably have adequate monetary prompts already. The Lawyer should stay a specialist for high runs if the topic merits it.

For the Politician, I agree with the assessment that out of the three test runs (Space Party, Tool Library, Habit Tracker), it should be selected for the Tool Library. We can test the orchestrator to ensure it correctly assigns the Politician to the Tool Library on a high run, but not the others.

The Technical Expert is doing a lot of heavy lifting related to technical innovations. We might need a "Subject Matter Expert" who is really in the weeds with the content. This requires the orchestrator to generate a good SME persona on the fly, which we could work on. But the Technical Expert should definitely be used sparingly.

To re-emphasize, eight is not a magic number. I want the medium effort to represent the most ideal set of question generation personas, and we will iterate from that to subtract for the low approach and add for the high approach.

## Question 5: Appreciative Inquiry, Storyteller, and Collapsing Dimensions

Number five: the research flags that removing the Appreciative Inquiry or Storyteller collapses entire question dimensions. Should it be a hard constraint that these two are always included?

I think we're going to have to make some compromises with the low-effort run. We may lose something. However, there is a strong case that we have plenty of coverage on the analytical side just through the Questioner persona.

So, for example, in low, you have to have the Questioner, but you don't have the Devil's Advocate or the Analyst. There may need to be essential bucketing, which relates to the kinds of clusters we want to create for the question generation personas. We created clusters that help inform decisions around the brainstorming personas, so I could imagine creating similar clustering for Phase 2. Within those clusters, we identify the primary persona you really need to pick. For an analytical cluster, you might have the Questioner, the Analyst, and the Devil's Advocate. But in the low run, you only pick one from that cluster—the strongest one, like the Questioner. The understanding is that for medium, we cover all necessary dimensions adequately. As we subtract personas for the low run (down to three or four), we need to consciously evaluate what dimensions we are losing.

## Question 6: Model Selection (Sonnet vs. Haiku)

Number six: the memo suggests going to Sonnet or Haiku. Do I have a preference, or should we test both?

Yes, I think Phase 2 should switch. Realistically, I've been running all of this with GLM, which is an open-weights Sonnet-like competitor, though not at the same level. Despite that, we're still getting really great questions and brainstorming responses.

I think we could potentially just try Haiku and see. We'd change it to Haiku and Flash—switching from the current Opus and Pro to Haiku and Flash. Let's start with that. While all the analysis is currently being done by Opus, the actual test generation data is coming from a model that sits somewhere between Haiku and Sonnet.

## Question 7: Synthesis Sub-agents

Should the synthesis sub-agents stay on Opus? Yes, definitely. That task is very judgment-intensive. It should use the strongest agent available to us.

## Question 8: Question Volume and Prioritization

Number eight: the current prompt asks each persona for 15 to 20 questions in 3 to 5 clusters. With 8+ personas, that's a lot of raw questions.

Yes, I do want to test multiple volume settings. The challenge is that I'll need to generate new test data, but that can easily be done, and we would want to do comparisons.

I don't know if there's a relationship between which personas are included in medium and the number of questions requested. If valuable, we could run question generation with 5 to 10 and 10 to 15 buckets. It just requires adding subdirectories to the test runs for the data to be available for analysis. We're trying to figure out the ideal composition of the medium run. If you use fewer agents, maybe you need 15 to 20 questions; if you use 10 agents, you might need to narrow the question count down.

Right now, the agents are just asked to give a list of questions and topic clusters. There are no instructions about prioritization. We could ask agents to order their questions from most to least important. However, we're not heavily relying on the agents to have the built-in intelligence for that level of judgment, and asking them to both topic cluster and prioritize might be challenging.

Topic clustering is useful because it gives a bird's-eye view. Since it's hard for a user to read all raw questions, we could catalog the individual topic clusters generated by each agent and show how they fed into the final synthesized clusters.

Let's definitely test the volume. We might need to rethink "effort." Instead of just adding or subtracting personas, effort could also tie into the number of questions. Perhaps a low-effort run is eight agents generating 5 to 10 questions. A medium-effort run is eight agents generating 10 to 15 questions. A high-effort run is everything: 15 to 20 questions with up to 15 agents if the subject demands it. The best way to test this is to run tests with modified instructions for question counts.

Separately, I've occasionally run a custom effort prototype—high question generation with medium brainstorming. While it adds complexity, it's possible that in Phase 1 orchestration, the user makes separate effort decisions for questions and brainstorming participants. There would be a recommended medium path, but the user could specify "high effort on question generation and medium effort on brainstorming."

## Question 9: Pre-Clustering vs. Flat Lists

Number nine: should personas still organize their own questions into clusters, or just produce a flat list? If the synthesis step is doing the real clustering, it might be wasted effort.

I just talked about this a bit. If the synthesis agent wants to make its own judgments without that framing, that's fine. However, it's a potential artifact we could document in the session log for users. As question volume grows and many get consolidated, it might be helpful to see the approximate clusters the agents originally generated.

We could test both a flat version and a pre-clustered version. When I was doing this manually early on, clustering naturally happened when I gave the prompt to Claude, whereas ChatGPT did not naturally cluster them. I liked the clustering I got from Claude, so I kept it as a legacy instruction. But if we feel it creates an anchoring effect that hinders the synthesis agent, I'm willing to set it aside. Still, I don't think it's a huge ask for even a Haiku agent to cluster ideas together.

## Question 10: Persona Coverage Evaluation Test

Number ten: for the persona coverage evaluation test, what is your preferred approach?

I don't think we should run the pipeline. I think it should be Option A. The questions should be generated in advance, available, and stable. The research should be conducted against these static buckets of questions rather than running the pipeline each time. This allows us to look at the addition or subtraction of agents—or changes in question volume—with a much keener eye because the baseline data isn't changing. So definitely Option A.

We will probably do an end-to-end full pipeline test at the final steps. Certainly, testing the orchestrator's ability to assign agents, or verifying that the synthesis prompt follows through, will require end-to-end testing.

## Question 11: Test Topics and Fresh Data

Question 11: How many test topics should we use? We have Space Party, Tool Library, and Habit Tracker. Should we generate fresh question data or start with one topic?

I don't think we need to generate fresh question data unless we're changing the numbers. It's not computationally or token-expensive to do additional generations, but having a stable baseline is useful. If we have a baseline generated with the 15 to 20 question prompt, we can always trace back anything from the targeted investigations or persona mapping. If we start over before all this Phase 2 work is completed, we might lose that traceability and backtrackability when checking for regressions.