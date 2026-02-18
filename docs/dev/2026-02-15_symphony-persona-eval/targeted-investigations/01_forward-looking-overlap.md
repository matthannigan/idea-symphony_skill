# Investigation B1: Forward-Looking Overlap — Visionary vs Futurist

**Date:** 2026-02-16
**Files compared:** 6 files (~38KB) across space-party, tool-library, habit-tracker
**Task spec:** `docs/dev/2026-02-15_symphony-persona-eval/targeted-investigations/tasks/01_forward-looking-overlap.md`

---

## Distinctiveness Assessment

**Overall rating: Moderate**

The Visionary and The Futurist both orient toward the future but operate in fundamentally different cognitive modes. However, their territorial overlap is significant enough that on roughly 20-30% of ideas they produce, the outputs would be difficult to attribute to the correct persona without seeing the framing.

| Dimension | The Visionary | The Futurist |
|---|---|---|
| Cognitive mode | Imagination-first speculation | Trend-extrapolation forecasting |
| Signature opener | "Imagine if…" / "What if…" | "Given the trend toward…" / "As X becomes more Y…" |
| Time horizon | Unbounded (5+ years, paradigm shifts) | Near-to-medium future (1-3 years, identifiable trajectories) |
| Grounding | Rarely anchored in evidence | Consistently cites trends, research, economic shifts |
| Idea scale | System reimagination, new categories | Strategic positioning within emerging landscapes |
| Output volume | 7.3KB avg (#2 of 18) | 5.4KB avg (#12 of 18) |

---

## Evidence

### Time Horizon Difference

This is the clearest differentiator. The Visionary routinely goes to places the Futurist never reaches:

- **Visionary** on tool library success: *"At 5 years, the library could be unrecognizable from its origins — a fully autonomous neighborhood innovation district with its own economy, governance, and cultural identity"*
- **Futurist** on tool library success: *"Transformation into a community resource platform that includes tools, skills, and expertise sharing as complementary services"*

The Visionary describes a world that doesn't yet exist. The Futurist describes an evolution of the world that does.

- **Visionary** on habit tracking: *"Neuroplasticity-focused design that rewires automatic behaviors through gamified neural pathways… Through VR/AR immersive scenarios and multisensory feedback loops"*
- **Futurist** on habit tracking: *"As neuroscience research continues to show our brains' plasticity changes over time, design the tracker to adapt to user neuroplasticity stages"*

Same concept (neuroplasticity), entirely different scale of ambition. Visionary invents a VR brain-rewiring system; Futurist suggests adapting feedback modalities as neural pathways strengthen.

### Grounding Difference

The Futurist anchors nearly every idea in an identifiable societal trajectory:
- *"Given the growing shift toward subscription economy and access-based ownership models"*
- *"As extreme weather events become more frequent"*
- *"Given the trend toward digital minimalism and app fatigue"*
- *"As attention spans continue to decline"*
- *"Given the rise of digital sovereignty and data ownership movements"*

The Visionary almost never does this. Ideas emerge from pure imagination: *"Imagine if we looked to nature for inspiration… a mycelial network model where the tool library spreads through the neighborhood like mycelium underground."*

### Unique Contributions (ideas the other would never produce)

**Visionary-only territory:**
- Mycelial network model for organizational design (tool-library)
- "Quantum-like system where tools exist in multiple categories simultaneously" (tool-library)
- Multi-sensory texture zones: moon rock climbing wall, nebula cloud room, scent journals (space-party)
- "Community behavioral symbiosis network" where one person's meditation feeds another's fitness goal (habit-tracker)
- Library success = library obsolescence (tool-library)
- Hero's journey three-act party narrative (space-party)
- "Habit inheritance legacy system" for passing behavioral wisdom to others (habit-tracker)
- Living digital identity dashboard showing "the person becoming" (habit-tracker)

**Futurist-only territory:**
- Climate adaptation tools: emergency equipment, generators, water pumps (tool-library)
- Seasonal usage forecasting based on climate change (tool-library)
- Solar installation and energy monitoring tool demand (tool-library)
- Municipal API integration and waste reduction tracking (tool-library)
- SMS-based check-ins as counter to app fatigue (habit-tracker)
- "Cliff effect" prediction for habit drop-off (habit-tracker)
- Behavioral data portability as competitive differentiator (habit-tracker)
- Separate "flow state" vs "reflection state" interfaces (habit-tracker)
- Temperature variation zones tied to climate education (space-party)
- 3D printed space artifacts as maker-movement integration (space-party)

**Observation:** The Futurist's unique contributions are notably more *actionable* and *specific* than the Visionary's. The Visionary's unique contributions are more *imaginative* and *paradigm-challenging*.

### Convergence Points (where both produce essentially the same idea)

1. **AR technology layer on space party** — Visionary: "astronaut goggles that transform the room through augmented reality layers"; Futurist: "Use simple AR markers around the space that trigger space sounds." *Same idea, different ambition level.*

2. **Predictive community needs** — Visionary: "predictive community intelligence hub"; Futurist: "predictive needs mapping using demographic trend analysis." *Same concept; Futurist is more grounded in method, Visionary more expansive in vision.*

3. **Skills/capability networking** — Both suggest connecting tool borrowers with skilled neighbors. Visionary: "capability exchange" and "living skill marketplace"; Futurist: "skill acquisition platform integration" with "micro-learning modules." *High overlap.*

4. **Progressive disclosure for complexity** — Both propose revealing depth over time in the habit tracker. Nearly identical idea with similar framing.

5. **Cross-generational habit sharing** — Visionary: "habit inheritance legacy system"; Futurist: "cross-generational habit transfer." *Same concept; Visionary is more poetic, Futurist cites family wellness tracking trends.*

6. **Legacy/tradition for birthday girl** — Visionary: "mission commander's legacy"; Futurist: "legacy creation opportunity." *Nearly identical.*

7. **Scented party zones** — Both independently suggest themed scent stations. Slight difference: Visionary adds a "scent journal" artifact; Futurist frames scents as foundational for future "scent technology."

8. **Mission-based party structure** — Both propose mission roles and narrative progression. Visionary leans narrative (hero's journey); Futurist leans gamification (checkpoints, digital badges).

**Convergence rate:** ~7-8 idea pairs across 30 ideas per persona (45 total response items each) = roughly 25% overlap in *concept* (even when framing differs).

### Topic Sensitivity

Both personas maintain their differentiation consistently across all three topics. The space-party topic narrows the gap slightly (both naturally gravitate toward experiential/imaginative territory for a children's party). The tool-library topic produces the sharpest contrast (Futurist's climate/municipal anchoring vs Visionary's mycelium/quantum metaphors).

---

## Recommendation

**Refine prompts for both — do not merge.**

The underlying cognitive modes are genuinely different (imagination-first vs trend-extrapolation), and when they're working well, they produce complementary outputs that cover different regions of the future-oriented idea space. However, the current prompts allow too much drift into each other's territory.

### Specific prompt refinements:

**The Futurist** should be sharpened toward:
- Explicit requirement to cite identifiable trends, data, or trajectory evidence for every idea
- Discourage speculative "what if" framings — push toward "given X trend, we should Y"
- Emphasize strategic positioning and timing ("when to move, what to prepare for")
- Add constraint: ideas must be plausible within 1-5 years given current trajectories

**The Visionary** should be sharpened toward:
- Explicit encouragement to go *beyond* trend extrapolation — think paradigm shifts, not incremental evolution
- Discourage trend-citing language — push toward "reimagine the category" framings
- Emphasize transformation and emergence over prediction
- Add constraint: at least one idea per question should describe something that doesn't have a current analog

### Expected impact:
These refinements should reduce the ~25% convergence rate to ~10-15% while preserving both personas' core value. The remaining overlap would be genuine consensus (both lenses independently arriving at the same idea), which is a useful signal rather than a problem.

---

## Notes

- The 35% volume gap (Visionary 7.3KB vs Futurist 5.4KB) reflects a real quality difference: the Visionary elaborates ideas more richly, while the Futurist tends toward more compressed, assertion-style responses. This is partly a prompt artifact (Visionary's "imagine" framing naturally invites elaboration) and partly inherent to the modes (trend extrapolation is more concise than speculation).

- The Futurist has a distinctive and valuable tendency to think about *infrastructure readiness* — "design our system to potentially integrate with broader city-wide platforms when they emerge" — that no other persona covers. This should be explicitly reinforced.

- The Visionary occasionally produces ideas so speculative they're impractical for brainstorming (e.g., "quantum-like system where tools exist in multiple categories simultaneously" — vivid metaphor but unclear what to do with it). A light constraint toward "transformative but describable in concrete terms" could improve signal-to-noise.

- On the space-party topic specifically, both personas converge more than on the other topics. This may be because a children's party naturally constrains the idea space — there are only so many ways to think about future-oriented party experiences. For topics with more room for systemic thinking, the personas diverge more sharply.
