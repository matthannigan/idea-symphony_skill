# synthesis/{{cluster_slug}}_synthesis.md Template

Synthesized insights without persona attribution. Same structure as the [attributed](synthesis-attributed.md) version, but the indented sub-bullets (original responses) and the `*[Persona Name]*` attribution are removed. Only the top-level synthesized insights remain. Produced by Phase 4 Full Synthesis (`medium`/`high` only).

```markdown
---
project-name: "[Project Name]"
session-dir: "{{session}}"
date: {YYYY-MM-DD}
effort: "[medium|high]"
stage: "Phase 4: Response Synthesis"
model-requested: "[model passed to Agent tool, e.g., sonnet | opus | haiku]"
model-reported: "[model the subagent self-identifies as, e.g., claude-sonnet-4-6]"
topic-cluster: "{{cluster_slug}}"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: [Topic Cluster]

## Synthesized Insights by Question

### [Short Question 1 Summary]

[Longer question 1 description]

* **Short synthesized response summary.** Detailed synthesized response text.
* **Short synthesized response summary.** Detailed synthesized response text.

### [Short Question 2 Summary]
...
```
