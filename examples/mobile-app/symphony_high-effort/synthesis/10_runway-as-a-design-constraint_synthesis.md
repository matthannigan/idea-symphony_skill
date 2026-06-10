---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "10_runway-as-a-design-constraint"
synthesis-type: "synthesis"
---

# Brainstorming Synthesis: Runway as a Design Constraint

---

## Synthesized Insights by Question

### Question 53: The 8-Month Runway as a False Floor and Churn-Threshold Gate

**Full question**: How does the 8-month runway change which version of simplification is possible — are we designing the reset around what's right for the product, or around what can ship before the money runs out? Runway calculations assume current burn rate, but a relaunch typically requires a spike in spend (marketing, design, QA, possible contractor hires); what is the realistic post-relaunch runway if simplification consumes 2–3 months of budget; what percentage of the 180K downloads would need to churn post-relaunch before the reset would be considered a failure (and has that threshold been made explicit and agreed upon before any cuts are made); and at what point in the timeline does the team need evidence of improved metrics to justify continued investment versus triggering a harder pivot decision?

* **The real runway is 5 months, not 8 — model the relaunch spend spike before cutting anything.** Dividing remaining cash by current burn is a dangerous miscalculation. A relaunch triggers spikes in design, QA, marketing, app-store review cycles, support load, and possible contractor hires that can eat 40–50% of remaining runway before any metric moves. Build an itemized cost-of-relaunch spreadsheet now, before feature cuts are decided. Design the product that ships and proves value inside the resulting ~5-month window, not the 8-month one that exists only on paper.

* **Make the churn threshold explicit and agreed with leadership and finance before any cuts.** The math is stark: 180K downloads × 8% retention is only ~14.4K active users, and removing features with passionate niche bases could crater that small absolute number. Segment the 180K by feature usage first, then commit to a written threshold (for example, "30% churn is acceptable if retained users' session length jumps from 47s to 5+ min") so a metrics cliff doesn't trigger investor panic before new users arrive.

* **Set a hard evidence gate at month 4–5.5, not month 8, with a non-negotiable metric and an explicit off-ramp.** Schedule a hard evaluation around day 150–165 requiring a specific improvement (for example, a 2–3x metric gain, or 30-day retention reaching 15%+). If hit, the team has earned credibility and buffer to double down. If missed, it triggers a harder pivot or wind-down while runway remains, converting the reset from a single all-or-nothing bet into a sequence of decision gates.

---

### Question 54: A Product Designed for an 8-Month Runway

**Full question**: Rather than treating 8 months as a fear-inducing deadline, treat it as a design constraint: given that constraint, what is the simplest possible product that could demonstrate enough value to earn the next funding round? Does that product look like the simplified version you're already considering, or does it suggest something more radical?

* **The constraint demands something more radical than your planned 3–4 features: build 1–2 features executed exceptionally well.** The "simplified" 3–4-feature plan is still too ambitious for an 8-month runway and reflects 12-month thinking. Identify the single feature that drove the original 180K downloads (workout tracking has the strongest usage signal). Build it alone to a level where retention reaches 25%+, and you'll earn the budget to layer in community or social features from that foothold. Going more radical is the safer move, not the riskier one.

* **The simplified product should look and feel categorically different: every screen on the critical path, not a trimmed version of today's app.** Trimming edges is not the same as finding the core. The test: if the simplified version still needs a hamburger menu and navigation confusion, the core hasn't been found. Survival-mode simplification means no fancy onboarding, no settings depth, no "more options" dropdowns. Instead, users land in the core experience immediately and every interaction matters. Ship version 0.7 and iterate rather than polishing.

* **Use the runway to surface the business model, not just the product model. What will users pay for?** With relaunch burn, the product can't coast on free users. If it can't generate revenue by months 3–4, the strategy is wrong before the last quarter's budget runs out. This makes the business model visible early and can justify bolder moves, like a premium subscription-first model or a B2B gym-partner pivot. These are safer under a tight runway because they resolve fast.

* **You may not be able to afford the research to find the core. Commit on instinct instead.** An 8-month runway leaves no budget for user interviews, cohort analysis, or A/B testing to determine what to keep. This removes analysis paralysis and forces a leap of faith on the 1–2 features the team already knows deep down are core.

---

### Question 55: Eight Months as a Creative Brief and Editorial Decision Rule

**Full question**: A twelve-month runway invites incremental improvement; an eight-month runway demands a forcing function. How might the team use the specific tightness of the constraint—not as a crisis to manage, but as a design brief that makes every scope debate easier to resolve—and what decision rules would let the deadline do the editorial work?

* **Adopt one mechanical decision rule that resolves every scope debate.** Ask whether a feature can ship and validate inside a short window: "Can we ship this, validate it, and iterate within ~6 weeks (or visible by month 2)?" If no, table it post-launch. This single rule eliminates roughly half the feature work because infrastructure, tech-debt paydown, and scaling get deferred to month 3+. Cut any feature not 70% done by month 3.

* **Make the constraint org-wide and visible so it becomes a shared mission rather than a fear.** The team is burned out from maintaining 15 half-built features for unclear reasons. A shared, explicit deadline ("in 240 days we will know if this works") converts reactive maintenance into intentional building. Visibility across engineering, design, and exec removes the politics and the sense of sacrifice. Cuts stop feeling like loss and start feeling like strategy.

* **Frame the tight runway as a competitive advantage, not a threat.** Competitors with 18-month runways are still arguing about feature prioritization. A forcing function that ships faster and simpler is a go-to-market edge. Tightness demands conviction, which is cheaper to execute than hedging. Bold bets resolve fast rather than bleed resources slowly: roughly 20% the scope at 3x the coherence.

* **Communicate the simplification to users early and honestly.** Tell users now ("we're simplifying to focus on what you love; some features sunset June 1"). Early honest communication holds churn near the normal ~15%; hiding it until week 6 pushes churn past 30%. Time the inevitable churn to months 1–2 when redesign happens anyway, so the second half of runway operates with clarity.

* **Treat post-relaunch churn as a diagnostic signal, not only a failure metric.** Design exit surveys that seek truth ("what are we missing?") rather than retention psychology. Users who churn reveal which removed features actually mattered and which segments were misjudged. The churn threshold becomes the boundary between signals you can hear and signals too faint to matter.

---

**Questions addressed**: 3
**Synthesized insights**: 14
