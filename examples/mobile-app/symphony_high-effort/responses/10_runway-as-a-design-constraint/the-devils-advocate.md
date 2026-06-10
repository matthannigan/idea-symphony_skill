---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "10_runway-as-a-design-constraint"
persona: "The Devil's Advocate"
---

# Runway as a Design Constraint - The Devil's Advocate

---

## The Hidden Cost of the Relaunch Sprint

* **Summary.** The plan assumes 2–3 months for relaunch work, but relaunch costs spike in ways beyond engineering time: design overhaul, marketing campaign, app store review cycles, customer support burden for angry users, and possible hiring or contractor work. Have we considered whether post-relaunch burn rate could realistically consume 40–50% of remaining runway before any metric improvement is visible? One concrete mitigation: build a detailed cost-of-relaunch spreadsheet *right now*, not after feature cuts are decided. Itemize every one-time cost (design sprint, marketing launch, QA cycle, store reviews) and every ongoing cost change (support volume spike, monitoring infrastructure). This forces the team to choose between radical scope cuts (shipping in 4 weeks, not 10) or accepting that the remaining 5–6 month runway is genuinely constrained, not 8.

---

## The Retention Cliff Nobody's Quantifying

* **Summary.** The app has 180K downloads but 2% DAU/MAU—a sign that 98% of users have already churned. The reset will trigger explicit churn from the remaining 2% who found *something* they liked in the 15-feature mess. Have we mapped which feature cohorts exist in that 2%, and what we're betting churn will be post-simplification? One concrete risk: if the "passionate small user base" for removed features represents 20–30% of active users, the reset could crater active users from low-absolute numbers to unsustainable lows, and the resulting metrics cliff could trigger investor panic before new users arrive. Mitigation: Before cutting anything, segment the 180K by feature usage, identify which features hold which user clusters, and set a floor—"if DAU drops below X, we risk funding conversation"—*before* the reset. This converts runway into a clearer success/failure threshold.

---

## Runway as a Feature Bias, Not a Neutral Constraint

* **Summary.** An 8-month constraint naturally biases the team toward shipping a product that fits the timeline, not a product that solves the problem. Have we considered that a truly focused product might actually require *longer* to validate than a broad, half-baked one because focused products have lower user tolerance for mistakes? The tight runway creates unconscious pressure to declare victory with a simplified product that looks different (and thus "successful") even if it hasn't actually fixed retention. Mitigation: define a post-relaunch hold gate before cutting. Specify that 8 months of runway covers the simplification sprint *and* a 60–90 day observation window with non-negotiable metrics (e.g., 30-day retention must reach 15%+, or the reset is considered a learning, not a success). Build that gate into the timeline now so the team isn't making post-launch pivots under panic.

---

## The "Simplification Theater" Trap

* **Summary.** Cutting features and relaunching *feels* like action, but without a matching change in how the team makes decisions, the simplified app will slowly re-feature because the same forces that created bloat (team wanting to solve problems, PM pressure for engagement metrics, stakeholder pet features) are still in place. Have we considered that the 8-month runway might create a false narrative: "We have 8 months to prove the simplified product works before we need more funding," which then lets the team rationalize *selective re-feature* during that window as "responsive iteration" rather than scope creep? Mitigation: pair the simplification with a real change in product governance. Establish a "core features" lock for the first 6 months post-relaunch (no new features, only fixes and retention-critical improvements), and build that lock *into the roadmap communicated to investors and the team* so runway isn't spent on scope negotiations during the launch window.
