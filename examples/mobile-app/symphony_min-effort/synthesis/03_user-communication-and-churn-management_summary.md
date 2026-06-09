---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/min"
datetime: 2026-06-09
effort: "min"
stage: "Phase 4: Summary Generation"
model-requested: "sonnet"
model-reported: "claude-opus-4-8"
topic-cluster: "03_user-communication-and-churn-management"
central-tension: "The cluster pulls between getting ahead of churn with bold, confident transparency and respecting individual users enough to soften the loss — broadcast the simplification as a philosophy, yet make each affected person feel personally accounted for."
---

# Summary: User Communication and Churn Management

## Executive Summary

The organizing tension across this cluster is between the broadcast and the personal. On one side, the brainstormer repeatedly pushes for confident, public, philosophy-forward messaging — a "Simplification Roadmap" on social, a single canonical help-center article, a before/after screenshot that lets the product speak for itself. On the other, it keeps returning to intimate, per-user respect: a personalized "what we kept, what we exported, what disappeared" account email; per-feature export formats tuned to how a person actually uses their data; lead times tiered by individual engagement. Managing churn well, on this telling, means doing both at once — projecting organizational seriousness while making each affected user feel individually accounted for.

The highest-confidence through-line is **specificity as the trust mechanism**. It recurs in nearly every answer: name the exact features and sunset date, quantify each user's saved data, commit to "three workout-logging improvements in 90 days" rather than "doubling down on quality," and surface concrete export formats. Vagueness reads as corporate hedging; specificity reads as a contract the user can hold you to. The second load-bearing idea is **reframing removal as responsiveness** — leading with users' own words ("you told us you felt overwhelmed, you were right") so simplification lands as listening rather than retreat.

The most actionable structural insight concerns the beta: select participants by *feature-fit* (users who already rely only on what's being kept), not by raw engagement level, since the most engaged current users are precisely those who will miss the cuts most. This single selection criterion determines whether the beta becomes a PR asset or a liability.

---

## Key Themes

### Specificity Builds Trust
Across communication, export, framing, and beta design, the recurring claim is that concrete details outperform generic reassurance. Exact dates and feature names, per-user data counts, named 90-day commitments, and feature-specific export formats all convert abstract intent into something users can verify and hold the company to.

### Reframe Removal as Responsiveness, Not Retreat
The "we got better, not we gave up" narrative depends on anchoring to the user's own expressed frustration before introducing the decision. Acknowledge the loss without apologizing for it; pair every removal with at least one visible improvement shipping the same day so subtraction reads as upgrade.

### Respect the User's Past Effort
Migration and export are framed less as logistics than as signals of respect — one-tap per-feature exports, partner-app migration paths, a 12-month read-only archive, and personalized account summaries all say "your history matters." This respect is positioned as the lever that keeps users who lose functionality from feeling abandoned.

### Tier and Stage Everything by Audience Fit
Both the communication sequence and the beta are designed to be segmented: lead time tiered by engagement (6 weeks for heavy users, 2 for casual), and beta cohorts staged with graduation criteria. Matching message and timing to the right sub-audience reduces loud churn and premature bad first impressions.

---

## Recommended Actions

### Immediate (0-3 months)
- Write the canonical "What's Changing and Why" help-center article first; make every in-app notice, email, and social post link back to it as the single source of truth. `[recurring]`
- Draft the announcement to open with anonymized user quotes ("you felt overwhelmed — you were right"), then name a specific investment ("3 workout-logging improvements in 90 days") and include a before/after navigation screenshot or 20-second video. `[recurring]`
- Build one-tap per-feature exports in the right format per feature (recipes → CSV for Sheets, journal → dated PDF with photos/notes), not a single bulk ZIP. `[single]`

### Near-term (3-12 months)
- Run the four-week escalating-specificity countdown (Week 1 banner → Week 2 feature/date email → Week 3 export modal → Week 4 "what stays" email), with lead time tiered by engagement (6 weeks heavy, 2 weeks casual). `[recurring]`
- Send each active user a personalized "what we kept, what we exported, what disappeared" account email with exact counts (e.g., "12 recipes, 47 journal entries"). `[single]`
- Recruit a feature-fit beta cohort (users who already use only the kept features), staged 25 users/2 weeks → 200 users/4 weeks with graduation criteria, and state in the invite which decisions are final. `[recurring]`

### Long-term (1+ years)
- Stand up a static, read-only browser archive of removed-feature data for 12 months post-sunset (email-verification access, minimal storage cost). `[single]`
- Negotiate one destination-app migration partnership per cut feature and surface "Export to [Partner App]" inside the export flow. `[single]`

---

## Key Considerations

**Opportunities**:
- Public "Simplification Roadmap" framing turns the announcement into a rallying point for existing fans and pre-empts surprised Reddit/Twitter posts.
- A "we gave 75 users the new app" behind-the-scenes narrative, published before launch, creates social proof and defuses the "they didn't listen" critique.
- Legacy-mode opt-in rate doubles as a data signal: high opt-in flags a feature that may deserve a migration path rather than a hard cut.

**Risks & Challenges**:
- Per-feature export engineering is roughly one sprint per feature — real cost against a 6-person team.
- A beta seeded with the most engaged (multi-feature) users risks manufacturing vocal critics rather than ambassadors.
- A "we got better" claim shipped alongside only removals (no visible improvement) is visibly untrue and erodes credibility.

**Trade-offs**:
- Confident public broadcast vs. per-user personal respect — the cluster argues for funding both simultaneously, which is the expensive path.
- Honest acknowledgment of loss vs. apology — the brainstormer draws a sharp line, treating apology as a signal of uncertainty.

**Conspicuous absences** (stances the brainstormer's output never took):
- The brainstormer names users, power users, and beta testers but never the **6-person engineering / support team's own capacity** as a constraint on this plan. Per-feature exports, a partner deal per feature, personalized per-user account emails, a maintained 12-month archive, and a two-stage beta are each recommended as if free of staffing trade-offs — yet Question 13 itself cites that same 6-person team as the reason for cutting features. The plan's own preconditions (who builds and runs all this) are never established.
- Every recommendation assumes the **retention upside justifies the cost**, but no answer surfaces the class of user for whom no message works — users who will churn regardless. No threshold or kill-criterion is offered for deciding when respect-driven effort stops paying off, leaving the program open-ended.

---

**Questions addressed**: 4
**Response sources**: 1 (generic brainstormer)
