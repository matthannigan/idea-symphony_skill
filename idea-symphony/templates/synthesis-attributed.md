# synthesis/attributed/{{cluster_slug}}.md Template

Full topic synthesis with persona attribution. Produced by Phase 4 Full Synthesis (`medium`/`high` only). Shows both consolidated insights and the original persona responses that feed each insight.

File naming: the attributed file is `synthesis/attributed/{{cluster_slug}}.md` (no suffix); the companion merged file is `synthesis/{{cluster_slug}}_synthesis.md`.

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
datetime: {{current_datetime}}
effort: "{{effort}}"
stage: "Phase 4: Response Synthesis"
model-requested: "{{model_requested}}"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "attributed"
---

# Brainstorming Synthesis: [Topic Name] - With Attribution

---

## Synthesized Insights by Question

### Question 1: [Short Question Summary]

**Full question**: [Longer question description from questions file] [User Q]

* **Synthesized response summary.** Detailed synthesized response text that consolidates similar perspectives into a unified insight.
  * **Original response summary.** Original detailed response text from first persona. *—The Visionary*
  * **Original response summary.** Original detailed response text from second persona. *—The Pragmatist*

* **Next synthesized response summary.** Another consolidated insight from the responses.
  * **Original response summary.** Original detailed response text. *—The Devil's Advocate*

[Synthesized points within each question are ordered by consensus — most convergent first; unique insights last.]

---

### Question 2: [Short Question Summary]

**Full question**: [Longer question description]

[Continue same pattern for all questions in topic cluster, with a `---` rule between question blocks]

---

**Questions addressed**: [count]
**Personas contributing**: [list]
**Total synthesized insights**: [count]
```

**`[User Q]` markers**: if the questions file carries a `[User Q]` marker on a question, preserve it on the `**Full question**:` line (as shown above); it appears only when present in the source. Never propagate the marker onto synthesized-response bullets.
