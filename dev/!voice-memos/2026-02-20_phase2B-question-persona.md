# Idea Symphony: Phase 2 Question Generation Updates

I have been making good progress on the question generation persona for the Idea Symphony, and I want to discuss the recently completed work and our next steps. We developed a structured research inquiry based partly on feedback from Phase 3, which suggested that the original personas chosen for Phase 2 were perhaps too heavily analytical. We also had instances where both the Questioner and the Analyst had been retired from Phase 2 and Phase 3. We wanted to verify if they were still useful personas for question generation. To that end, we commissioned external research specifically focused on asking questions in facilitated brainstorming contexts.

## Research and Persona Mapping

We conducted targeted investigations to examine how the different personas are similar, complementary, or overlapping. Most recently, I re-ran the analysis on persona mapping. Originally, I included the persona mapping in the same research process that handled the external background information. However, this heavily biased the mapping because it relied on the old Phase 2 approach featuring highly analytical personas.

For example, we added a new persona, the Appreciative Inquirer, which the research supported but wasn't available during the initial analysis. I created a summary by feeding Perplexity a synthesized version of the background research, the results of the targeted investigations, and the new list of personas. Instead of critiquing the current version of Phase 2, the new request asked for an assessment of all 23 personas, evaluating their suitability for the question generation process and identifying potential clusters, similar to the clustering in Phase 3.

## Prioritizing Personas and Testing Strategy

This generated an ordered list that included eight high-priority, question-generating personas, which should provide significant dimensionality for the early exploration phase. Now, we need to determine the optimal settings to harness these personas effectively. The goal is to create the best possible questions to feed into the Phase 3 brainstorming. We have already refined those personas and developed a strong prompt for assigning them to different brainstorming rounds, including minor tweaks to the numbers and the cluster approach.

Next, we need to run tests using a specific set of question-generating personas. We must understand what questions they generate, how they synthesize together, what we might be missing by relying only on that set, and the incremental value of adding more personas to the process.

## Expanding the Persona Count and Model Selection

Originally, in Phase 2, we had a much smaller set of question-generating personas: one generic persona for low effort, three for medium effort, and five for high effort. The research suggests we need many more participants in the question generation phase to ensure we capture the full breadth of ideas for a given brainstorm. I am comfortable with this approach.

The API calls to the sub-agents for question generation are relatively small. In all my research so far, I have been using the GLM model—not Opus—for question generation. While Opus would likely provide even higher quality, I am getting demonstrably adequate results using a model comparable to Sonnet or Haiku. My suggestion is to change the model used in Phase 2b to either Sonnet or Haiku and run significantly more question generations than previously planned.

Perhaps the eight high-priority personas become the standard for a medium run. We could strip that back for a low run, while maintaining the capability to tack on up to five additional specialized personas if the subject merits it. For example, specialized personas like the Politician or the Accountant might really help flesh out specific ideas. (Although, since many topics relate to money, I am curious if the Accountant is truly a specialist or if they should be included more frequently). The main takeaway is that by running more question generations with a smaller model, we will have a much richer pool of questions to choose from.

## Evaluating Synthesis and Question Volume

Consequently, focusing on the Phase 2c synthesis work becomes the next high priority. I suggest executing a structured research inquiry using the recent recommendations regarding persona suitability. Starting with the top eight, we can evaluate what is lost when we subtract personas and whether there are measurable gains when we add to them. We could also explore swapping or randomizing some of those eight slots to ascertain what is most effective.

The fastest testing method is not to revise the synthesis prompt directly to see the final output. Instead, we should create test runs of different question groups. We can present an Opus agent with the questions that would be fed into the synthesis prompt alongside the questions that would be excluded. The agent can then determine if the spectrum of possible questions is adequately covered, noting what is gained or lost by altering the group.

Once we refine our numbers—perhaps determining that 10 personas are needed for a medium run instead of eight—we can further tweak the generation parameters. Currently, each sub-agent is asked to generate a rather large set of 15 to 20 questions. I am curious if this volume actually helps identify convergence during synthesis, or if it simply results in an overwhelmingly large pool of questions. We should test instructing sub-agents to generate smaller sets, such as 5 to 10 or 10 to 15 questions. We need to determine whether it is better to ask for 5 to 10 of the best questions from many more agents, or a larger number of questions from a smaller group of personas. This exploration can be done using the data we have already generated.

## Iterative Investigations and Context Management

We can create inquiries similar to our recent targeted investigations, having sub-agents collect sets of information, identify missing or included elements, and judge the trade-offs. I envision running a sequence of iterative investigations to gain fresh perspectives on each run. We should also explore if multiple investigations can occur simultaneously, since all the data would already be in the context window.

Eventually, when we test the actual synthesis prompts, we will need to clear the context window to ensure the sub-agent isn't relying on background data. However, for this research phase, I am curious if a single agent can do all the reading and explore multiple facets, or if we must perform a sequence of specialized investigations with a clean context each time. Regardless, the outcome of these iterations will be a persona assignment guide for Phase 2b and a better understanding of the ideal question body size, allowing us to focus fully on the synthesis work.

## Refining the Synthesis Prompt

Regarding that synthesis work, we must revise the synthesis prompt to preserve as many important dimensions as possible. We do need to narrow the list—reviewing 100 brainstorming questions is not practical. However, because we are using diverse, specialized personas, the synthesis prompt must emphasize keeping distinct perspectives intact.

For example, if the Appreciative Inquirer fulfills a totally unique role, the prompt must ensure its best and most unique questions are preserved and not lost in the merge. The same applies to storytelling-based questions or other niche perspectives. Hopefully, we will see the same convergence we have observed previously, where multiple personas independently generating similar ideas highlights the most critical questions.

Still, I suspect the current synthesis prompt lacks adequate instructions to preserve these unique dimensions. We may need to revisit the literature research, analyze the performance of different clusters, and evaluate what is lost or missing. This information will help us highly craft the synthesis prompt, ensuring that what gets discarded is acceptable and what is preserved is truly valuable.