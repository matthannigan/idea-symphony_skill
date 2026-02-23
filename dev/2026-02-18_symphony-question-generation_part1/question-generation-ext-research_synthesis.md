# Question Generation Methodology — External Research Synthesis

## Source Files

- Gemini: [question-generation-ext-research_gemini.md](./question-generation-ext-research_gemini.md)
- Manus: [question-generation-ext-research_manus.md](./question-generation-ext-research_manus.md)
- Perplexity: [question-generation-ext-research_perplexity.md](./question-generation-ext-research_perplexity.md)

## 1. Core methodologies for question generation

Across the documents, question generation is framed as the scaffolding that determines where attention goes, which modes of cognition are activated, and what territory downstream brainstorming can explore.

### Question taxonomy in facilitated work

The research converges on a multi‑dimensional taxonomy that blends Socratic categories, creative problem‑solving modes, and facilitation practice.

Key dimensions:

- **Logical role (Socratic types):**
Clarification, assumption‑probing, evidence‑seeking, viewpoint‑challenging, implication/consequence exploration, and meta‑questions about the inquiry itself.
- **Divergent vs. convergent:**
Divergent questions deliberately expand the space (“In how many ways could this be framed?”); convergent questions narrow toward selection, criteria, and feasibility.
- **Generative vs. evaluative framing:**
Generative framing (e.g., “How might we…?”) opens possibilities, while evaluative framing focuses on judging options, risks, and fit.
- **Depth:**
Surface questions establish facts and shared understanding; deeper questions probe causes, systems, values, and long‑term implications.

The key insight is that most classic Socratic categories are intrinsically analytical and convergent; genuinely generative and divergent modes form a distinct family that cannot be assumed to emerge from analytic personas alone.

### Bloom’s Taxonomy in dialogue

The Gemini report uses Bloom’s Taxonomy to define cognitive “altitudes” of questions, from knowledge and comprehension up through application, analysis, synthesis/creation, and evaluation.

- Lower‑level questions (“What is…?”, “How would you describe…?”) establish baseline understanding and shared language.
- Higher‑order questions (“What are the weak points?”, “How could these ideas be combined into something new?”, “What evidence would prove this?”) intentionally push agents into model‑building, critique, and recombination.

Effective facilitation is described as distributing question generation across higher‑order levels rather than remaining locked in recall and simple analysis.

### Socratic questioning in professional facilitation

Socratic questioning is presented as a disciplined, convergent method aimed at interrogating assumptions, unpacking reasoning, and stress‑testing logic rather than generating volume.

Core Socratic functions:

- Clarify terms and scope (“What exactly do you mean?”).
- Surface and test assumptions (“What are you taking for granted? What if that were false?”).
- Probe reasons and evidence (“What supports this claim?”).
- Explore alternate viewpoints (“How would an opponent see this?”).
- Investigate implications and consequences (“If we did this, what second‑order effects follow?”).
- Ask meta‑questions about the inquiry itself (“Is this even the right question?”).

In professional settings, this mode is explicitly contrasted with brainstorming: it is a precision tool for refinement and de‑biasing, not for opening new territories by itself.

### Appreciative Inquiry (AI)

Appreciative Inquiry is introduced as a strengths‑based alternative to deficit‑focused questioning, organized around a 4‑D cycle: Discovery, Dream, Design, and Destiny.

- **Discovery:** Questions elicit stories of “best of what is” (“Tell me about a time when this worked exceptionally well—what made it possible?”).
- **Dream:** Questions invite bold, desired futures building on those strengths (“If things were outstanding in three years, what would we see and feel?”).
- **Design:** Questions translate aspirations into concrete propositions, structures, and practices (“What structures would create that future reliably?”).
- **Destiny:** Questions focus on commitments and sustainment (“What small step can we take this week to move toward that future?”).

The reports emphasize that AI questions are affirmative, narrative, emotionally engaging, and future‑oriented; they change the emotional climate of sessions and reliably expand generative territory compared with problem‑only framing.

### Creative Problem Solving (CPS)

CPS provides the main divergent–convergent process logic: clarify, ideate, develop, implement.

- Early CPS stages use divergent, open questions to explore visions, data, and alternate challenge framings.
- Later stages shift to convergent, evaluative questions for selecting, strengthening, and implementing solutions.

A key methodological rule is strict **separation in time** between divergence and convergence—suspending judgment during idea generation to avoid “pressing accelerator and brake simultaneously.”

### Design Thinking and “How Might We”

Design thinking contributes the “How Might We” (HMW) pattern, which bridges user research insights into generative prompts.

Good HMW questions:

- Are grounded in specific user tensions or needs.
- Are positively framed, open‑ended, and avoid smuggling solutions into the question.
- Are “bounded‑generative”: broad enough for creativity, narrow enough to be actionable.

This pattern is presented as the core of human‑centered, empathic question generation in professional design and innovation work.

### Lateral Thinking and Six Thinking Hats

Edward de Bono’s work appears in two ways:

- **Lateral Thinking:**
Random entry, provocation (“Po” statements), challenge, and movement are used to deliberately break habitual patterns and induce unexpected connections.
- **Six Thinking Hats:**
White (facts), Red (feelings), Black (risks), Yellow (benefits), Green (creativity), and Blue (process) function as explicit lenses for question framing, ensuring balanced coverage of cognitive modes.

For subagent systems, hats provide a natural blueprint for persona specialization and for ensuring that emotional, optimistic, and creative question modes appear alongside analytic and risk‑focused ones.

### Question quality dimensions

The Perplexity and Manus reports consolidate facilitation literature into core quality dimensions for questions used in brainstorming and dialogue:

- Openness (avoiding yes/no).
- Scope and constraint fit (neither vague nor prematurely narrow).
- Framing balance (problem vs. strengths vs. aspiration).
- Depth mix (surface vs. causal vs. systemic).
- Perspective diversity (multiple lenses: user, system, risk, benefit, emotion, time horizon).
- Emotional resonance and narrative richness.
- Actionability (paths to next steps).
- Meta‑reflection and bias awareness (questions about the question set itself).

These dimensions are proposed as rubric criteria for evaluating the quality of questions generated by any persona or system.

***

## 2. Idea Symphony architecture and cognitive foundations

### Isolated subagents and Nominal Group Technique

Idea Symphony is described as an AI simulation of facilitated group ideation, implemented as an ensemble of 22 isolated personas that generate responses independently to avoid cross‑agent anchoring.

- The architecture mirrors the **Nominal Group Technique (NGT)**: each “participant” produces ideas without seeing others’ outputs, then results are aggregated.
- This design defends strongly against within‑group anchoring but sacrifices conversational back‑and‑forth and transactive memory that drive human collective intelligence.


### Collective intelligence and *c*‑factor

Drawing on Anita Williams Woolley’s research, the Gemini report emphasizes that group performance is predicted by a collective intelligence factor (*c*) driven by:

- Social perceptiveness.
- Equal distribution of communication.
- Cognitive diversity.

Because LLM subagents lack true social perceptiveness and reciprocal turn‑taking, Idea Symphony must lean almost entirely on **engineered cognitive diversity** across personas to approximate high *c*.

### LLM‑specific biases in question generation

The documents highlight several model‑level tendencies that interact with question design:

- **Fixation bias:** High fluency but conventionality; models default to statistically common patterns, limiting originality unless forced by lateral or constraint‑based prompts.
- **Framing and anchoring effects:** Initial human prompts, especially if deficit‑framed or solution‑leading, strongly steer all persona outputs in that direction.
- **Evaluation‑first tendencies:** Reinforcement training for coherence and safety predisposes outputs toward logical, feasible, risk‑aware content, crowding out wild or emotionally raw directions.

This background explains why using only analytical personas for question generation creates systemic, predictable biases in the question portfolio.

***

## 3. Persona–framework mapping

The combined research maps each Idea Symphony persona to natural question types and frameworks, then evaluates its “fitness” for generating high‑quality questions (vs. mainly answering them).

### 3.1 Overview by cognitive cluster

At a cluster level, personas fall into several groups:

- **Analytic / convergent:** Analyst, Questioner, Devil’s Advocate, First Principles Thinker, Pragmatist, Technical Expert, Accountant, Lawyer, Futurist.
- **Human‑centered / empathic:** Audience Advocate, Empath, Storyteller.
- **Generative / lateral / creative:** Provocateur, Visionary, Analogist, Constraint Flipper, Momentum Builder.
- **Systems / structural:** Systems Thinker, Connector.
- **Meta / synthesis / process:** Synthesizer, Simplifier, Questioner (as meta‑inquirer), Blue‑hat‑like roles.
- **Political / stakeholder:** Politician.

Coverage patterns:

- Analytic modes are **oversaturated**—roughly two‑fifths of the roster sits here.
- Human‑centered and connective roles are **moderately covered** but not structurally guaranteed for question generation phases.
- Explicit Appreciative Inquiry, systematic Six Hats emotional/process lenses, and dedicated meta‑portfolio monitoring are effectively **absent as primary mandates**.


### 3.2 Phase 2B question‑generation set

The Phase 2B set currently used for question generation comprises:

- The Questioner
- The Analyst
- The Audience Advocate
- The Devil’s Advocate
- The First Principles Thinker

Their alignments:

- **Questioner:** Socratic clarification, assumption‑probing, and meta‑questions; aligned to classic Socratic method and Blue‑Hat style process reflection; high analytic depth but low generative/affective coverage.
- **Analyst:** Clarification, evidence‑seeking, convergent focusing; aligned to Socratic core, CPS clarify/develop, White/Blue Hats; strong for diagnostic questions, weak for creative or emotional frames.
- **Audience Advocate:** Emotional and narrative user‑focused questions; aligned to Design Thinking/HMW and partial Appreciative Inquiry; strongest human‑centered contributor in Phase 2B.
- **Devil’s Advocate:** Assumption‑probing, implications, risk and failure modes; aligned to Black Hat, Socratic assumptions/implications, CPS evaluation; essential but strongly evaluative and narrowing.
- **First Principles Thinker:** Deep structural “why/how” questions, decomposition from fundamentals; aligned to Socratic assumptions, CPS clarify, and Blue/White Hats; high depth, but still primarily analytical.

All three analyses agree that this composition **fully covers convergent, evaluative, and Socratic analytical question types while providing no dedicated divergent question sources and only thin generative framing via Audience Advocate.**

### 3.3 Wider persona mapping (condensed table)

The broader mapping from the full 22‑persona architecture can be summarized as follows (paraphrased from the extended tables):


| Persona | Dominant question types | Primary framework / lens alignment | Question‑generation fitness |
| :-- | :-- | :-- | :-- |
| Accountant | Evidence, feasibility, risk, prioritization | CPS convergent; White/Black Hat evaluative modes | Moderate – strong for evaluative narrowing, weak for opening space |
| Analyst | Clarification, assumptions, evidence, focusing | Socratic core; CPS clarify/develop; White/Blue Hats | High for analytic diagnostics; low for creative or emotional inquiry |
| Analogist | Exploratory, analogical, systems/second‑order | Lateral thinking (movement, analogies); Green Hat | High – broad cross‑domain questions and pattern‑based reframes |
| Audience Advocate | Emotional, narrative, user‑needs HMW | Design Thinking; partial AI; Red/Yellow lenses | High – strong user‑centered HMW question generator |
| Connector | Exploratory, systems, viewpoint‑challenging | Systems and cross‑context lenses | High – bridges domains and exposes hidden relationships |
| Constraint Flipper | Constraint‑framing, creative “what if” | CPS challenge; Lateral challenge; Green Hat | High – excellent for bounded, constraint‑driven generative questions |
| Devil’s Advocate | Assumptions, implications, risk | Socratic assumptions/implications; CPS evaluation; Black Hat | High but strongly evaluative; needs balance to avoid over‑narrowing |
| Empath | Emotional, values‑based, appreciative | AI Discovery/Dream; Red Hat | Moderate–high – unique affective and strengths‑based questions |
| First Principles Thinker | Deep “why,” structural reframing | Socratic assumptions; CPS clarify; Blue/White Hats | High – deep structural questions, but analytical and abstract |
| Futurist | Implications, scenarios, future consequences | Foresight and systems; Yellow/Green/Blue blend | High – “what might happen if…?” and horizon‑scanning questions |
| Lawyer | Evidence, compliance, risk within rules | CPS evaluation; Black/White; regulatory lens | Moderate – strong narrow evaluative questions |
| Momentum Builder | Progressive “what if,” next‑step focus | CPS develop/implement; Yellow/Green | Moderate–high – good at turning ideas into action‑oriented question chains |
| Politician | Stakeholder viewpoints, narrative, feasibility | Stakeholder analysis; Red/Yellow/Black mix | Moderate–high – questions about who is affected and coalition dynamics |
| Pragmatist | Feasibility, prioritization, simplification | CPS convergent; Blue/Black/Yellow | Moderate – better at answering/evaluating than opening new territory |
| Provocateur | Provocative, absurdist lateral questions | Lateral thinking (provocation, Po); Green Hat | Very high – core source of disruptive, pattern‑breaking questions |
| Questioner | Clarification, assumptions, meta‑inquiry | Socratic method; Blue Hat process | High – strong meta‑inquiry; limited appreciative/emotional scope |
| Simplifier | Subtractive constraints, focusing | CPS convergent; Blue/Yellow | Moderate – strips complexity, can prematurely narrow |
| Storyteller | Narrative, experiential, appreciative | AI Discovery; story‑based design; Red/Yellow | High – scenario and journey‑based question generator |
| Synthesizer | Clustering, coverage, meta‑portfolio | CPS develop; Blue Hat synthesis | High for synthesis; moderate for raw question invention |
| Systems Thinker | Systems and second‑order effects | Systems thinking archetypes; Blue/Green/Black | High – deep structural/systemic questioner |
| Technical Expert | Evidence, feasibility, technical constraints | CPS evaluation/implementation; White/Black | Moderate – grounded evaluative questions; limited generative reach |
| Visionary | Ideal futures, aspirational “what if” | AI Dream; Green/Yellow | Very high – paradigm‑shifting, future‑pull question generator |

This mapping shows that many strong generative, appreciative, and systems‑oriented questioners exist in the architecture but are **not currently part of the Phase 2B question‑generation subset.**

***

## 4. Convergence and divergence across the three analyses

### Areas of convergence

The three research outputs substantially agree on several core points:

1. **Analytical bias of Phase 2B:**
The current question‑generation personas are almost entirely analytical, convergent, and evaluative, with minimal generative, emotional, or appreciative capacity.
2. **Criticality of question diversity:**
Diversity in question types (analytic, generative, affective, systemic) is necessary to produce diverse downstream solutions; analytic‑only question portfolios systematically constrain ideation space.
3. **Need for explicit divergent–convergent sequencing:**
Professional practice and CPS research both stress that judgment should be deferred in early questioning; generative/expansive questions must come before feasibility, risk, and evidence questions.
4. **Under‑representation of Appreciative Inquiry and positive framing:**
No current persona is explicitly responsible for systematic AI 4‑D sequencing or strength‑based questioning; Empath and Storyteller only partially cover this territory.
5. **Importance of emotional and human‑centered questions:**
Emotional, narrative, and user‑journey questions (Red Hat, AI Discovery, HMW) are necessary for engagement and for grounding ideas in real experience, but they are structurally underweighted in Phase 2B.
6. **LLM fixation and framing vulnerabilities:**
Model‑level tendencies toward conventionality, anchoring on initial prompts, and evaluation‑first responses mean that structural correctives (lateral techniques, appreciative framing, explicit constraints) must be built into persona design and orchestration.

### Areas of divergence / distinctive emphases

Each document also contributes unique emphases:

- **Gemini analysis:**
    - Strong focus on epistemological foundations (Bloom, Socratic, lateral thinking, AI) and on translating collective intelligence research (*c*‑factor) into design requirements for engineered cognitive diversity.
    - Proposes specific architectural interventions such as phased activation, “lateral injections” when convergence is detected, and hybrid NGT/Think‑Pair‑Share topologies.
- **Manus analysis:**
    - Provides the most detailed question taxonomy and cognitive diversity discussion, drawing on ReQUESTA, Kirton Adaption–Innovation theory, and explicit cognitive modes (adaptive vs. innovative, recall vs. inferential vs. synthetic).
    - Ranks all 22 personas by inherent “question‑generation fitness” and shows that Phase 2B disproportionately selects from medium‑ and low‑fitness tiers for this task.
- **Perplexity analysis:**
    - Offers an integrated taxonomy table tying each question type to divergence, framing, and depth, plus a persona‑to‑framework mapping table that is effectively a design reference for re‑composing persona sets.
    - Gives concrete alternative triads, 5‑persona, and 9‑persona sets optimized for broader coverage under the isolated‑subagent constraint.

Despite these differences in emphasis, none of the reports defend the current Phase 2B composition as adequate for high‑quality question generation; all recommend substantial redesign.

***

## 5. Synthesis: methodological implications for practice

Taken together, the analyses imply the following principles for using research question methodologies in professional brainstorming and facilitated dialogue, both with human teams and AI subagents:

1. **Design a portfolio of question modes, not a single “smart” voice.**
Facilitation should intentionally orchestrate analytic, generative, appreciative, emotional, systemic, and meta‑process questions, rather than relying on generic “good questions” to emerge organically.
2. **Sequence modes deliberately: diverge → probe → converge.**
    - Start with appreciative, visionary, user‑centered, lateral, and constraint‑based generative questions (AI, HMW, Green Hat, lateral thinking, Systems Thinker in expansive mode).
    - Follow with Socratic and systems probes to refine and stress‑test emerging concepts.
    - Conclude with evaluative, feasibility, and implementation questions (Black Hat, CPS implementation, Accountant, Lawyer, Technical Expert).
3. **Balance deficit and strengths‑based frames.**
Use both problem‑framed questions (“What’s broken?”) and strengths‑framed questions (“When have we already done this well?”), being explicit about when and why each is invoked.
4. **Embed bias‑aware meta‑questions.**
Periodically ask about the question set itself: what lenses are over‑represented (e.g., risk) and what is missing (e.g., emotion, future, user stories).
5. **Treat emotional, narrative, and stakeholder questions as first‑class.**
Red‑Hat‑style and narrative questions are necessary for surfacing motivations, fears, and aspirations that shape solution viability, not “soft add‑ons.”

In human facilitation, these principles translate into explicit agenda design and role assignment; in Idea Symphony, they must be encoded as persona selection and orchestration rules.

***

## 6. Final recommendations for Idea Symphony

The three reports collectively point toward a set of concrete architectural and process recommendations.

### 6.1 Rebalance the Phase 2B persona mix

1. **Introduce high‑fitness generative personas into Phase 2B.**
    - Add Provocateur, Visionary, and at least one of Constraint Flipper or Analogist to the question‑generation pool for strong lateral, aspirational, and constraint‑based generativity.
    - Consider Systems Thinker in an explicitly expansive, exploratory mode to ensure systemic and second‑order questions.
2. **Strengthen appreciative and emotional roles.**
    - Add Empath and/or Storyteller (or create an explicit Appreciative Inquiry persona) whose sole mandate is to ask strength‑based, narrative, and aspirational questions across the AI 4‑D cycle.
3. **Retain but right‑size analytic and risk roles.**
    - Keep First Principles Thinker and Devil’s Advocate, but rely more on downstream phases for heavy evaluation; avoid filling Phase 2B with mostly convergent personas.
    - De‑emphasize pure Analyst and Pragmatist in question‑generation phases, using them more in answer‑generation and evaluation stages.
4. **Formalize a Blue‑Hat/meta persona for question portfolios.**
    - Elevate Questioner and/or Synthesizer into an explicit meta‑facilitator role responsible for monitoring coverage (e.g., “What have we not asked yet?”).

### 6.2 Enforce phased activation and sequencing

Implement a three‑phase orchestration topology for subagents:

- **Phase 1 – Divergent generation:**
Activate Provocateur, Visionary, Analogist, Constraint Flipper, Audience Advocate, Empath, Storyteller, Systems Thinker in expansive mode. Suppress evaluative and feasibility questions.
- **Phase 2 – Socratic and systems interrogation:**
Bring in First Principles Thinker, Questioner, Systems Thinker (probing mode), Connector, and Devil’s Advocate to interrogate assumptions and consequences of Phase 1 outputs.
- **Phase 3 – Convergent evaluation and implementation:**
Activate Analyst, Pragmatist, Accountant, Lawyer, Technical Expert, Momentum Builder, and Blue‑Hat‑like meta roles to evaluate, prioritize, and translate promising ideas into testable plans.

This sequencing should be enforced algorithmically (e.g., via prompt scaffolds and which personas are invoked), not left to chance.

### 6.3 Add structural countermeasures to LLM biases

1. **Automated lateral injections.**
When multiple personas independently converge on similar themes (semantic similarity high), trigger Random Entry or provocation prompts to disrupt fixation and re‑open the space.
2. **Prompt‑level framing guards.**
    - Normalize or reframe strongly deficit‑framed user prompts into neutral or appreciative variants before distributing them to personas.
    - Explicitly instruct early‑phase personas to ignore feasibility and risk, focusing instead on possibility, strengths, and emotion.
3. **Constraint‑based creativity prompts.**
Use Constraint Flipper and related personas to turn resource, time, and policy limits into creative prompts rather than “stop signs.”

### 6.4 Formalize evaluation rubrics for subagent output

Adopt the quality rubrics proposed in the research (Bloom alignment, lateral disruption, Socratic rigor, appreciative framing, process autonomy) to routinely score question sets and adjust personas and prompts.

- Track diversity of question types (from the unified taxonomy).
- Monitor framing balance (problem vs. strengths vs. aspiration).
- Measure depth distribution and lens diversity (risk, benefit, user, system, emotion, future).

These metrics can inform automated persona selection for future runs.

### 6.5 Example configurations for different use cases

Drawing from the alternative sets proposed:

- **Lean 3‑persona set (balanced triad):**
First Principles Thinker, Audience Advocate, Provocateur – deep analytic “why,” user‑centered HMW, and strong lateral provocation.
- **5‑persona generative‑analytic blend:**
First Principles Thinker, Audience Advocate, Provocateur, Constraint Flipper, Synthesizer – combines depth, empathy, lateral creativity, constraint‑based exploration, and meta‑coverage/gap detection.
- **9‑persona “max coverage” set for critical topics:**
First Principles Thinker, Analyst, Devil’s Advocate, Audience Advocate, Empath, Storyteller, Systems Thinker, Provocateur, Visionary – explicitly covering analytic rigor, emotion, narrative, systems, provocation, and aspirational futures.

Selecting among these templates based on problem type can bring professional‑grade facilitated diversity into the subagent environment.

***

Overall, the synthesis indicates that Idea Symphony can evolve from a sophisticated analytic review board into a genuinely generative, human‑centered ideation partner by rebalancing personas toward generative and appreciative roles, enforcing divergent–convergent sequencing, and embedding explicit countermeasures to LLM fixation and framing biases in its orchestration logic.
