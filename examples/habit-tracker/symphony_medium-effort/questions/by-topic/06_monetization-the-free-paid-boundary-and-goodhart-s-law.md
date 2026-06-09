---
project-name: "Modern Habit Tracker Web App"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 06: Monetization, the Free/Paid Boundary, and Goodhart's Law

## Questions

1. **The three-habit ceiling as funnel, wall, or judgment**: The free tier caps users at 3 active habits as a conversion lever — but how precisely was this number calibrated, what is the distribution of habit counts among comparable app users, could a limit set too low (users never feel constrained) or too high (users never hit the wall) silently kill conversion without surfacing as an obvious failure, what if 3 habits is actually the right number for most users most of the time (meaning the free tier is a complete product for a large segment), and for a user who genuinely wants to build 5 habits but cannot or will not pay, does hitting that wall feel like a product decision or a judgment that their goals are not worth supporting — and what is the emotional effect of hitting the cap at an engaged moment, does it create a natural upgrade impulse or interrupt a fragile new habit pattern and cause disengagement rather than conversion?
2. **Conversion funnel legibility and leading indicators**: A 5% paid conversion target at D30 presupposes a specific funnel structure — what intermediate metrics (free-tier habit limit hit rate, weekly review engagement, export feature discovery) serve as leading indicators of conversion likelihood, how should the free/paid boundary be instrumented to make the funnel legible, and how does the team course-correct if paid conversion stalls at 1–2% rather than the 5% target?
3. **Pricing sensitivity, ladders, anchoring, and the hard-no revenue lanes**: The PRD proposes $3/mo or $24/yr — what does the annual-vs-monthly take-rate ratio imply about users' trust horizon, at what paid user count does a lifetime option become worth offering, the target user's prior bad experience may have soured them specifically on subscription-model apps (so how does the team validate willingness to pay before committing to subscription-only), because $3/month anchors the perceived value at a very low level how do you design a pricing ladder that leaves room to grow without alienating early adopters if the team later needs to raise prices to sustain a solo developer, and given that ads and data selling are declared off-limits permanently (not just for v1), what does that constraint do to the system over time if the product succeeds and grows and what alternative revenue structures become more important as a result?
4. **Goodhart's Law and the success-metric trap**: The 30-day retention target (>25%), median habits tracked (3), and paid conversion (5%) are sensible proxies — but if the team starts optimizing for these numbers, what behaviors might the product develop that serve the metric while degrading the actual experience (for example, could nudging users toward tracking exactly 3 habits to hit the median target inadvertently push power users away), and what operational metric best captures the "invisible-but-present by week six" state (low session duration with high check-in completion, high streak continuity, low notification-driven opens) without becoming another number to game?

---

**Question count**: 4
**Cluster focus**: Whether the 3-habit free tier and $3/mo pricing function as a conversion funnel or a ceiling, and how to instrument the funnel without letting success metrics distort the product under Goodhart's Law.
