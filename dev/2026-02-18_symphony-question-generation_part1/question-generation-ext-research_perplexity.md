<img src="https://r2cdn.perplexity.ai/pplx-full-logo-primary-dark%402x.png" style="height:64px;margin-right:32px"/>

# Question Generation Frameworks Research

**Date:** 2026-02-19
**Purpose:** Map Idea Symphony personas against question generation methodologies to assess coverage, identify gaps, and evaluate the current Phase 2B persona set.

***

## 1. Question Generation Methodology Findings

### 1.1 Question Taxonomy

The table below synthesizes Socratic categories, divergent/convergent thinking, generative/evaluative framing, depth, and other facilitation practices into a unified taxonomy of question types.[^1][^2][^3][^4][^5][^6][^7][^8][^9][^10][^11]


| Category | Definition | Typical Stems / Examples | Divergent vs. Convergent | Generative vs. Evaluative | Depth Level |
| :-- | :-- | :-- | :-- | :-- | :-- |
| Clarification | Establishes shared understanding of terms, scope, and intent before exploring solutions.[^1][^6] | “What do you mean by…?”, “Can you explain that further?”, “What is the core problem here?”[^1] | Mildly convergent (narrows ambiguity) | Neutral; prepares ground for both | Mostly surface, with potential to set up deeper probes |
| Assumption‑probing | Surfaces and tests hidden premises behind statements or ideas.[^1][^12][^6][^10] | “What are you assuming here?”, “What could we assume instead?”, “If this assumption were false, how would things look different?”[^1][^12][^6] | Can be divergent (exploring alternative assumptions) or convergent (testing a specific one) | Often evaluative (interrogating validity), but can be generative when it invites alternative frames | Mid–deep (“why are we thinking this way?”) |
| Evidence‑seeking | Examines reasons, data, and examples supporting a claim.[^1][^6][^13] | “What evidence supports this?”, “Can you give a concrete example?”, “How do you know this is true?”[^1][^6][^13] | Convergent (moves toward justified positions) | Evaluative (testing robustness) | Mid‑level (how/what) with some depth on reasoning structures |
| Viewpoint‑challenging | Invites alternative perspectives and counter‑positions.[^1][^6][^13] | “How might someone with a different view see this?”, “What would our harshest critic say?”[^1][^6] | Divergent (expands perspective space) | Both generative (new angles) and evaluative (stress‑testing) | Mid–deep, especially on “why” others differ |
| Implication / consequence | Explores “so what?” and downstream effects of ideas and decisions.[^1][^6][^13] | “What are the consequences if we do this?”, “How does this affect other areas?”, “What might this lead to in 5 years?”[^1][^6] | Can be divergent (multiple futures) or convergent (testing one scenario) | Often evaluative (risks, trade‑offs), but can be generative when imagining positive outcomes | Deep (systemic why/what‑if) |
| Meta‑questions | Reflect on the questions themselves, their usefulness, and direction of inquiry.[^1][^10] | “Why is this the question we’re asking?”, “Is there a better question?”, “What questions are we not asking?”[^1][^10] | Divergent (opens new inquiry directions) | Generative (reframes the territory) | Deep (meta‑cognitive) |
| Divergent exploratory | Open questions that deliberately expand the idea and problem space.[^2][^4][^7][^9][^11] | “What are all the ways we could…?”, “What else might be going on?”, “What surprising options could we consider?”[^2][^9][^11] | Strongly divergent (many options) | Strongly generative | Mid–deep, depending on how/why framing is used |
| Convergent focusing | Questions that narrow, select, or structure options toward a decision.[^2][^4][^7][^9][^11] | “Which of these options best fits our constraints?”, “What criteria matter most here?”, “What’s the simplest viable path?”[^2][^7][^9] | Strongly convergent | Often evaluative, sometimes pragmatic generative (“how to implement”) | Mid‑level (how/what) |
| Generative “What if / HMW” | Intentionally opportunity‑seeking questions that invite novel possibilities.[^3][^5][^8][^14] | “How might we re‑imagine…?”, “What would it look like if this worked brilliantly?”, “What if constraints disappeared?”[^3][^5][^14] | Divergent (expands possibility space) | Strongly generative, often positively framed | Deep on desirable futures |
| Evaluative risk / feasibility | Questions about viability, risk, constraints, and trade‑offs of ideas.[^2][^7][^9][^11] | “What could go wrong?”, “Is this feasible with current resources?”, “What are the main risks?”[^2][^7] | Convergent | Strongly evaluative | Mid–deep (how/why this might fail) |
| Appreciative / strengths‑based | Focus on “best of what is” and desired, life‑giving patterns.[^3][^5][^8][^14] | “When have we done this well before?”, “What strengths can we build on?”, “What do we want more of?”[^3][^5][^14] | Divergent within a positive frame | Generative (builds on strengths) | Mid–deep on values and positive exceptions |
| Narrative / experiential | Elicit stories and concrete lived experiences to ground understanding.[^3][^5][^14] | “Tell me about a time when…”, “What happened before and after?”, “Who was involved and how did they feel?”[^3][^14] | Divergent (multiple stories) | Generative (new meaning‑making), can also be diagnostic | Surface–mid on facts; deep on meaning if followed up |
| Systems / second‑order | Explore feedback loops, interactions, and unintended consequences across a system.[^1][^6] | “How does this interact with other parts of the system?”, “What ripple effects could this trigger?”, “What patterns have we seen over time?”[^1][^6] | Both divergent (multiple loops) and convergent (identifying key dynamics) | Often evaluative with generative implications (designing better systems) | Deep |
| Emotional / values‑based | Surface feelings, values, and subjective stakes.[^3][^14] | “What feels exciting or worrying about this?”, “What would success feel like for our users?”, “What matters most to them?”[^3][^14] | Divergent (multiple value lenses) | Generative (opens new criteria and motivations) | Deep on “why it matters” |
| Constraint‑framing | Intentionally uses constraints to shape creative territory.[^2][^7][^9][^11] | “If we had one week and no budget, what could we do?”, “What if we had to serve 10x users with half the resources?”[^2][^11] | Divergent within a constraint envelope | Generative (reframes limits as prompts) | Mid‑level |
| Prioritization / criteria | Define decision rules and relative importance.[^2][^7][^9] | “What criteria define a good solution?”, “Which outcomes matter most?”, “What are must‑haves vs. nice‑to‑haves?”[^2][^7] | Convergent | Evaluative | Mid‑level |
| Meta‑process / reflection | Reflect on the process and portfolio of questions asked so far.[^1][^10] | “What types of questions have we overused?”, “What’s missing from our inquiry so far?”, “How has our framing evolved?”[^1][^10] | Divergent on process improvement | Generative | Deep, meta‑cognitive |

This taxonomy is the backbone for mapping personas and diagnosing coverage and bias in Phase 2B.

***

### 1.2 Framework Question Design Principles

#### 1.2.1 Appreciative Inquiry (AI)

Appreciative Inquiry’s 4D cycle (Discovery, Dream, Design, Destiny) starts from an “affirmative topic” and uses questions that deliberately focus on strengths, successes, and desired futures rather than problems. Discovery questions ask about “the best of what is,” inviting stories of past excellence and existing strengths; Dream questions invite people to envision “what might be” by building on those strengths.[^3][^5][^8][^14]

Design questions translate aspirations into concrete propositions (“what should be”), and Destiny questions focus on sustaining and amplifying the new patterns (“what will be”), often asking about commitments and next steps. Across stages, AI questions are intentionally surprising, emotionally engaging, story‑eliciting, and growth‑oriented, with the explicit intent to generate creative, life‑giving responses rather than analytical problem‑fixing.[^5][^8][^14][^3]

**Generic topic example (e.g., “improving a team’s collaboration”):**

- Discovery: “Tell me about a time when collaboration in this team really worked and felt energizing—what made it possible?”[^14][^3]
- Dream: “If our collaboration were truly outstanding in a year, what would we see, hear, and feel day‑to‑day?”[^3][^5]
- Design: “What structures, rituals, or tools would we need to create that kind of collaboration consistently?”[^8][^5]
- Destiny: “What is one small but meaningful step we can take this week to move toward that future?”[^5][^8]

These are strongly generative, appreciative, and narrative‑emotional in tone.

#### 1.2.2 Creative Problem Solving (CPS)

Creative Problem Solving (Osborn–Parnes and descendants) separates problem‑finding from solution‑finding and alternates divergent and convergent phases: clarify, ideate, develop, and implement. Early CPS stages emphasize divergent problem exploration through questions like “What’s really going on?” and “In how many ways might we frame this challenge?”, while later stages use convergent questions to select and strengthen solutions (“Which ideas best fit our criteria?”, “How can we make this idea more workable?”).[^2][^4][^7][^9][^11]

Well‑designed CPS questions are explicit about which mode they are in, typically using “How might we…?” for open ideation and more structured criteria questions during convergence (e.g., “Which options are both high‑impact and feasible within 6 months?”).[^7][^9][^11][^2]

**Generic topic example:**

- Clarify (problem‑finding): “In how many different ways can we state the challenge of ‘team collaboration’?”
- Ideate (solution‑finding): “How might we create conditions where collaboration feels easy and rewarding?”
- Develop: “Which of these ideas could we prototype quickly with minimal risk?”
- Implement: “What specific first steps would we take next week to test our chosen approach?”


#### 1.2.3 Design Thinking (“How Might We”)

Design thinking emphasizes empathizing with users, defining POVs, ideating, prototyping, and testing, with “How Might We” (HMW) questions bridging research insights into ideation prompts. Good HMW questions are framed around user needs and tensions, bounded enough to be actionable but open enough to permit multiple solutions (e.g., “How might we help remote teammates feel included in meetings without increasing meeting length?”).[^9][^11][^2][^7]

HMW construction guidelines typically emphasize grounding in user insights (“we heard that…”), focusing on a specific leverage point, and avoiding baked‑in solutions so that the question invites a broad solution space rather than a narrow feature wishlist.[^11][^2][^7][^9]

**Generic topic example:**

- “How might we help team members feel safe raising concerns during collaboration?”
- “How might we reduce coordination friction for cross‑time‑zone work without requiring more synchronous meetings?”

These are generative, user‑centered, and moderately constrained.

#### 1.2.4 Lateral Thinking

Lateral thinking (à la de Bono) uses techniques like random entry, provocation (Po), challenge, and movement to shift patterns of perception and generate unexpected ideas. Question forms often deliberately break logic or introduce absurdity: “What if we were required to make collaboration worse—what would we do?”, “If a five‑year‑old redesigned our workflow, what might they change?”, “Why do we assume collaboration means more meetings?”[^4][^2][^7][^9][^11]

These questions are strongly divergent, provocative, and generative, often suspending immediate evaluation to explore unlikely or seemingly irrational directions that can later be harvested for usable insights.[^2][^9][^11]

#### 1.2.5 Six Thinking Hats as Question Modes

Six Thinking Hats can be applied as question lenses:

- White (facts): “What do we know about how collaboration currently works? What data do we have?”
- Red (feelings): “How do people feel during our current collaboration rituals?”
- Black (risks): “What could go wrong if we changed our collaboration model this way?”
- Yellow (benefits): “What are the potential gains if this works?”
- Green (creativity): “What new approaches to collaboration could we try that we’ve never used before?”
- Blue (process): “How should we structure our exploration of collaboration to balance creativity and rigor?”

In practice, the “hat” is a constraint on question framing, ensuring that diverse cognitive modes (emotional, creative, critical, data‑driven, process‑oriented) are all represented in the question set, rather than defaulting to analytic or risk‑focused queries.

***

### 1.3 Cognitive Diversity and Question Quality

Research on divergent vs convergent thinking and creative problem solving consistently emphasizes that high‑quality innovation requires both exploratory and evaluative modes, ideally contributed by people with different cognitive strengths. Divergent thinkers tend to generate more numerous and varied options, while convergent thinkers help structure, evaluate, and select them; studies and practitioner guidance stress that over‑reliance on one style reduces both idea quantity and implementation quality.[^4][^7][^9][^11][^2]

Practitioner literature on team creativity highlights that including different thinking styles (creative ideators, analysts, implementers, user advocates, systems thinkers) improves both the diversity and feasibility of outcomes, particularly when their contributions are intentionally sequenced (diverge first, then converge). Sources on Appreciative Inquiry and positive, strengths‑based questioning argue that introducing affirmative, emotionally engaging questions changes the emotional climate and leads to more generative, sustainable solutions compared to deficit‑only analysis.[^7][^8][^9][^14][^11][^2][^3][^5]

Guidance on convergent/divergent balance warns that if early questions are too convergent (e.g., feasibility‑first), teams prematurely narrow the problem space, reducing originality and making solutions incremental rather than transformative. In contrast, when early questions are broadly generative (e.g., appreciative, visionary, user‑empathetic), later convergent evaluation tends to operate over a richer solution set, increasing the odds of high‑quality innovation.[^8][^9][^14][^11][^2][^3][^5][^7]

***

### 1.4 Question Quality Dimensions

Synthesizing facilitation and creativity guidance yields a set of dimensions for evaluating brainstorming questions.[^6][^1][^9][^14][^11][^2][^3][^4][^5][^7][^8]

**Core quality dimensions:**

- **Openness:**
    - High‑quality ideation questions are typically open‑ended, avoiding yes/no answers and inviting multiple valid responses.[^1][^9][^11][^2][^4][^7]
- **Scope / constraint fit:**
    - Effective questions are neither so broad that they become vague (“How can we make everything better?”) nor so narrow that they predetermine solutions; many frameworks recommend “bounded generativity” (e.g., HMW questions anchored in a specific user tension).[^9][^11][^2][^7]
- **Framing (problem vs. strength vs. aspiration):**
    - Problem‑framed questions can sharpen diagnosis but may anchor attention on deficits; strengths‑ and aspiration‑framed questions (AI) tend to increase engagement, creativity, and willingness to imagine bold futures.[^14][^3][^5][^8]
- **Depth (surface vs. causal vs. systemic):**
    - Good question sets include a mix of surface “what/when/where” and deeper “why/how/what if” questions, as emphasized in Socratic and systems thinking guidance.[^10][^6][^1]
- **Perspective diversity:**
    - Question portfolios that explicitly incorporate multiple lenses (user emotions, system dynamics, risks, benefits, constraints, future trends) are more likely to generate robust idea spaces.[^6][^1][^2][^3][^5][^7][^8]
- **Emotional resonance and narrative richness:**
    - Appreciative and narrative questions that evoke stories and emotional experiences increase engagement and often yield more contextually grounded insights.[^3][^5][^8][^14]
- **Actionability:**
    - Even generative questions benefit from some link to actionable next steps (e.g., AI’s Destiny stage, CPS implementation questions), preventing purely abstract exploration.[^2][^5][^7][^8]
- **Bias awareness and meta‑reflection:**
    - High‑quality facilitation includes meta‑questions about the question set itself, checking for over‑emphasis on certain lenses (e.g., risk) and omissions (e.g., user emotions).[^10][^1]

These dimensions can be turned into a rubric for evaluating Phase 2B question output (e.g., rating each persona’s set on openness, depth mix, lens diversity, emotional content, and framing balance).

***

### 1.5 Bias in Question Generation

Facilitation and creativity literature highlights several systematic biases arising from question framing and sequencing.[^11][^1][^5][^6][^7][^8][^9][^14][^2][^3]

- **Anchoring effects:**
    - Early questions can narrow subsequent thinking by anchoring on particular frames (e.g., cost, risk, feasibility), which then shape what participants notice and generate; convergent or risk‑heavy first questions are especially likely to constrain creativity.[^7][^9][^11][^2]
- **Framing bias (deficit vs. appreciative):**
    - Problem‑focused questions (“What’s broken?”) can evoke defensive, blame‑oriented responses and limit attention to fixes, while appreciative questions (“When have we seen this work well?”) encourage exploration of strengths and possibilities.[^5][^8][^14][^3]
- **Evaluation‑premature bias:**
    - If evaluative questions (feasibility, risk, evidence) dominate too early, participants self‑censor unconventional ideas, leading to incremental solutions; guidance on divergent/convergent sequencing stresses the need to defer judgment in early questioning.[^4][^9][^11][^2][^7]
- **Cognitive style dominance:**
    - When questions are generated predominantly by one cognitive style (e.g., analytic or critical), other modes (emotional, visionary, user‑centered, systemic) get underrepresented, producing blind spots in the exploration space.[^9][^11][^2][^3][^5][^7]
- **Question–response loop:**
    - The type of questions asked largely determines the kind of answers generated: evidence‑seeking questions elicit data and justification; provocative questions elicit unusual ideas; appreciative questions elicit success narratives and aspirations.[^1][^6][^14][^3][^5]

Countermeasures recommended in facilitation practice include deliberately designing portfolios of questions that balance generative and evaluative modes, explicitly scheduling divergent‑first sequences, using positive/strengths‑based frames alongside problem frames, and periodically asking meta‑questions about what has not yet been asked.[^6][^8][^14][^11][^1][^2][^3][^5][^7]

***

## 2. Persona Coverage Mapping

### 2.1 Mapping Table

The table below maps each persona to natural question types, aligned frameworks, emphasized quality dimensions, and an assessment of its fitness for *generating* questions (vs. mainly answering them). This mapping incorporates the taxonomy and frameworks above plus the user‑defined persona descriptions.


| Persona | Natural Question Types | Framework / Lens Alignment | Emphasized Quality Dimensions | Question‑Generation Fitness |
| :-- | :-- | :-- | :-- | :-- |
| Accountant | Evidence‑seeking, feasibility, risk, prioritization | CPS convergent; White/Black Hat; evaluative convergent thinking | Specificity, feasibility, constraint fit, evidence | Moderate: strong for evaluative and convergent questions; weak for generative territory‑opening |
| Analyst | Clarification, assumption‑probing, evidence‑seeking, convergent focusing | Socratic core; CPS clarify/develop; White/Blue Hat | Depth (why/how), logical rigor, bias checking, criteria definition | High for analytic and diagnostic questioning; low for creative or emotional lenses |
| Analogist | Divergent exploratory, analogical, systems/second‑order | Lateral thinking (movement, analogies); Green Hat | Perspective diversity, cross‑domain connections, generative “what if” | High: naturally generates wide, pattern‑based question sets (e.g., “Where else have we seen challenges like this?”) |
| Audience Advocate | Emotional/values‑based, narrative/experiential, clarifying user needs | Design thinking (HMW), Red/Yellow Hat, some AI | Empathy, narrative richness, user‑centered framing, scope fit | High: excellent at generating user‑framed HMW questions and need‑clarifying questions |
| Connector | Divergent exploratory, systems/second‑order, viewpoint‑challenging | External perspectives triad; systems and lateral patterns | Perspective diversity, cross‑context links, depth on interactions | High: strong at questions that bridge domains and reveal hidden relationships |
| Constraint Flipper | Constraint‑framing, generative “what if”, provocative reframing | CPS (challenge), Lateral thinking (challenge), Green Hat | Generativity under constraints, reframing limits, bounded divergence | High: excellent generator of creative constraint‑based questions |
| Devil’s Advocate | Assumption‑probing, implication/consequence, evaluative risk | Socratic assumptions/implications; CPS evaluation; Black Hat | Risk awareness, logical rigor, stress‑testing, depth on consequences | High but strongly evaluative; can overly narrow if not counterbalanced |
| Empath | Emotional/values‑based, narrative/experiential, appreciative | AI Discovery/Dream; Red Hat | Emotional resonance, user feelings, values clarity | Moderate–high: very helpful for affective and value‑driven questions; less structured analytically |
| First Principles Thinker | Assumption‑probing, clarification, deep why/how, generative recomposition | CPS clarify; Socratic assumptions; Blue/White Hat | Depth, deconstruction, non‑obvious reframing from fundamentals | High: strong generator of deep, structural questions; can skew abstract/analytical |
| Futurist | Implication/consequence, systems/second‑order, generative future scenarios | Trend‑grounded foresight; Yellow/Green/Blue Hats mix | Long‑term implications, scenario richness, aspirational yet plausible futures | High: good at “what might happen if…?” and horizon‑scanning questions |
| Lawyer | Evidence‑seeking, risk/compliance, constraint‑framing | CPS evaluation; Black/White Hat; specialized regulatory lens | Specificity, feasibility within rules, risk mitigation | Moderate: strong domain‑specific evaluative questions; narrow and topic‑gated |
| Momentum Builder | Generative “what if”, progressive elaboration, prioritization toward action | CPS develop/implement; Yellow/Green Hat | Actionability, forward motion, concrete next steps | Moderate–high: good at turning ideas into sequences of enabling questions, weaker at early exploration |
| Politician | Viewpoint‑challenging, narrative/experiential, implication for stakeholders | Stakeholder analysis; Red/Yellow/Black Hats mix | Stakeholder perspectives, power dynamics, coalition feasibility | Moderate–high: useful for questions about who is affected, who supports/blocks, and narrative positioning |
| Pragmatist | Evaluative feasibility, prioritization, convergent focusing | CPS convergent; Blue/Black/Yellow Hats | Actionability, simplicity, minimum viable paths | Moderate: better at answering/evaluating than generating broad new question territory |
| Provocateur | Provocative, lateral, absurdist, generative “what if” | Lateral thinking (provocation, Po); Green Hat | Originality, pattern‑breaking, extreme scenarios | Very high: core generator of surprising, lateral questions that open new spaces |
| Questioner | Clarification, assumption‑probing, meta‑questions | Socratic method; Blue Hat | Depth, process reflection, bias awareness, exploration of hidden premises | High: especially strong for meta‑inquiry and probing existing ideas, less so for appreciative or emotional modes |
| Simplifier | Constraint‑framing (via subtraction), convergent focusing, meta‑process | CPS convergent; Blue/Yellow Hat | Simplicity, scope fit, de‑complexification | Moderate: good at questions that strip away non‑essentials, but can prematurely narrow space |
| Storyteller | Narrative/experiential, appreciative, emotional, implication for lived journeys | AI Discovery; Design thinking storytelling; Red/Yellow Hat | Narrative richness, emotional salience, user journey framing | High: strong generator of scenario‑ and story‑based questions (“What would this day in the life look like?”) |
| Synthesizer | Meta‑questions, convergent focusing, taxonomy/cluster questions | Blue Hat; CPS develop/clarify; synthesis modes | Coverage awareness, redundancy detection, gap spotting | High *for synthesis*, moderate for raw question invention; best used to refine/cluster others’ questions |
| Systems Thinker | Systems/second‑order, implication/consequence, viewpoint‑challenging | Systems thinking archetypes; Blue/Green/Black Hats | Deep implications, feedback loops, unintended consequences | High: excellent at deep structural questions (“What reinforcing loops are we creating?”) |
| Technical Expert | Evidence‑seeking, feasibility, constraint‑framing | CPS evaluation/implementation; White/Black Hat | Specificity, realism, technical constraints | Moderate: strong for grounded evaluative questions; narrow generative reach |
| Visionary | Generative “what if / ideal future”, appreciative/aspirational | AI Dream; Green/Yellow Hat | Aspirational futures, bold reframing, positive images | Very high: primary source of paradigm‑shift, future‑pull questions |

### 2.2 Coverage Summary

From this mapping, the following coverage patterns emerge:

- **Well‑covered question types / modes:**
    - Assumption‑probing, evidence‑seeking, feasibility, and risk questions have multiple strong holders (Analyst, Devil’s Advocate, Accountant, Lawyer, Technical Expert, Pragmatist).[^1][^2][^6][^7]
    - Systems/implication questions are robustly represented (Systems Thinker, Futurist, Devil’s Advocate, Connector).[^2][^6][^7][^1]
    - Generative provocation and analogical questions have at least one strong champion each (Provocateur, Constraint Flipper, Analogist, Visionary).[^11][^7][^9][^2]
- **Moderately covered:**
    - Appreciative/strengths‑based and aspirational modes show up via Empath, Storyteller, Visionary, and partly Audience Advocate, but there is no explicit “Appreciative Inquiry” persona whose sole job is to ask strengths‑and‑success‑framed questions.[^8][^14][^3][^5]
    - Meta‑questioning and process reflection appear via Questioner and Synthesizer but are not currently central in Phase 2B’s fixed set.
- **Underrepresented / largely absent:**
    - Explicit *Appreciative Inquiry 4D sequencing* (Discovery → Dream → Design → Destiny) in question form is not mapped to any specific persona; these moves are emergent rather than guaranteed.[^3][^5][^8]
    - Deliberate *Six Hats emotional (Red Hat)* and *pure Blue Hat process* question modes are not given dedicated personas; they are partially embedded in Empath and Questioner/Synthesizer but not explicitly orchestrated.
    - Systematic *meta‑portfolio* questions (about the distribution of frames in the question set itself) are not yet assigned as a base responsibility to any persona in Phase 2B.


### 2.3 Question‑Generation Fitness Rankings

Based on the previous table and the requirement that each persona operate as an isolated subagent, the most naturally strong question generators are:

- **Top‑tier generators (broad, distinctive question territories):**
    - Provocateur, Visionary, Constraint Flipper, Analogist, Connector, Systems Thinker, Audience Advocate, Storyteller, First Principles Thinker, Futurist.
- **Strong but more evaluative/diagnostic generators:**
    - Devil’s Advocate, Analyst, Questioner, Empath, Politician, Momentum Builder.
- **Better suited as answerers or evaluators than primary generators:**
    - Accountant, Lawyer, Technical Expert, Pragmatist, Simplifier, Synthesizer (as currently framed).

The key point is that many of the strongest question generators (Provocateur, Visionary, Constraint Flipper, Systems Thinker, Analogist, Storyteller, Empath/Audience Advocate) are *not* in the current fixed Phase 2B set, which is dominated by analytical and evaluative modes.

***

## 3. Current Phase 2B Set Assessment

### 3.1 Coverage Gaps

The current fixed Phase 2B sets are:

- Medium: Questioner, Analyst, Audience Advocate
- High: + Devil’s Advocate, First Principles Thinker

Against the taxonomy and frameworks, the main gaps are:

- **Appreciative and strengths‑based question types** are effectively missing; Audience Advocate brings empathy but not systematic AI Discovery/Dream questioning about “the best of what is” and “what we want more of.”[^14][^5][^8][^3]
- **Provocative lateral thinking** is absent: there is no Provocateur‑like persona to introduce absurdist or Po‑style questions that deliberately break patterns.[^7][^9][^11][^2]
- **Visionary/aspirational framing** is underrepresented: First Principles Thinker and Analyst tend to deconstruct rather than imagine bold futures; Visionary and Futurist are not part of Phase 2B.
- **Systems/second‑order questions** are missing: Systems Thinker is absent, so deeper feedback loops and systemic consequences are only indirectly touched (e.g., Devil’s Advocate implications).
- **Meta‑process and synthesis questions** are lightly represented: Questioner can ask meta‑questions but is primarily analytic; Synthesizer is not used here.

In taxonomy terms, Phase 2B heavily covers clarification, assumption‑probing, evidence‑seeking, and implication‑risk questions, but under‑covers appreciative, narrative, lateral, visionary, and explicit systems categories.

### 3.2 Dimension Skew

Evaluated against the quality dimensions in 1.4, the current set shows:

- **Overrepresented dimensions:**
    - Depth in analytical “why/how” and logical rigor (Analyst, First Principles, Questioner, Devil’s Advocate).
    - Evaluative framing (risks, feasibility, validity of assumptions) via Devil’s Advocate, Analyst, First Principles.
    - Convergent focusing and criteria definition.
- **Underrepresented dimensions:**
    - Emotional resonance and narrative richness (only Audience Advocate partially covers this; Storyteller and Empath are absent).[^14][^3]
    - Appreciative, strengths‑based framing and aspirational futures (no AI‑style Discovery/Dream lens).[^5][^8][^3][^14]
    - Perspective diversity across external systems and analogies (Systems Thinker, Analogist, Connector not present).
    - Provocative originality (no Provocateur or explicit lateral lens).

As a result, Phase 2B questions are likely to be high‑quality on rigor and assumption clarity but comparatively narrow in emotional, systemic, and creative dimensions.

### 3.3 Bias Risk Assessment

Given the biases identified in 1.5, the current all‑analytical Phase 2B composition introduces several predictable risks:

- **Analytical anchoring:**
    - Because early question sets are produced by analytic and evaluative personas, later ideation phases will be anchored on diagnostic, risk, and feasibility territory rather than appreciative, visionary, or user‑narrative spaces.[^9][^11][^2][^7]
- **Deficit and problem‑frame bias:**
    - Devil’s Advocate and Analyst are naturally drawn to what might fail or what’s wrong; without an explicit Appreciative Inquiry‑style persona, “best of what is” and “desired future” questions are unlikely to appear in sufficient volume.[^8][^3][^5][^14]
- **Evaluation‑premature bias:**
    - The heavy presence of evaluative questioners in Phase 2B may lead to early filtering of what is considered “worth asking about,” constraining the territory that later generative personas can explore, even though they operate in separate phases.[^4][^11][^2][^7][^9]
- **Cognitive style homogeneity:**
    - With all five core Phase 2B personas classified as analytical, there is systematic under‑representation of emotional, provocative, visionary, and systemic question framings, leading to correlated blind spots in the downstream brainstorming territory.[^11][^2][^3][^5][^7][^9]

Given the architecture constraint (isolated subagents that do not converse), this bias cannot be corrected by real‑time social facilitation; it must be corrected structurally through persona selection and prompt design.

### 3.4 Alternative Compositions

Below are alternative sets designed to broaden coverage while respecting the isolated‑subagent architecture. Each assumes the same total number of personas but changes which cognitive roles contribute questions.

#### Alternative 3‑persona sets

1. **Balanced Triad A (Analytic + Human‑Centered + Generative):**
    - First Principles Thinker, Audience Advocate, Provocateur
    - Gains:
        - Maintains deep analytical deconstruction via First Principles, preserves user‑centered empathy via Audience Advocate, and adds a strong lateral/generative engine via Provocateur.
        - Question set likely to include structural “why,” user HMWs, and provocative “what if” directions.
    - Trade‑off vs. current:
        - Drops Devil’s Advocate and pure Analyst; risk and evidence are still partially covered by First Principles but less dominant.
2. **Balanced Triad B (Systems + Appreciative/Story + Evaluative):**
    - Systems Thinker, Storyteller, Devil’s Advocate
    - Gains:
        - Ensures systemic implication questions, narrative/emotional grounding, and rigorous challenge coexist in the question portfolio.
        - The resulting territory will include feedback loops, lived journeys, and risk/mitigation frames.
    - Trade‑off:
        - Less fine‑grained assumption and evidence probing than with Analyst/Questioner; more focus on patterns and narratives.

#### Alternative 5‑persona sets

1. **Expanded Set A (current 5 rebalanced with generative and systems):**
    - Questioner, Audience Advocate, Devil’s Advocate, Visionary, Systems Thinker
    - Gains:
        - Retains deep probing and risk via Questioner + Devil’s Advocate; adds Visionary for aspirational futures and Systems Thinker for structural implications; Audience Advocate keeps user lens strong.
        - Better alignment with AI Dream (Visionary) and systems‑thinking frameworks.
    - Trade‑off:
        - Drops pure Analyst and First Principles; analytic depth remains, but some fine‑grained decomposition is lost in favor of breadth.
2. **Expanded Set B (Generative + Analytic mix):**
    - First Principles Thinker, Audience Advocate, Provocateur, Constraint Flipper, Synthesizer
    - Gains:
        - Strong generative and reframing power (Provocateur, Constraint Flipper), deep structural analysis (First Principles), user empathy (Audience Advocate), and explicit meta‑coverage and clustering (Synthesizer).
        - Synthesizer can be prompted to identify overused lenses and missing frames in the question set, partially correcting bias at the file level.
    - Trade‑off:
        - Less direct risk‑and‑feasibility emphasis; this can be handled downstream in Phase 3 by Devil’s Advocate, Pragmatist, Technical Expert.
3. **Expanded Set C (Appreciative‑inspired blend):**
    - Empath, Storyteller, Visionary, Analyst, Devil’s Advocate
    - Gains:
        - Empath/Storyteller/Visionary approximate AI Discovery/Dream by asking about positive experiences, desired futures, and emotionally resonant scenarios; Analyst and Devil’s Advocate ensure rigor and risk coverage.
    - Trade‑off:
        - Less systemic lens; Systems Thinker would still be needed in Phase 3 or via synthesis.

#### Alternative 9‑persona “max coverage” set

A 9‑persona set could be used for “high intensity” topics to maximize question diversity:

- First Principles Thinker, Analyst, Devil’s Advocate, Audience Advocate, Empath, Storyteller, Systems Thinker, Provocateur, Visionary

This configuration deliberately covers:

- Analytic rigor (First Principles, Analyst, Devil’s Advocate)
- Human‑centered and emotional lenses (Audience Advocate, Empath, Storyteller)
- Systems and implications (Systems Thinker)
- Generative provocation and aspirational futures (Provocateur, Visionary)

Such a set produces a broad portfolio of divergent and convergent, appreciative and critical, emotional and structural question frames, which is particularly valuable given the lack of real‑time group balancing.

***

## 4. Actionable Implications

### 4.1 For Phase 2B Persona Selection

Given the evidence on divergent vs convergent balance and framing bias, Phase 2B should not remain purely fixed and all‑analytical for all topics.[^2][^3][^4][^5][^7][^8][^9][^14][^11]

Implications:

- **Introduce topic‑aware selection with structural safeguards:**
    - For most topics, ensure Phase 2B always includes at least one strongly generative persona (Provocateur, Visionary, Constraint Flipper, Analogist) and at least one human‑centered/affective persona (Audience Advocate, Empath, Storyteller), alongside at least one analytic/evaluative persona (Devil’s Advocate, First Principles, Analyst).
- **Guarantee frameworks coverage:**
    - For critical, complex topics, consider a 5‑ or 9‑persona question generation mode that explicitly maps to: AI Discovery/Dream, CPS problem‑finding and solution‑finding, Design Thinking HMW, Lateral Thinking provocation, and Systems Thinking implications.
- **Prefer *families* over monoliths:**
    - Rather than “all analytical,” define small family templates (Analytic‑Human‑Generative; Analytic‑Systems‑Appreciative; etc.) and pick within each family based on topic (e.g., Visionary vs Futurist depending on time‑horizon relevance).

These changes mitigate cognitive style homogeneity and reduce anchoring on analytical frames alone.

### 4.2 For Question Synthesis (Phase 2B.2)

Because personas are isolated and cannot negotiate framing, the synthesis step becomes the only place where the *portfolio* of question types can be balanced.

Implications for the synthesizer (which could be the Synthesizer persona or the orchestration logic):

- **Act as Blue Hat/meta‑facilitator at the file level:**
    - Explicitly tag input questions by taxonomy category (clarification, appreciative, evaluative risk, systems, emotional, etc.) and ensure the unified cluster set includes a healthy representation of divergent/generative and convergent/evaluative types.[^6][^1][^3][^5][^7][^8][^14][^11][^2]
- **Detect and compensate for skew:**
    - If analytical/evaluative frames dominate (as in the current Phase 2B set), the synthesizer can either (a) promote the few generative/emotional/systemic questions it *does* see to cluster anchors, or (b) be explicitly allowed to *add* bridging questions that fill obvious gaps (e.g., one AI‑style Discovery question per major cluster).
- **Preserve multi‑lens clusters:**
    - Wherever possible, clusters should include at least one user‑centered, one systems/implication, and one evaluative question, so that downstream personas brainstorm within richer frames rather than in fragmented silos.

In other words, synthesis should be framed as a meta‑question‑design task, not merely deduplication.

### 4.3 For Prompt Design

Finally, persona prompts for Phase 2B question generation should explicitly encode the frameworks and quality dimensions above.

Concrete prompt‑level implications:

- **Explicitly signal mode balance to each persona:**
    - Analytical personas should be asked to generate *some* generative questions (e.g., “include at least X ‘How might we’ or ‘What if’ questions alongside your evaluative probes”), preventing purely diagnostic output.
- **Framework‑aligned instructions:**
    - Visionary, Empath, Storyteller, Audience Advocate can be instructed to follow AI‑style Discovery and Dream moves (“Ask about best past experiences, then about ideal futures, then about design features that would make them real”).[^3][^5][^8][^14]
    - Provocateur and Constraint Flipper prompts can reference Lateral Thinking and CPS challenge techniques (“Ask at least N deliberately absurd or inverted questions that challenge default assumptions”).[^4][^7][^9][^11][^2]
- **Depth and lens quotas:**
    - Prompts can require a mix of surface and deep questions (e.g., at least a third must be why/how/what‑if) and encourage coverage of different lenses (user feelings, system effects, risks, strengths), making each isolated subagent self‑diversifying.
- **Meta‑reflection hooks:**
    - Questioner and Synthesizer prompts can explicitly ask for meta‑questions about missing frames (“Include 2–3 questions that ask what else we haven’t considered or what a better question might be”), importing Socratic meta‑question practice into the pipeline.[^10][^1]

With these adjustments, even under the constraint of isolated subagents, Phase 2B can produce a more balanced, diverse, and high‑quality question set that better supports downstream multi‑persona brainstorming.
<span style="display:none">[^15][^16]</span>

<div align="center">⁂</div>

[^1]: https://www.drpaulmccarthy.com/post/how-to-use-socratic-questioning-a-step-by-step-guide-for-beginners

[^2]: https://cleverism.com/idea-generation-divergent-vs-convergent-thinking/

[^3]: https://www.bonn-institute.org/en/news/psychology-in-journalism-6

[^4]: https://lauramiralda.weebly.com/divergent-and-convergent-tools.html

[^5]: https://professionals.wrha.mb.ca/old/professionals/collaborativecare/files/AppreciativeInquiry2013.pdf

[^6]: https://uswvarious1.blob.core.windows.net/uswvarious-prod-uploads/documents/ROPS_Think_Critical_LA.pdf

[^7]: https://maestrolearning.com/blogs/convergent-vs-divergent-thinking/

[^8]: https://umbrex.com/resources/change-management-frameworks/what-is-4d-model-of-appreciative-inquiry/

[^9]: https://www.tempo.io/blog/convergent-vs-divergent

[^10]: https://usaward.org/wp-content/uploads/2020/08/Socratic-Questioning-Techniques.pdf

[^11]: https://asana.com/resources/convergent-vs-divergent

[^12]: https://www.supanote.ai/blog/socratic-questions

[^13]: https://www.blueprint.ai/blog/a-therapists-guide-to-socratic-questioning-with-examples

[^14]: https://positivepsychology.com/appreciative-inquiry-questions/

[^15]: 2026-02-18_question-generation-research-external-research-background.md

[^16]: https://www.thecoachingtoolscompany.com/4-ds-appreciative-inquiry-model-process-for-change-by-julia-menard/

