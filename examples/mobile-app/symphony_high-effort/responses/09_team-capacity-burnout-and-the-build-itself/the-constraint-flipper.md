---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "09_team-capacity-burnout-and-the-build-itself"
persona: "The Constraint Flipper"
---

# Team Capacity, Burnout, and the Build Itself - The Constraint Flipper

---

## Burnout as Capacity Predictor

* **Summary.** Burnout isn't a morale problem—it's a diagnostic tool. The team's exhaustion points directly to which features are architecturally toxic. Rather than model capacity from scratch, audit the maintenance burden on each feature (lines of technical debt, cross-feature dependencies, emergency patch frequency). Features causing the most pain consume disproportionate engineering hours relative to user value. This distribution becomes your cut list. The relaunch doesn't create new capacity; it redistributes freed attention. Once toxic features are removed, the team experiences immediate psychological relief, which paradoxically improves judgment quality during the remaining prioritization decisions.

* **Scope & Risk.** Measure maintenance burden directly: run code coverage reports, count bug tickets per feature, track context-switching costs. Low risk because you're using data the team already generated. Moderate payoff: identifies which cuts recover the most engineering attention fastest (likely 2–3 engineers' worth of freed time immediately).

---

## Emotional Ownership as Design Signal

* **Summary.** When the team identifies which feature they felt proudest shipping, that pride reveals the team's genuine strengths and architectural preferences. Rather than suppress that pride when cutting features, channel it. If the team loved building a smooth user experience or elegant backend system, design the simplified core to amplify those same strengths. Conversely, if the cut features were complex but joyless (Frankenstein integrations, forced pivots), that signals they were architecturally misaligned. Reframing: cutting features isn't loss—it's permission to build in the way the team actually wants to build, using skills they already proved they have.

* **Scope & Risk.** Emotional mapping workshop, ~2 hours. High leverage: team morale shifts from "we're deleting our work" to "we're finally building the thing we wanted to." Risk is low if you genuinely listen rather than impose answers.

---

## Incremental vs. Clean Break as Commitment Signal

* **Summary.** The team's gut instinct about incremental vs. clean relaunch reveals what they actually believe about the product. Incremental feels safer but preserves the architecture that exhausted them. Clean break feels terrifying but signals genuine reset. Flip the framing: instead of "which is safer," ask "which version would the team be proud to have shipped?" A clean relaunch, once the core three features are locked, actually creates urgency that *focuses* attention—the opposite of diffusion. The team stops fighting legacy code and starts building from clarity. Psychological win: they've earned the right to a fresh start.

* **Scope & Risk.** Reframes the decision as emotional/strategic rather than logistical. Low implementation cost. Moderate risk: clean break requires strong communication to users, but avoids the slow bleed of incremental cuts that feel like continuous failure.

---

## User Exodus Mapping as Innovation Constraint

* **Summary.** Before the relaunch, identify which users will abandon the product when features are cut and what alternatives they'll migrate to. Rather than view exodus as failure, treat it as a constraint that forces genuine focus. Users leaving because their pet feature was cut are users the simplified product wasn't designed for anyway. This filters the user base toward people who value the core mission. The data also reveals which features attract low-engagement users (high churn in cohorts using feature X but not the core). Cutting them improves retention metrics. Constraint becomes advantage: losing the wrong users makes the retention story stronger.

* **Scope & Risk.** Survey departing users and analyze cohort retention data, 1–2 weeks. Moderate risk: may reveal uncomfortable truth that current user base is misaligned with core. High payoff: gives you ethical cover for cuts and realistic retention forecasting for the relaunch.

---

## Burnout-Driven Architecture Audit

* **Summary.** The 15 half-built features created fragmented technical debt. Burnout is the system's immune response to that fragmentation. Rather than patch morale, use burnout as a heuristic to identify which architectural decisions created the most systemic drag. Which features tie into the most other systems? Which require the most cross-feature awareness? Which ones cause cascading bugs? Those are your primary cuts, not because users don't want them, but because the codebase is telling you it can't sustain them. Cutting them releases the team to build the simplified core with coherence and speed.

* **Scope & Risk.** Technical debt audit: code graph analysis, dependency mapping, 1 week. Low risk. High payoff: generates data-driven cut list that aligns technical reality with product strategy.

---

## The Codebase Transformation Moment

* **Summary.** Six months post-relaunch, imagine an engineer sitting down to build a new feature and realizing the codebase cooperates instead of resists—no cascading side effects, clear mental model, pleasure instead of friction. What changed? Likely the removal of 8–10 features that created architectural noise. That future moment is the real win. The relaunch isn't about cutting user-facing functionality; it's about cutting the architectural weight that makes building exhausting. When engineers can work fast and joyfully again, quality and speed both improve. Burnout wasn't a capacity problem—it was a signal that the product's structure had become hostile to creativity.

* **Scope & Risk.** Reframes the entire relaunch as an architect-driven reset, not a feature chop. Shifts team mindset from "what are we killing" to "what emerges when the codebase becomes coherent." Moderate risk: requires honest assessment of which features are architecturally toxic. High payoff: team morale improves before the relaunch even ships.

---

## Manufactured Founding Moment

* **Summary.** Slack pivoted from a failed game-collaboration tool. Instagram emerged from Burbn's photo feature. The structural pattern: one element signaled dramatically higher engagement and user investment. The psychological challenge here is manufacturing that founding moment inside a team that lived through the product's failure. How? Tell the story as surgical focus, not retreat. Frame the three retained features as the "true product all along"—the thing the market actually wants. The team isn't salvaging failure; they're extracting signal from noise. Internally, communicate the relaunch as a chance to rebuild with clarity and speed. Externally, position it as a refined vision, not a desperate cut. The relaunch gives the team permission to reset their relationship with the product.

* **Scope & Risk.** Requires strong narrative framing and leadership alignment, ~1 week of messaging development. Moderate risk: team has to believe the story or it rings hollow. High payoff: if executed well, transforms a painful reset into a energizing fresh start.

---

## Maintenance Liberation as Quality Lever

* **Summary.** With 6 engineers and 15 features, each feature "costs" ~0.4 engineers in maintenance. Cutting 8–10 features immediately frees 3–4 engineers of maintenance attention. Rather than apply that freed capacity to new features, apply it to quality, polish, and speed on the retained core. The constraint (limited engineering) becomes an advantage: forced focus on depth instead of breadth. A three-feature app built with four-engineer attention achieves coherence and quality that a 15-feature app with six engineers spread thin cannot. The relaunch's timeline becomes faster *and* the output better—a rare reversal of the usual speed-quality tradeoff.

* **Scope & Risk.** Requires tracking maintenance burden per feature (already mentioned). Low risk. High leverage: makes the business case for the relaunch irrefutable (team capacity × focus = better outcome in less time).

---

## Trust Signaling Through Radical Cuts

* **Summary.** When the team announces cuts, they signal trust in a simple idea: the remaining features are genuinely valuable. Cutting half of what you built is emotionally hard—it announces to users, investors, and the team itself that past effort was misdirected. But it also earns credibility. Users see: "This team knows what they're doing and isn't afraid to cut what doesn't work." Investors see: "Leadership is willing to make hard choices." The team sees: "We're allowed to fail at things and reset." That permission is precious. The relaunch's credibility comes not from feature count but from the willingness to simplify. Make the cuts visible in your marketing and internal narrative. Constraint becomes brand.

* **Scope & Risk.** Communication strategy across user messaging, investor updates, and internal town halls, ~1 week. Moderate risk: some users will interpret cuts as failure unless framed as clarity. High payoff: positions the team as disciplined and strategic rather than reactive.
