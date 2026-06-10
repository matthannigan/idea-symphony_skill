---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/low"
datetime: 2026-04-27
effort: "low"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
topic-cluster: "06_the-passionate-minority-and-niche-users"
persona: "The Pragmatist"
---

# The Passionate Minority and Niche Users - The Pragmatist

---

## Passionate Minority Calculation: Quantifying Keep-vs-Cut Thresholds

* **Start with a cost-per-feature calculation, not gut feel.** With 6 engineers maintaining 15 features, the rough burden is 0.4 engineers per feature. For any niche feature, divide its monthly active user count by that fully-loaded engineer cost (~$15–20k/month). If you're spending more than $50 per active user per month to keep a feature alive, that's your first quantitative signal to cut.

* **Run a 30-day deprecation notice experiment before making the final call.** Email the niche users who engaged with the feature in the last 90 days, tell them it may be removed, and track three things: reply rate, unsubscribes, and whether they open the app more or less in the next two weeks. Actual churn behavior under deprecation notice is far more reliable than survey responses about hypothetical loss.

* **Model the word-of-mouth value with a simple referral proxy.** Pull referral or invite data segmented by feature cohort. If niche-feature users refer 3x more new users than average, that multiplier belongs in the retention math. A feature used by 2% of users that sources 15% of new installs is structurally different from one that's just a usage dead-end.

* **Set a hard threshold tied to runway, not intuition.** With 8 months left, a practical rule: any feature requiring more than one engineer-week per quarter to maintain that serves fewer than 500 MAU gets formally considered for deprecation. Document the threshold publicly inside the team so the decision process doesn't feel arbitrary when people argue about their favorite feature.

* **Consider spin-off feasibility as a third option before "keep or kill."** If a niche feature has a coherent standalone use case and 1,000+ passionate users, a 2-week technical spike to assess API-ification or white-label packaging is worth the investment. The question isn't only "keep or cut" — it's "can this support itself elsewhere without consuming our runway?"

---

## The Dignity of Niche Users: Honoring Them Without Keeping the Feature

* **Give niche users a 90-day data export window and make it effortless.** The most concrete form of respect is letting people take their data with them. Build a one-click export in the first sprint after the deprecation decision, before you announce anything publicly. Practical minimum: CSV of all logged entries, plus any structured content they created. This costs one engineer two days and eliminates the most legitimate grievance.

* **Write an honest deprecation post, not a marketing-speak "we're focusing on what matters most" announcement.** Acknowledge specifically what's being removed, who used it, and why. Vague corporate language makes niche users feel gaslit; concrete acknowledgment — "about 1,200 of you used the habit tracker weekly, and we know this disrupts your routine" — signals that you actually tracked usage and made a deliberate choice, not that you didn't notice them.

* **Offer niche users early access to the simplified product and a direct feedback channel for 60 days.** A dedicated form or email alias costs nothing. Some niche users will convert to the simplified experience if given a reason to stay; others will churn but leave feeling heard. The ones who convert become disproportionately loyal because they chose to stay despite a change that hurt them.

* **Document what the niche feature solved and publish it.** If your habit tracker accidentally filled a gap in the market, say so publicly: "We're removing this feature, but if you relied on it, here are three dedicated apps that do this better than we ever did." Recommending competitors is counterintuitive but builds durable goodwill and is practically costless to implement.
