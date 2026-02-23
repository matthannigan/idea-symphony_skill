# **Idea Symphony Persona Gap Analysis**

## **1\. Executive Summary and Architectural Context**

The "Idea Symphony" initiative represents a paradigm shift in automated cognition, moving from monolithic Large Language Model (LLM) querying to a distributed, multi-agent architecture. By structuring the system as a panel of fifteen isolated subagents, the project aims to replicate the diversity of a high-functioning human "think tank" while mitigating the social and cognitive biases—such as groupthink, production blocking, and social loafing—that frequently plague synchronous human brainstorming. The core constraint of this system is the isolation of its agents; unlike a chatroom where participants influence one another in real-time, Idea Symphony’s agents operate in parallel hermetic environments. This architectural decision necessitates a rigorous, framework-first approach to persona design. If agents cannot correct or inspire one another dynamically, their initial definitions must be sufficiently distinct and exhaustive to cover the entire topology of the problem space.

This research report evaluates the theoretical foundations required to construct such a comprehensive panel. We have audited the proposed persona architecture against the most robust frameworks in cognitive science, organizational behavior, and innovation theory. Our analysis encompasses Edward de Bono’s **Six Thinking Hats** and **Lateral Thinking**, the algorithmic rigor of **TRIZ** and **SCAMPER**, the empathetic cycles of **Design Thinking** and **Creative Problem Solving (CPS)**, and the structural role definitions of **Belbin** and **Disney’s Three Rooms**. Furthermore, we have extended the audit to include critical "missing links" in traditional brainstorming: **Systems Thinking Archetypes**, **Subtractive Thinking**, and **Stakeholder Theory**.

The findings indicate that while standard persona sets successfully cover divergent (creative) and convergent (critical) thinking, they frequently suffer from significant blind spots regarding regulatory constraints, systemic feedback loops, and subtractive optimization. Standard brainstorming tends to be additive and optimistic, often neglecting the "Regulator," "Subtractor," and "Legacy Defender" perspectives that are crucial for viable innovation in complex environments. This report provides a detailed mapping of these gaps and proposes a validated 15-persona architecture designed to maximize cognitive diversity and strategic depth within the isolated-agent constraint.

## ---

**2\. Cognitive Framework Analysis: The Mechanics of Thought**

To engineer an effective brainstorming engine, one must first deconstruct the mechanics of human innovation. We do not view "creativity" as a singular talent but as a composite of distinct cognitive processes—generative, evaluative, emotional, and structural. By mapping these processes to established frameworks, we can ensure that the Idea Symphony agents are not merely "different characters" but functional operators of distinct cognitive algorithms.

### **2.1. Parallel Thinking and the De Bono Frameworks**

Dr. Edward de Bono’s contributions to cognitive structuring are foundational to this project. His primary insight was that the human brain naturally seeks to recognize patterns and match them to past experiences, a process that is efficient for survival but antithetical to innovation.1 Innovation requires "Lateral Thinking"—cutting across established patterns to create new neural pathways.

#### **2.1.1. The Six Thinking Hats: Modularizing Cognition**

The **Six Thinking Hats** methodology is uniquely suited to an isolated agent architecture. De Bono designed the system to replace adversarial argumentation with "Parallel Thinking," where all participants look in the same direction at the same time.3 In a human meeting, this prevents the "confusion" that arises when logic, emotion, and creativity crowd the thinker simultaneously.5 For Idea Symphony, this framework validates the decision to isolate agents. By assigning a single "Hat" to an agent, we enforce a purity of processing that is difficult for humans to maintain.

| Hat Color | Cognitive Mode | Agent Function in Idea Symphony |
| :---- | :---- | :---- |
| **White Hat** | **The Analyst** | Focuses purely on data, facts, and known information.1 This agent acts as a filter, stripping away adjectives, opinions, and predictions to output only verifiable constraints and historical baselines. Its isolation prevents "facts" from being colored by the optimism of the Yellow Hat or the fear of the Black Hat. |
| **Red Hat** | **The Intuitive** | Deals with emotions, feelings, and intuition without the need for logic or justification.4 An LLM cannot "feel," but a Red Hat agent simulates the *emotional reception* of an idea, predicting gut reactions and sentiment from various user demographics. |
| **Black Hat** | **The Skeptic** | The survival instinct. It identifies risks, faults, and dangers.3 In isolated brainstorming, the Black Hat is crucial because it generates a "Risk Registry" rather than killing ideas in real-time. It provides the necessary counterweight to the Yellow Hat. |
| **Yellow Hat** | **The Optimist** | Focuses on benefits, value, and feasibility.6 It is purely constructive. An isolated Yellow Hat agent generates "Best Case Scenarios" and "Value Propositions," ensuring that even fragile ideas are given a theoretical path to success before being critiqued. |
| **Green Hat** | **The Creator** | The engine of creativity, alternatives, and new concepts.5 This agent uses lateral thinking techniques to escape standard patterns and generate volume. |
| **Blue Hat** | **The Orchestrator** | Controls the process.4 In Idea Symphony, this is the Meta-Agent that synthesizes the outputs of the isolated subagents, defines the problem, and aggregates results. |

**Critical Insight for Isolation**: The separation of the **Black Hat** (Logical Negative) and **Red Hat** (Emotional Negative) is vital. A common failure mode in AI systems is conflating "this will not work" (Technical Feasibility) with "people will hate this" (Desirability). By enforcing this separation across two distinct agents, Idea Symphony ensures that a technically viable but unpopular idea is identified as such, rather than being discarded as "bad" without nuance.

#### **2.1.2. Lateral Thinking Techniques: Algorithmic Disruption**

Beyond the Hats, De Bono’s **Lateral Thinking** provides specific algorithmic methods for innovation that must be encoded into the agent prompts to prevent them from reverting to statistical averages (the default behavior of LLMs).

* **Provocation (Po) and Movement**: This technique involves making deliberately "stupid," illogical, or impossible statements (e.g., "Houses should not have roofs") to force the cognitive system to find a bridge to a new logical solution.7 An isolated "Provocateur" agent should be tasked with generating random, illogical constraints to force the system out of local optima.  
* **Random Entry**: Using a random word, image, or sound to spark new connections.8 An agent can be programmed to inject stochastic noise or unrelated concepts (e.g., "How would we solve this using *mycology*?") to simulate this lateral jump. This prevents the "predictable path" problem inherent in predictive text models.  
* **Concept Extraction**: Moving from a specific idea back to the underlying concept to breed new ideas.10 This requires an agent capable of abstraction—ignoring the *implementation* of an idea to focus on its *mechanism of action*.

### **2.2. Algorithmic Innovation: SCAMPER and TRIZ**

While De Bono focuses on psychological states, **SCAMPER** and **TRIZ** offer procedural and structural algorithms for innovation. These frameworks are particularly high-yield for LLM agents, which excel at following structured instruction sets.

#### **2.2.1. SCAMPER: The Checklist of Modification**

SCAMPER forces specific modifications to an existing idea, ensuring that no dimension of the problem space is left unexplored.11

* **Substitute**: "What can be replaced?" (Materials, rules, people).13 An agent focused on *Substitution* challenges the fundamental substrates of a problem (e.g., "Substitute the human driver with software").  
* **Combine**: "What can be merged?".14 This agent looks for synergies, merging distinct services or product lines.  
* **Adapt**: "What else is like this?".13 This acts as a *Biomimicry* or *Analogy* agent, looking for parallel solutions in other industries.  
* **Modify/Magnify/Minify**: Changing scale or attributes.12 This agent pushes parameters to extremes (e.g., "What if the product was 100x smaller?").  
* **Put to Another Use**: Radical repurposing.12 This agent ignores intended design and looks for edge-case utility (e.g., "Use the waste heat for energy").  
* **Eliminate**: Removing elements.12 This is closely related to *Subtractive Thinking* (discussed in Section 5.2).  
* **Reverse/Rearrange**: Flipping the process.11 An agent here looks at the problem backward (e.g., "Instead of delivering food to people, bring people to the food").

**Integration Insight**: A single "SCAMPER Agent" is likely too broad and may dilute the distinctiveness of the output. It is strategically superior to deconstruct SCAMPER into three specialized agents: a **"Remixer"** (Combine/Adapt), a **"Minimizer"** (Eliminate/Minify), and a **"Radical"** (Reverse/Substitute/Put to Another Use). This ensures that the "Minimizer" is strictly focused on reduction, preventing the additive bias from creeping in.

#### **2.2.2. TRIZ: The Theory of Inventive Problem Solving**

TRIZ, developed by Genrich Altshuller, is distinct from psychological brainstorming. It is based on the analysis of thousands of patents and assumes that problems are not unique; they are recurring contradictions that have been solved in other fields.15

* **The 40 Inventive Principles**: TRIZ offers specific "physics-based" solutions such as *Segmentation*, *Inversion*, *Feedback*, *Spheroidality*, and *Porous Materials*.15  
* **Contradiction Matrix**: TRIZ focuses on resolving contradictions (e.g., "The product must be strong but light") without compromise.18

**Agent Implementation**: A **"TRIZ Engineer"** persona is essential for the Idea Symphony panel. Unlike the creative "Green Hat," which relies on imagination, the TRIZ agent applies a rigorous logic of contradiction resolution. If a problem involves a trade-off between speed and accuracy, the TRIZ agent looks for principles like *Prior Action* or *Local Quality*.17 This adds a layer of *scientific rigor* and *engineering first-principles* to the panel that is often absent in purely creative brainstorming.

### **2.3. Human-Centric and Iterative Models: Design Thinking and CPS**

Innovation must eventually serve human needs. **Design Thinking** and **Creative Problem Solving (CPS)** shift the focus from the "idea" to the "user" and the "process."

#### **2.3.1. Design Thinking: Empathy as an Algorithm**

Design Thinking is a non-linear process rooted in empathy.19 For isolated agents, we must instantiate the *phases* of Design Thinking as *personas*.

* **Empathize (The Ethnographer)**: This agent focuses solely on the user’s emotional state, pain points, and unarticulated needs.20 It generates "Empathy Maps" and "User Journeys," asking "What does the user *feel*?" rather than "What do they *need*?"  
* **Define (The Framer)**: Synthesizes research into a clear problem statement.19 This agent prevents "solutionism" by ensuring the problem is framed correctly before solutions are generated.  
* **Ideate (The Brainstormer)**: Generates volume. This overlaps with the Green Hat but is strictly focused on user-centric solutions.  
* **Prototype (The Maker)**: In a text-based system, this agent describes the *Minimum Viable Product (MVP)* or simulates the user interface description.19  
* **Test (The Validator)**: Simulates user feedback. This overlaps with the Red Hat but focuses on *usability* and *functionality* (e.g., "Is the button too small?") rather than just raw emotion.

#### **2.3.2. The Three Lenses of Innovation**

IDEO’s model requires balancing three lenses: **Desirability**, **Feasibility**, and **Viability**.19

* **Desirability (Human)**: Does anyone want this? (The Ethnographer).  
* **Feasibility (Technical)**: Can we build this? (The Engineer).  
* **Viability (Business)**: Should we build this? (The Strategist).

**Gap Analysis**: Many brainstorming sessions generate "cool" ideas (Desirable) that are impossible (Not Feasible) or money-losers (Not Viable). The Idea Symphony must include specific **"Technologist"** and **"Strategist"** agents to cover Feasibility and Viability explicitly, as these perspectives are often drowned out by the "Dreamer" in the early stages.

#### **2.3.3. Creative Problem Solving (CPS): Divergence and Convergence**

The CPS model emphasizes the rhythmic alternation between **Divergent** (creating options) and **Convergent** (selecting options) thinking.22

* **Clarify**: Problem Owner / Fact Finder.  
* **Ideate**: Idea Generator.  
* **Develop**: Solution Refiner.  
* **Implement**: Action Planner.

**Key Insight**: The CPS model highlights the role of the **"Facilitator"** (Blue Hat) who manages the expansion and contraction of ideas.24 In an isolated agent system, specific agents must be designated as "Divergers" (generating options) and others as "Convergers" (selecting options). If a single agent tries to do both, the output becomes muddy and self-censored. The "Dreamer" must only diverge; the "Critic" must only converge.

## ---

**3\. Organizational and Psychological Models**

While the previous frameworks focus on *how to think*, frameworks like **Belbin Team Roles** and **Disney’s Three Rooms** focus on *who is thinking* and *where they are thinking*. These models provide the structural scaffolding for the persona set.

### **3.1. Disney’s Three Rooms: Spatializing Cognition**

Walt Disney famously used three distinct physical rooms to separate thinking stages, preventing the "Critic" from killing the "Dreamer" too early.25 This framework is the strongest theoretical justification for the **isolated subagent** constraint of Idea Symphony.

1. **The Dreamer**: "What if?" Infinite resources, no boundaries. This is distinct from the Green Hat (which solves problems); the Dreamer *fantasizes* and creates "Blue Sky" concepts without regard for physics or budget.25  
2. **The Realist**: "How?" Focuses on action plans, logistics, and construction. The Realist assumes the dream is possible and tries to build it.27  
3. **The Critic**: "Why not?" Scrutinizes for weakness, risks, and flaws.28

**Relevance to Isolation**: In a unified model, the Critic often interrupts the Dreamer. By isolating the agents, we ensure that the Dreamer generates a pure, unadulterated vision. The Realist then processes this vision to make it feasible, and only *then* does the Critic see it. This implies a **sequential workflow** for these specific agents within the broader parallel system.

### **3.2. Belbin Team Roles: Functional Personalities**

Dr. Meredith Belbin identified nine clusters of behavior needed for a high-performing team.29 These roles map well to AI agents because they describe *functional contributions* rather than just personalities.

* **Action Oriented**:  
  * **Shaper**: Dynamic, challenges the status quo, overcomes obstacles.31 (The "Driver").  
  * **Implementer**: Turns ideas into practical actions and plans.29 (The "Planner").  
  * **Completer Finisher**: Polishes, checks for errors, seeks perfection.31 (The "Quality Control").  
* **People Oriented**:  
  * **Co-ordinator**: Clarifies goals, delegates.30 (The "Manager").  
  * **Teamworker**: Perceptive, diplomatic, averts friction.29 (The "Diplomat").  
  * **Resource Investigator**: Explores opportunities, negotiates with the outside world.31 (The "Scout").  
* **Cerebral Oriented**:  
  * **Plant**: Creative, imaginative, solves difficult problems.30 (The "Idea Generator").  
  * **Monitor Evaluator**: Sober, strategic, judges accurately.29 (The "Judge").  
  * **Specialist**: Provides rare knowledge and skills.29 (The "Subject Matter Expert").

**Gap Analysis**: Most brainstorming focuses heavily on the **Plant** (Ideas) and **Monitor Evaluator** (Critique). The **Resource Investigator** (looking at external markets/competitors) and **Completer Finisher** (looking at details/errors) are often missing. A **"Resource Scout"** agent that simulates "Googling" or looking at market trends is vital to prevent the system from inventing solutions that already exist or ignoring market realities.

## ---

**4\. Advanced Cognitive Audits: The Missing Links**

The frameworks analyzed above form the "canon" of brainstorming. However, modern complexity requires additional perspectives that these legacy models often overlook. Specifically, we must integrate **Systems Thinking**, **Subtractive Thinking**, and **Stakeholder Theory** to ensure the Idea Symphony engine is truly exhaustive.

### **4.1. Systems Thinking: Seeing the Loop**

Standard brainstorming is linear (Problem \-\> Solution). Systems thinking is circular (Problem \-\> Solution \-\> Consequence \-\> Feedback).32

* **The Systems Mapper**: Looks for *reinforcing loops* (growth) and *balancing loops* (stagnation). This agent asks, "If we solve this problem, what new problem do we create?".34  
* **The Archetype Hunter**: Identifies common failure patterns like "Fixes that Fail" (a short-term fix creates a long-term problem) or "Shifting the Burden" (dependency on a symptomatic solution).35

**Application**: A **"Systems Architect"** agent is critical. If the "Green Hat" suggests "Free shipping for everyone," the "Systems Architect" warns about the supply chain collapse loops or the environmental impact. This perspective prevents the panel from generating solutions that are locally optimal but globally disastrous.

### **4.2. Subtractive Thinking: The Bias Against "Less"**

Research published in *Nature* indicates that humans overwhelmingly default to *additive* solutions (adding features, rules, or steps) and overlook *subtractive* solutions (removing barriers, simplifying, or deleting).36 This "additive bias" means that even a diverse panel of 15 agents might all suggest *adding* things.

* **The Subtractor**: This agent must be explicitly prompted to remove elements. Its core question is, "What can we take away?" or "What should we stop doing?".38

**Critical Gap**: This is almost always missing in standard brainstorming. A dedicated **"Minimalist"** agent is required to counter the additive bias of the other 14 agents. Without this, the Idea Symphony will inevitably produce complex, feature-bloated solutions.

### **4.3. Stakeholder Perspectives and Archetypes**

Innovation does not happen in a vacuum; it occurs within a web of stakeholders.39

* **The Regulator**: Focuses on compliance, legal risks, and governance.41 Innovation often lives in regulatory grey areas; an agent must identify where the "red lines" are.  
* **The Legacy Defender**: Focuses on protecting existing revenue streams and operational continuity.42 This is the "Incumbent" perspective. While often seen as an enemy of innovation, this perspective is vital for identifying *adoption barriers*.  
* **The Activist**: Focuses on social impact, sustainability, and ethics.44  
* **The Skeptic**: Focuses on why the user will *refuse* to adopt the solution.46

**Gap Analysis**: Brainstorming usually ignores the **Regulator** and the **Legacy Defender** until the end of the process. Including a "Compliance Officer" and "Legacy Defender" persona ensures that ideas are stress-tested against the *status quo* and legal realities early.

## ---

**5\. Mapping and Gap Analysis of the Persona Landscape**

Having deconstructed the necessary frameworks, we can now map the cognitive landscape into four primary functional domains: **Generative (Creativity)**, **Evaluative (Critical)**, **Structural (Process/System)**, and **Social (Stakeholder/User)**. The following table maps the standard brainstorming roles against the robust frameworks to identify where the current "15 personas" likely fall short.

### **5.1. The Framework-to-Archetype Mapping Matrix**

| Framework | Cognitive Role / Archetype | Function in Idea Symphony | Risk of Exclusion |
| :---- | :---- | :---- | :---- |
| **Six Hats** | **White Hat (Analyst)** | Data, constraints, neutrality. | Decisions based on opinion, not fact. |
| **Six Hats** | **Red Hat (Intuitive)** | Emotion, gut reaction, sentiment. | Solutions that are logical but hated. |
| **Six Hats** | **Black Hat (Skeptic)** | Risk, caution, fatal flaws. | Catastrophic failure due to overlooked risks. |
| **Lateral Thinking** | **Provocateur** | Random entry, illogic, disruption. | Stagnation in "local optima" (boring ideas). |
| **SCAMPER** | **Remixer (Combiner)** | Synthesis, adaptation, merging. | Missed synergies between existing assets. |
| **SCAMPER/Subtract** | **Minimalist (Subtractor)** | Elimination, simplification. | Feature bloat, complexity creep. |
| **TRIZ** | **Inventor (Engineer)** | Structural problem solving, physics. | Solving problems that physics/logic prohibit. |
| **Design Thinking** | **Ethnographer (User Proxy)** | Empathy, user journey, pain points. | Products that don't solve real human needs. |
| **Disney** | **Dreamer** | Unbounded fantasy, "Blue Sky". | Incrementalism; failure to innovate radically. |
| **Disney/Belbin** | **Realist/Implementer** | Feasibility, logistics, "How-to". | "Vaporware" that cannot be built. |
| **Belbin** | **Resource Investigator** | Market trends, competitor scouting. | Reinventing the wheel; ignoring market reality. |
| **Stakeholder** | **Regulator/Compliance** | Laws, ethics, governance, safety. | Legal lawsuits, regulatory bans. |
| **Stakeholder** | **Legacy Defender** | Status quo, business continuity. | Alienating current customers/cannibalization. |
| **Systems Thinking** | **Systems Architect** | Feedback loops, 2nd order effects. | Unintended consequences (Fixes that Fail). |
| **Blue Hat/CPS** | **Orchestrator** | Synthesis, process control. | Chaotic output, lack of actionable conclusion. |

### **5.2. Analysis of Common Gaps**

Based on the audit, standard "generic" persona sets typically fail in three specific areas:

1. **The Subtractive Gap**: Teams and agents naturally *add*. A generic "Creative" persona will suggest new features. A generic "Critic" will suggest new safety rules. No one suggests *removing* the feature entirely unless explicitly prompted by a **"Minimalist"** persona.36  
2. **The Systemic Gap**: Most agents will look at the problem in isolation. They will miss the *feedback loops*—how the solution affects the broader ecosystem over time.32 A **"Systems Architect"** is required to see the forest, not just the trees.  
3. **The Regulatory Gap**: "Blue Sky" thinking often ignores the law. While the "Black Hat" might catch safety risks, it often misses complex *compliance* or *governance* issues. A **"Regulator"** persona is needed to simulate the constraints of the real world.41

## ---

**6\. Strategic Recommendations: The Optimized 15-Persona Architecture**

To address the gaps identified above and fully leverage the isolated subagent constraint, we propose a restructured 15-persona architecture. This set is balanced across the five functional clusters: **Generators**, **Analyzers**, **Humanizers**, **Pragmatists**, and **Synthesizers**.

### **Cluster 1: The Generators (Divergent Thinking)**

*Focus: Creating volume, variety, and novelty.*

1. **The Dreamer (Disney)**:  
   * **Role**: Unbounded creativity. Explicitly instructed to ignore budget, physics, and current technology.  
   * **Prompt Key**: "Assume infinite resources. What is the magical solution?"  
2. **The Provocateur (Lateral Thinking)**:  
   * **Role**: Disruption. Uses "Random Entry" and "Provocation" techniques to inject illogical or unrelated concepts.  
   * **Prompt Key**: "Here is a random word: \[Cloud\]. How does this solve the problem?"  
3. **The Remixer (SCAMPER \- Combine/Adapt)**:  
   * **Role**: Synthesis. Looks for combinations of existing ideas and adaptations from other industries.  
   * **Prompt Key**: "What would do? What can we combine with this?"  
4. **The Inventor (TRIZ)**:  
   * **Role**: Structural Innovation. Uses the 40 Inventive Principles to solve contradictions.  
   * **Prompt Key**: "Apply the principle of Segmentation and Inversion to this problem."

### **Cluster 2: The Analyzers (Convergent/Logic)**

*Focus: Filtering, refining, and testing.*

5. **The Analyst (White Hat)**:  
   * **Role**: Data purity. Outputs only facts, constraints, and historical data.  
   * **Prompt Key**: "List the known constraints. Do not offer opinions."  
6. **The Skeptic (Black Hat)**:  
   * **Role**: Risk identification. Creates a "Risk Registry" of technical and logical failure modes.  
   * **Prompt Key**: "Identify 5 reasons why this will fail technically."  
7. **The Minimalist (Subtractive Thinking)**:  
   * **Role**: Simplification. Explicitly looks for elements to remove.  
   * **Prompt Key**: "What is the one thing we can remove to improve this? Apply the 'Stop Doing' list."  
8. **The Systems Architect (Systems Thinking)**:  
   * **Role**: Loop mapping. Identifies second-order consequences and feedback loops.  
   * **Prompt Key**: "If this succeeds, what breaks in the wider system? Map the reinforcing loops."

### **Cluster 3: The Humanizers (User/Social)**

*Focus: Emotion, empathy, and society.*

9. **The Ethnographer (Design Thinking)**:  
   * **Role**: Deep empathy. Represents the user's unarticulated needs and emotional journey.  
   * **Prompt Key**: "Write the user's diary entry before and after using this solution."  
10. **The Intuitive (Red Hat)**:  
    * **Role**: Sentiment analysis. Simulates the gut reaction (anger, joy, fear) of the market.  
    * **Prompt Key**: "What is the immediate visceral reaction to this? Use only emotion words."  
11. **The Advocate (Equity/Accessibility)**:  
    * **Role**: Inclusivity. Represents marginalized users and edge cases (the "Non-User").  
    * **Prompt Key**: "How does this exclude people with disabilities or low connectivity?"

### **Cluster 4: The Pragmatists (Execution/Business)**

*Focus: Viability, legality, and implementation.*

12. **The Realist (Disney/Belbin Implementer)**:  
    * **Role**: Logistics. Turns the "Dreamer's" vision into a step-by-step Gantt chart.  
    * **Prompt Key**: "How do we build this? List the first 10 steps."  
13. **The Strategist (Stakeholder/Investor)**:  
    * **Role**: ROI and Business Model. Focuses on viability and competitive advantage.  
    * **Prompt Key**: "How does this make money? What is the moat?"  
14. **The Regulator (Compliance)**:  
    * **Role**: Governance. Checks for GDPR, safety standards, and legal compliance.  
    * **Prompt Key**: "Audit this for legal risks and regulatory non-compliance."

### **Cluster 5: The Synthesizer**

*Focus: Orchestration.*

15. **The Orchestrator (Blue Hat)**:  
    * **Role**: Meta-analysis. It does not generate ideas; it reads the outputs of the other 14, identifies conflicts, synthesizes the best concepts, and produces the final report.  
    * **Prompt Key**: "Synthesize these 14 perspectives into a cohesive strategy. Highlight the conflict between the Dreamer and the Regulator."

## ---

**7\. Conclusion**

The "Idea Symphony" architecture leverages the unique capability of LLMs to act as distinct, isolated cognitive processors. By auditing the system against the diverse frameworks of De Bono, TRIZ, Design Thinking, and Systems Theory, we transform the panel from a generic "brainstorming group" into a sophisticated **Cognitive Engine**.

The inclusion of the **Subtractive (Minimalist)**, **Systemic (Architect)**, and **Regulatory** personas addresses the most common failure modes of human brainstorming: the tendency to add complexity, ignore long-term consequences, and overlook constraints. This optimized 15-persona architecture ensures that every idea is subjected to a rigorous, 360-degree examination—spanning the creative, the logical, the emotional, and the structural—resulting in innovations that are not only novel but robust, viable, and sustainable.

By enforcing the isolation of these agents, the system effectively mechanizes **Parallel Thinking**, allowing contradictory perspectives (e.g., the Dreamer and the Skeptic) to coexist and mature without premature censorship, ultimately yielding a richer and more actionable solution space.

#### **Works cited**

1. Edward de Bono's Six Thinking Hats \- MTD Training, accessed February 15, 2026, [https://www.mtdtraining.com/blog/edward-de-bonos-six-thinking-hats.htm](https://www.mtdtraining.com/blog/edward-de-bonos-six-thinking-hats.htm)  
2. Edward de Bono's Lateral Thinking: Creativity Step by Step \- Shortform, accessed February 15, 2026, [https://www.shortform.com/blog/edward-de-bono-lateral-thinking/](https://www.shortform.com/blog/edward-de-bono-lateral-thinking/)  
3. Six Thinking Hats \- The Decision Lab, accessed February 15, 2026, [https://thedecisionlab.com/reference-guide/organizational-behavior/six-thinking-hats](https://thedecisionlab.com/reference-guide/organizational-behavior/six-thinking-hats)  
4. Six Thinking Hats – De Bono Group, accessed February 15, 2026, [https://www.debonogroup.com/services/core-programs/six-thinking-hats/](https://www.debonogroup.com/services/core-programs/six-thinking-hats/)  
5. The Six Thinking Hats: How to Improve Decision Making, with, accessed February 15, 2026, [https://www.tsw.co.uk/blog/leadership-and-management/six-thinking-hats/](https://www.tsw.co.uk/blog/leadership-and-management/six-thinking-hats/)  
6. Six Thinking Hats \- Problem Solving & Brainstorming Techniques, accessed February 15, 2026, [https://www.groupmap.com/portfolio/six-thinking-hats/](https://www.groupmap.com/portfolio/six-thinking-hats/)  
7. Provocation \- Mycoted, accessed February 15, 2026, [https://www.mycoted.com/Provocation](https://www.mycoted.com/Provocation)  
8. What is Random Input and How Does It Work? \- GBSB Global​, accessed February 15, 2026, [https://www.global-business-school.org/content-type/blog/what-is-random-input-how-does-work/](https://www.global-business-school.org/content-type/blog/what-is-random-input-how-does-work/)  
9. random entry – User Friendly, accessed February 15, 2026, [https://alesandrab.wordpress.com/tag/random-entry/](https://alesandrab.wordpress.com/tag/random-entry/)  
10. Lateral Thinking \- De Bono Group, accessed February 15, 2026, [https://www.debonogroup.com/services/core-programs/lateral-thinking/](https://www.debonogroup.com/services/core-programs/lateral-thinking/)  
11. accessed February 15, 2026, [https://staging.bigbangpartnership.co.uk/scamper/](https://staging.bigbangpartnership.co.uk/scamper/)  
12. The SCAMPER Technique for Creative Problem Solving \- The Big ..., accessed February 15, 2026, [https://bigbangpartnership.co.uk/scamper/](https://bigbangpartnership.co.uk/scamper/)  
13. The SCAMPER Technique \- ADB.org, accessed February 15, 2026, [https://www.adb.org/sites/default/files/publication/27643/scamper-technique.pdf](https://www.adb.org/sites/default/files/publication/27643/scamper-technique.pdf)  
14. SCAMPER Brainstorming Activity Instructions \- ACF, accessed February 15, 2026, [https://acf.gov/sites/default/files/documents/ocs/TTA\_CSBG\_PITAS%20SCAMPER%20Activity.pdf](https://acf.gov/sites/default/files/documents/ocs/TTA_CSBG_PITAS%20SCAMPER%20Activity.pdf)  
15. 40 Principles – Home \- triz.org, accessed February 15, 2026, [https://triz.org/principles/](https://triz.org/principles/)  
16. 40 Inventive Principles With Examples, accessed February 15, 2026, [http://www.eng.uwaterloo.ca/\~jzelek/teaching/syde361/TRIZ40.pdf](http://www.eng.uwaterloo.ca/~jzelek/teaching/syde361/TRIZ40.pdf)  
17. Guide to the 40 TRIZ Principles (Table Format) \- Quality Gurus, accessed February 15, 2026, [https://www.qualitygurus.com/guide-to-the-40-triz-principles-table-format/](https://www.qualitygurus.com/guide-to-the-40-triz-principles-table-format/)  
18. 40 Inventive Principles with Examples for Human Factors and, accessed February 15, 2026, [http://aitriz.org/documents/TRIZCON/Proceedings/Hipple-Caplan-and-Tschirhart-40-Inventive-Principles-with-Examples.pdf](http://aitriz.org/documents/TRIZCON/Proceedings/Hipple-Caplan-and-Tschirhart-40-Inventive-Principles-with-Examples.pdf)  
19. What is Design Thinking & Why Is It Beneficial? – IDEO U, accessed February 15, 2026, [https://www.ideou.com/blogs/inspiration/what-is-design-thinking](https://www.ideou.com/blogs/inspiration/what-is-design-thinking)  
20. The 5 Phases of Design Thinking \- American Marketing Association, accessed February 15, 2026, [https://www.ama.org/marketing-news/the-5-phases-of-design-thinking-2/](https://www.ama.org/marketing-news/the-5-phases-of-design-thinking-2/)  
21. The Complete Design Thinking Process \[2025 Guide\] | Konrad®, accessed February 15, 2026, [https://www.konrad.com/research/design-thinking-process](https://www.konrad.com/research/design-thinking-process)  
22. Creative Problem Solving \- Berkeley Research Development Office, accessed February 15, 2026, [https://brdo.berkeley.edu/sites/default/files/cps\_handbook.pdf](https://brdo.berkeley.edu/sites/default/files/cps_handbook.pdf)  
23. What is creative problem solving and how to apply it \- Tech4Future, accessed February 15, 2026, [https://tech4future.info/en/creative-problem-solving/](https://tech4future.info/en/creative-problem-solving/)  
24. What is CPS? | Creative Education Foundation, accessed February 15, 2026, [https://www.creativeeducationfoundation.org/what-is-cps/](https://www.creativeeducationfoundation.org/what-is-cps/)  
25. Disney Brainstorming Method: Dreamer, Realist, and Spoiler, accessed February 15, 2026, [https://idea-sandbox.com/blog/disney-brainstorming-method-dreamer-realist-and-spoiler/](https://idea-sandbox.com/blog/disney-brainstorming-method-dreamer-realist-and-spoiler/)  
26. Three Walt's and Three Rooms \- Reflections on Walt Disney, accessed February 15, 2026, [http://reflectionsonwalt.blogspot.com/2014/05/walts-3-minds-and-3-rooms.html](http://reflectionsonwalt.blogspot.com/2014/05/walts-3-minds-and-3-rooms.html)  
27. The Walt Disney Method of Brainstorming: the basics \- Toolshero, accessed February 15, 2026, [https://www.toolshero.com/creativity/walt-disney-method/](https://www.toolshero.com/creativity/walt-disney-method/)  
28. Creative Thinking: Disney's Creative Strategy \- Visual Paradigm, accessed February 15, 2026, [https://online.visual-paradigm.com/knowledge/disney-creative-strategy/what-is-disney-creative-strategy/](https://online.visual-paradigm.com/knowledge/disney-creative-strategy/what-is-disney-creative-strategy/)  
29. Belbin Team Role Descriptions, accessed February 15, 2026, [https://www.belbin.com/media/bafj1cg3/belbin-team-role-descriptions-2022.pdf](https://www.belbin.com/media/bafj1cg3/belbin-team-role-descriptions-2022.pdf)  
30. The Nine Belbin Team Roles, accessed February 15, 2026, [https://www.belbin.com/about/belbin-team-roles](https://www.belbin.com/about/belbin-team-roles)  
31. The 9 Belbin Team Roles, explained | Models for managers, accessed February 15, 2026, [https://www.bitesizelearning.co.uk/resources/belbin-team-roles-explained](https://www.bitesizelearning.co.uk/resources/belbin-team-roles-explained)  
32. Systems Archetypes I, accessed February 15, 2026, [https://thesystemsthinker.com/wp-content/uploads/2016/03/Systems-Archetypes-I-TRSA01\_pk.pdf](https://thesystemsthinker.com/wp-content/uploads/2016/03/Systems-Archetypes-I-TRSA01_pk.pdf)  
33. Systems Thinking: A Holistic Approach to Complex Problem-Solving, accessed February 15, 2026, [https://ozanpasa.medium.com/systems-thinking-a-holistic-approach-to-complex-problem-solving-1ab4d1e4b407](https://ozanpasa.medium.com/systems-thinking-a-holistic-approach-to-complex-problem-solving-1ab4d1e4b407)  
34. Eight System Archetypes \- Behavior in Organization | UNBOUND, accessed February 15, 2026, [https://www.saybrook.edu/unbound/systems-archetypes/](https://www.saybrook.edu/unbound/systems-archetypes/)  
35. Systems Thinking: Approaches & Archetypes \- Lesson \- Study.com, accessed February 15, 2026, [https://study.com/academy/lesson/systems-thinking-approaches-archetypes.html](https://study.com/academy/lesson/systems-thinking-approaches-archetypes.html)  
36. 4 Ways to Use Subtraction That Could Make Life Better \- UVA Today, accessed February 15, 2026, [https://news.virginia.edu/content/4-ways-use-subtraction-could-make-life-better](https://news.virginia.edu/content/4-ways-use-subtraction-could-make-life-better)  
37. Subtract: Why Getting to Less Can Mean Thinking More, accessed February 15, 2026, [https://behavioralscientist.org/subtract-why-getting-to-less-can-mean-thinking-more/](https://behavioralscientist.org/subtract-why-getting-to-less-can-mean-thinking-more/)  
38. Thinking Subtractively \- Simple Thread, accessed February 15, 2026, [https://www.simplethread.com/thinking-subtractively/](https://www.simplethread.com/thinking-subtractively/)  
39. Understanding the Stakeholder Model of Corporate Governance, accessed February 15, 2026, [https://signalx.ai/stakeholder-model-of-corporate-governance/](https://signalx.ai/stakeholder-model-of-corporate-governance/)  
40. Stakeholder model of corporate governance \- Diligent, accessed February 15, 2026, [https://www.diligent.com/resources/blog/stakeholder-model-corporate-governance](https://www.diligent.com/resources/blog/stakeholder-model-corporate-governance)  
41. Regulatory Compliance Simplified: A Comprehensive Guide \- Wallarm, accessed February 15, 2026, [https://www.wallarm.com/what/regulatory-compliance](https://www.wallarm.com/what/regulatory-compliance)  
42. Platform Thinking in Incumbent Firms: From Concept to Capability, accessed February 15, 2026, [https://scholarspace.manoa.hawaii.edu/bitstreams/18f051a1-ae97-4510-8211-6c22b0ac6111/download](https://scholarspace.manoa.hawaii.edu/bitstreams/18f051a1-ae97-4510-8211-6c22b0ac6111/download)  
43. Incumbents' capabilities to win in a digitised world, accessed February 15, 2026, [https://westminsterresearch.westminster.ac.uk/download/900397601d79e3021882dda3e52190717d1a955af84ffeeb48975ae8ea8053c2/263608/REVISED-digital%20strategies%20to%20win-journal%20article-22Feb21.pdf](https://westminsterresearch.westminster.ac.uk/download/900397601d79e3021882dda3e52190717d1a955af84ffeeb48975ae8ea8053c2/263608/REVISED-digital%20strategies%20to%20win-journal%20article-22Feb21.pdf)  
44. Driving Corporate Growth Through Social Impact: Four Archetypes, accessed February 15, 2026, [https://www.deloitte.com/us/en/services/consulting/articles/driving-corporate-growth-through-social-impact.html](https://www.deloitte.com/us/en/services/consulting/articles/driving-corporate-growth-through-social-impact.html)  
45. Understand the Social Needs for Accessibility in UX Design | IxDF, accessed February 15, 2026, [https://www.interaction-design.org/literature/article/understand-the-social-needs-for-accessibility-in-ux-design](https://www.interaction-design.org/literature/article/understand-the-social-needs-for-accessibility-in-ux-design)  
46. 3 Types of stakeholders in UX research: Managing expectations and, accessed February 15, 2026, [https://uxinsight.org/3-types-of-stakeholders-in-ux-research-managing-expectations-and-gaining-trust/](https://uxinsight.org/3-types-of-stakeholders-in-ux-research-managing-expectations-and-gaining-trust/)