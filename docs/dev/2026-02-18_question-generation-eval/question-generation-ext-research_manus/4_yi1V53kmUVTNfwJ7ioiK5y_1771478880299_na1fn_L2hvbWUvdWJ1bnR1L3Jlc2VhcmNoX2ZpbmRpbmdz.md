# Bias in Question Generation for Brainstorming and Facilitated Dialogue

## Introduction

This document explores the systematic biases that can be introduced into brainstorming and facilitated dialogue through the framing of questions. Specifically, it examines anchoring effects, framing bias, and the question-response loop. It also provides evidence-based countermeasures from facilitation practice to mitigate these biases. The insights are particularly relevant for understanding and improving brainstorming systems, including those that use AI-powered subagents.

## 1. Anchoring Effect in Question Generation

The anchoring effect is a cognitive bias where individuals rely too heavily on an initial piece of information (the "anchor") when making subsequent judgments. In the context of brainstorming, the first questions asked can act as powerful anchors, constraining the range and direction of the ideas generated.

### 1.1. How Anchoring Constrains Thinking

Early questions can set a narrow frame of reference, making it difficult for participants to think outside of that frame. For example, if a brainstorming session on improving a product begins with a question about "reducing manufacturing costs," subsequent ideas are likely to focus on cost-saving measures, while potentially more innovative ideas about new features or markets are neglected. This is because the initial question anchors the discussion to a specific aspect of the problem, even if that aspect is not the most critical one to address.

Research by Tversky and Kahneman demonstrated that even arbitrary numerical anchors can significantly influence estimates. In one study, participants were asked to estimate the percentage of African countries in the United Nations after a roulette wheel was spun. The number on the wheel, although random, acted as an anchor, influencing their estimates. [1]

### 1.2. Counteracting Anchoring Effects

Facilitators can employ several techniques to counteract the anchoring effect:

*   **Use Broad Opening Questions:** Start with broad, open-ended questions that do not presuppose a particular direction. For example, instead of asking "How can we make our app more user-friendly?", a facilitator could ask "What are all the ways we can improve the user experience of our app?"
*   **Multiple, Simultaneous Questions:** Presenting multiple questions at once can diffuse the anchoring effect of any single question. This encourages participants to think about the problem from different perspectives.
*   **Silent Brainstorming:** Allowing individuals to generate ideas silently before sharing them with the group can reduce the influence of the first ideas spoken, which can act as anchors for the rest of the group.

## 2. Framing Bias in Question Generation

Framing bias refers to the way in which the presentation of information, including the wording of a question, can influence how people respond. The framing of a question can be either positive or negative, or it can be framed to encourage either analytical or creative thinking.

### 2.1. Analytical vs. Creative Framing

*   **Analytical Framing:** Questions framed analytically tend to suppress creative responses. For example, a question like "What are the logistical challenges of launching a new product in Europe?" encourages a detailed, analytical breakdown of the problem, but it may not inspire creative solutions.
*   **Creative Framing:** Conversely, questions framed creatively can suppress analytical rigor. A question like "If our product were a superhero, what would its superpower be?" can spark imaginative ideas, but it may not lead to practical, actionable solutions.

### 2.2. The Question-Response Loop: Predetermining Answers

The **question-response loop** highlights how the initial type of questions asked can significantly predetermine the nature of the answers generated, thereby shaping the entire brainstorming or dialogue outcome. This creates a self-reinforcing cycle where the framing of questions limits the scope of possible responses.

**Examples:**

*   **"Why" Questions:** A series of "Why did this fail?" questions will primarily elicit explanations, root causes, and justifications, focusing on past problems and potentially leading to a blame-oriented discussion. This framing might suppress forward-looking or innovative solutions.
*   **"How" Questions:** Conversely, questions like "How can we improve this process?" will generate practical steps, methodologies, and actionable solutions, focusing on implementation. While useful, an exclusive focus on "how" might overlook the fundamental "why" or broader strategic considerations.
*   **"What if" Questions:** These questions encourage speculative and creative thinking, such as "What if we had unlimited resources?" or "What if our primary competitor ceased to exist?" They are designed to break free from current constraints and generate novel ideas, but without subsequent analytical framing, these ideas might lack practical grounding.

This loop is particularly critical in systems where subagents operate with isolated context windows, as the initial prompt (question) given to each subagent will heavily influence the output it generates, potentially leading to a narrow range of responses if not carefully managed.

### 2.3. Counteracting Framing Bias

*   **Re-framing:** Facilitators can guide the group to re-frame the problem from different perspectives. This can involve asking the group to consider the problem from the perspective of a customer, a competitor, or even a completely unrelated industry.
*   **Alternating Question Types:** A skilled facilitator will alternate between different types of questions to encourage both analytical and creative thinking. For example, a session might start with a creative framing to generate a wide range of ideas, and then move to a more analytical framing to evaluate and refine those ideas.

## 3. Facilitation Techniques for Counteracting Question Bias

In addition to the specific techniques mentioned above, there are several general facilitation practices that can help to counteract bias in question generation:

*   **Question Brainstorming:** Instead of brainstorming ideas, brainstorm questions. This technique, also known as "question-storming," can help to uncover a wider range of issues and perspectives before diving into solutions.
*   **Devil's Advocate:** Assigning someone to play the role of a devil's advocate can help to challenge assumptions and uncover hidden biases in the way the problem is being framed.
*   **Anonymous Idea Submission and Silent Voting:** Anonymous brainstorming, coupled with silent voting, can effectively counteract biases stemming from individuals' motivations to conform [2]. In traditional brainstorming, the first ideas presented or those from more influential individuals can anchor the discussion and lead to conformity. By allowing participants to submit ideas anonymously, the focus shifts from the source of the idea to the idea itself, fostering a more equitable evaluation process. Silent voting further reinforces this by enabling independent assessment of ideas, free from social pressures.

## Conclusion

Bias in question generation is a significant challenge in brainstorming and facilitated dialogue. Anchoring effects and framing bias can constrain thinking and predetermine the outcome of a session. However, by being aware of these biases and employing a range of facilitation techniques, it is possible to mitigate their effects and foster a more open, creative, and productive brainstorming environment. These principles are equally applicable to human-led facilitation and the design of AI-powered brainstorming systems.

## References

[1] Tversky, A., & Kahneman, D. (1974). Judgment under Uncertainty: Heuristics and Biases. *Science*, *185*(4157), 1124–1131. https://www.science.org/doi/10.1126/science.185.4157.1124
[2] Rinaudo, E. K., Koller, T., & Schatz, D. (2022, January 27). *Bias Busters: A better way to brainstorm*. McKinsey & Company. https://www.mckinsey.com/capabilities/strategy-and-corporate-finance/our-insights/bias-busters-a-better-way-to-brainstorm
[3] van Giffen, B., Herhausen, D., & Fahse, T. (2022). Overcoming the pitfalls and perils of algorithms: A classification of machine learning biases and mitigation methods. *Journal of Business Research*, *144*, 93-106. https://doi.org/10.1016/j.jbusres.2022.01.076
