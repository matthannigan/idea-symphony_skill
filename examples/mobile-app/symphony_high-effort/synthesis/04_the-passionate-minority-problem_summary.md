---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-06-09
effort: "high"
stage: "Phase 4: Response Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-8"
topic-cluster: "04_the-passionate-minority-problem"
synthesis-type: "summary"
central-tension: "The same passionate-minority signal can be read three irreconcilable ways — switching cost to discount, a research blueprint for the new core, or evidence of a different product entirely — and which reading is correct must be tested empirically, not assumed."
---

# Summary: The Passionate Minority Problem

## Executive Summary

The organizing tension of this cluster is that a small but devoted user base can be read three irreconcilable ways, and the responses do not resolve which reading is correct without evidence. The 500 daily users of a feature like the meditation guide might be locked in by switching cost (cut it, with care), or a research blueprint showing exactly what focused excellence feels like (build the core in its image), or proof of a different product hiding inside the app (spin it out). The strongest recommendation across all seven perspectives is to stop arguing about which interpretation is right and instrument it: run a two-week disable or pause, pair it with an exit survey asking "where would you go if this were gone?", and read the answer. Naming a free alternative is switching cost; "nothing matches this" is genuine signal. This costs a feature flag and an A/B test, which is decisive on an eight-month runway.

The deepest convergence is that passionate users are loyal to an underlying need, not to the feature that happens to carry it. The meditation devotee wants time-architecture and emotional regulation. The forum regular wants belonging and witnessed struggle. The meal-planner user wants relief from decision fatigue. This reframes the whole problem: the question is rarely "keep the feature or not" but "can a lighter core mechanic carry this need forward?" A "focus reset" timer can replace a meditation library. Community witness woven into the main flow can replace a siloed feed. The cheap, repeatable discovery method is to interview the top ten users per feature, capture their verbatim language, and translate recurring patterns into minimal core mechanics.

There is a real ethical floor underneath the strategy. A person using a feature to manage anxiety is owed transparency, lead time, and a genuine hand-off (curated alternatives, partner onboarding, possibly a credit), not a silent cutoff. That obligation is bounded: it is honesty and time, not a mandate to keep an unprofitable feature alive forever. The communication that honors it leads with the honest strategic reason and then acknowledges the loss. Empathy-first messaging reads as manipulation when the real driver is cost. Two cautions keep the cluster honest: do not let switching-cost guilt quietly reverse the roadmap, and do not "flip the frame" only to relaunch the same app minus one feature, having learned nothing.

---

## Key Themes

### Test, don't theorize
The single most repeated move is to convert the passion-vs-switching-cost debate into a cheap experiment: a 2-week feature disable or pause, an exit survey naming the destination, and a portability survey ("would you stay if this arrived as a weekly digest?"). Each costs little and yields a clear read instead of intuition. This discipline shows up in the framework question, the story question, and the niche-thesis question.

### Loyalty is to the need, not the feature
Across every user story, the value users defend is an underlying need (regulation, belonging, decision relief, ritual, accountability) that the feature happened to deliver. This is what makes simplification survivable: the need can often migrate into a lighter core mechanic, and the design task becomes naming the need and re-housing it rather than preserving the feature.

### Honor the grief, but lead with honesty
Loss of a relied-upon feature is grief, not churn. The relaunch should name what is being lost, segment the goodbye by feature type, and offer a ritual closing with data export. The corrective, raised as a counter-pressure, is that empathy-language reads as manipulation when the real reason is cost. Honesty about the trade-off must come first, and acknowledgment second.

### The bounded ethical obligation
For users whose mental-health or livelihood routines run through a feature, the obligation exceeds churn management but is finite: transparency, lead time, and a real hand-off, not indefinite life-support for the feature. This distinguishes a support structure ("how I manage stress") from a power-user habit ("everything in one place"). The team can see where extra care is genuinely owed.

### Niche devotion as a blueprint, with a guardrail
The flipped framing treats devotees as a specification for what focused excellence feels like. Most perspectives endorse it: study their rhythm and language, inherit the restraint (no dings, no leaderboards, value in under 30 seconds). The guardrail, raised as a single sharp dissent, is that this is only worth doing if it changes the product thesis. Quantify whether 80% of a devotee's time is the niche feature (a different product) or 50/50 (genuinely complementary) before concluding anything.

---

## Recommended Next Steps

### Immediate (0-3 months)
- Stand up a 2-week disable/pause experiment for each small-but-passionate feature behind a feature flag, with a 48-hour return threshold as the read on switching cost vs. genuine value.
- Field an exit survey and a portability survey to the most active cohort of each candidate feature: "where would you go if this were gone?" and "would you stay if the same value came as a lighter weekly/in-core version?"
- Interview the top ~10 users per feature, capture verbatim language, and write 3-4 concrete user stories per feature; classify each as feature-loyal (switching cost) or need-loyal (portable value).
- For any feature with plausible mental-health or livelihood dependency, pre-negotiate 2-3 external partner hand-offs (onboarding flows, discounted trials, redirect lists) before announcing anything.

### Near-term (3-12 months)
- Translate the recurring need-patterns into minimal core mechanics (for example a "focus reset" timer instead of a meditation library; community witness woven into the post-workout flow instead of a separate feed) and ship them inside the relaunched core.
- Design a segmented, multi-month wind-down: an honest strategic reason first, then loss acknowledgment, tailored per feature (forum export and Discord/Slack path, meditation partner trials, recipe backups), capped with a ritual goodbye screen and data export.
- Run a quick willingness-to-pay and time-allocation analysis on the largest devoted niche to decide whether it is a feature to retire, a need to re-house in the core, or a candidate to spin out as a minimal companion app.

### Long-term (1+ years)
- Adopt niche devotion as the relaunch design north star: low notification load, clear single entry point, ritual language ("show up for your practice"), and depth in one core niche over breadth across demographics.
- Instrument a post-relaunch research loop: at 6 months, measure whether new users arriving for the core develop daily devotion within it, and use emergent niche loyalty to decide between vertical (deeper) and horizontal (a second feature) expansion.

---

## Key Considerations

**Opportunities**:
- The devoted cohort is a free, living specification of what best-in-class focused engagement feels like. It's directly reusable as the core's interaction model and language.
- Re-housing the underlying need in a lighter core mechanic preserves most of the value at a fraction of the maintenance cost of the original feature.
- A genuinely devoted niche may be a separate, monetizable product (a wellness or mental-health app) that a minimal companion release could validate cheaply.
- A respectful, honest wind-down can convert departing power users into advocates for the next product rather than resentful churned accounts.

**Risks & Challenges**:
- Cutting a feature that is load-bearing for someone's anxiety management or income causes real harm if there is no genuine hand-off.
- Switching-cost guilt can quietly reverse the roadmap and let the least representative users drive the vision.
- "Flipping the frame" can produce no learning: studying the niche and then relaunching the same app minus one feature.
- Empathy-first messaging reads as manipulation when the real driver is cost. It can accelerate the churn it was meant to soften.
- Some intense engagement is compulsion rather than healthy loyalty. High usage alone is not self-justifying evidence to preserve a feature.

**Trade-offs**:
- Honoring the ethical obligation to dependent users (time, partner hand-offs, credits) costs support effort and runway against an 8-month clock.
- A slow tiered wind-down respects grief and yields data but extends maintenance cost. A clean cut is cheaper but harsher.
- Building depth for the largest internal niche maximizes love but narrows the addressable audience versus broad appeal.
- Preserving a portable need in the core competes for the same scarce engineering capacity the simplification was meant to free up.

---

**Questions addressed**: 4
**Key insights synthesized**: 21
