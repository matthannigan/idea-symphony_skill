---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "10_runway-as-a-design-constraint"
synthesis-type: "summary"
central-tension: "Designing for the 8 months the team wants versus the ~5 months it actually has once relaunch spending spikes are subtracted."
---

# Summary: Runway as a Design Constraint

## Executive Summary

Six of seven perspectives independently arrive at the same correction: dividing remaining cash by current burn ignores the spending spike a relaunch demands. Design overhaul, marketing blitz, intensified QA, app-store review cycles, support load, and possible contractor hires can consume 40–50% of the runway before any metric moves. The honest planning figure is roughly 5 months, and the product must be designed to prove value inside that window, not the 8-month one that exists only on the spreadsheet.

This reframes everything downstream. If the validation window is 5 months rather than 8, then the "simplified" 3–4-feature plan the team is already considering is still too ambitious. It reflects 12-month thinking. The strong recommendation is to go more radical: identify the single feature that drove the original 180K downloads (workout tracking carries the strongest usage signal), build that one thing to a level where retention reaches 25%+, and earn the budget to layer in social or community features from that foothold. Going more radical is the safer move, not the riskier one.

Two decisions must be locked before any feature is cut. First, the churn threshold: with only ~14.4K active users (180K × 8% retention), removing a niche feature with a passionate base could crater a small absolute number and trigger investor panic. Leadership and finance must agree in writing what level of loss counts as success (for example, 30% churn is acceptable if retained-user session length jumps from 47s to 5+ minutes). Second, an evidence gate around month 4–5.5, not month 8, with a non-negotiable metric and an explicit off-ramp. This turns the reset into a sequence of decision gates rather than a single all-or-nothing bet with no cash left to pivot.

The most actionable idea is to convert the deadline into a single mechanical decision rule: "Can we ship this, validate it, and iterate within ~6 weeks? If not, it is tabled." Made org-wide and visible, this rule ends scope politics, defers infrastructure and tech-debt work to month 3+, and reframes the constraint for a burned-out team as a shared mission and competitive edge rather than a fear. One dissenting note worth holding: a tight runway may also remove the budget for the user research the team would normally use to find its core, forcing a commit-on-instinct leap of faith.

---

## Key Themes

### The 8-Month Floor Is Fictional; Plan for 5
Runway calculated at current burn is a false floor. Relaunch spending spikes (marketing up 40–60% in month 3, QA and contractor onboarding over 6–12 weeks) compress effective iteration time to roughly 5 months. The recommended first action is to build an itemized cost-of-relaunch spreadsheet before cuts are decided, so the team chooses consciously between radical 4-week scope cuts and accepting a genuinely shorter runway.

### Decide the Failure Thresholds Before You Cut
Both the acceptable churn level and the funding-justification metric must be made explicit and agreed upfront, not discovered mid-relaunch under panic. Segmenting the 180K by feature usage reveals which user clusters each removable feature holds. A written threshold (churn ceiling plus an engagement floor) converts runway into a clear success/failure gate that survives an inevitable post-cut metrics dip.

### Radical Beats Simplified
The convergent stance is one or two features executed exceptionally well, with a concrete test for whether the core has truly been found: if the simplified app still needs a hamburger menu, it has only been trimmed. Survival-mode simplification is a different design ethos. Every screen on the critical path, ship version 0.7 and iterate. This is not a lighter version of the current product.

### The Deadline as Editorial Tool and Morale Fix
All seven perspectives converge on a time-boxed decision rule ("ship and validate within ~6 weeks or table it") as the central mechanism that ends scope debates without leadership veto. Made visible org-wide, it doubles as a morale intervention for a team burned out from maintaining 15 half-built features. A shared 240-day deadline turns cutting from sacrifice into strategy and reactive maintenance into intentional building.

### Churn as Diagnostic, Not Just Loss (single-perspective reframe)
One perspective reframes post-relaunch churn from a failure metric into a discovery instrument. Truth-seeking exit surveys ("what are we missing?") let the users who leave reveal which cuts actually mattered and which segments were misjudged. This changes what the churn threshold is for: a learning boundary, not only a kill line.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Build an itemized cost-of-relaunch spreadsheet now (design sprint, marketing launch, QA cycle, store reviews, support spike, monitoring) and recompute real post-relaunch runway before any feature is cut.
- Convene leadership and finance to set a written churn threshold and engagement floor (e.g., "30% churn acceptable if retained-user session length reaches 5+ min"), backed by a segmentation of the 180K downloads by feature usage.
- Adopt and publish one mechanical scope rule: "ship, validate, and iterate within ~6 weeks or it's tabled." Also establish a mid-development cut rule ("not 70% done by month 3, it's cut and reassigned").
- Narrow the reset from 3–4 features to the single strongest-signal feature (workout tracking) and define the proof metric (session length 47s → 3+ min, retention to 25%+).
- Announce the simplification to existing users early and honestly, naming a feature-sunset date, to front-load churn into the redesign window and hold it near ~15%.

### Near-term (3-12 months)
- Hold a hard evidence gate at day 150–165: require a defined 2–3x metric improvement (or 30-day retention 15%+); if missed, trigger the pre-agreed pivot or wind-down while runway remains.
- Validate the business model early by testing what users will pay for in months 3–4 (A/B a premium subscription-first onboarding flow), treating revenue as a survival signal.
- Run truth-seeking exit surveys on churned users to diagnose which removed features and segments actually mattered.

### Long-term (1+ years)
- Only after the single core feature proves retention, sequence in the next feature (community/social) from a position of evidence rather than hedging.
- Institutionalize the time-boxed decision rule and a post-launch "core features lock" as standing product governance so the simplified app does not slowly re-feature.

---

## Key Considerations

**Opportunities**:
- A tight runway is a competitive edge. While rivals with 18-month runways still debate prioritization, a forcing function ships a focused product to real traction by month 5.
- The constraint can heal team burnout by converting maintenance of 15 half-built features into a single shared, time-bound mission.
- Relaunch spend can pay back as lower support volume and fewer bugs if the simplified product is genuinely focused.

**Risks & Challenges**:
- "Simplification theater": cutting features without changing product governance lets the same pressures slowly re-bloat the app.
- A metrics cliff from churning the passionate niche bases inside the small ~14.4K active-user pool could trigger investor panic before new users arrive.
- A truly focused product may need longer to validate, tempting the team to declare a cosmetic "different-looking" win that hasn't fixed retention.
- The tight runway may remove the budget for the user research normally used to identify the core.

**Trade-offs**:
- Designing for the product that's right versus the product that can ship in the ~5 months actually available.
- Perfection versus speed: a polished 2-feature product in 4 months versus a rougher 1-feature product in 2 months with 3 months to iterate.
- Radical focus (1–2 features) for coherence and survival versus the broader 3–4-feature plan that hedges across more bets.
- Accepting deliberate, front-loaded churn now in exchange for clarity and runway in the second half.

---

**Questions addressed**: 3
**Key insights synthesized**: 14
