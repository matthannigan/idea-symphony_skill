# synthesis/{{cluster_slug}}_synthesis.md Template

Synthesized insights without persona attribution. Same structure as the [attributed](synthesis-attributed.md) version (`synthesis/attributed/{{cluster_slug}}.md`), but the indented sub-bullets (original responses) and the `*—Persona Name*` attribution are removed. Only the top-level synthesized insights remain. Beyond the structural removal, persona names are prohibited anywhere in this document's prose — no sentence-subject mentions ("The Devil's Advocate argues"), no bullet-summary labels, and no character names from persona narratives; convey breadth via convergence counts and lens types ("a feasibility-oriented case", "an adversarial counter-test"). Produced by Phase 4 Full Synthesis (`medium`/`high` only).

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
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: [Topic Name]

---

## Synthesized Insights by Question

### Question 1: [Short Question Summary]

**Full question**: [Longer question description] [User Q]

* **Synthesized response summary.** Detailed synthesized response text.
* **Synthesized response summary.** Detailed synthesized response text.

[No sub-bullets, no persona names — only the synthesized insights, ordered by consensus: most convergent first; unique insights last.]

---

### Question 2: [Short Question Summary]

**Full question**: [Longer question description]

[Continue for all questions, with a `---` rule between question blocks]

---

**Questions addressed**: [count]
**Synthesized insights**: [count]
```

**`[User Q]` markers**: if the questions file carries a `[User Q]` marker on a question, preserve it on the `**Full question**:` line (as shown above); it appears only when present in the source. Never propagate the marker onto synthesized-response bullets.
