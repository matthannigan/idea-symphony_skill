---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
persona: "The Connector"
---

# Equity, Inclusion, and Whose Voice Shapes the Decision - The Connector

---

## Accessibility Across User Circumstances: Bridging Constraint-Based Design with Inclusive Architecture

* **Summary.** There's a structural parallel here with how hospitals design emergency-room triage: the system must serve both the critical-care patient (complex needs, high resources) and the walk-in clinic patient (minimal resources, urgent need). The app's current design assumes users have time, mobility, gym access—exactly what the hospital model rejects. If you reframe "core features" not as *which feature is best* but as *which combination serves the broadest accessibility envelope*, you flip the question: instead of asking "which features work for most users," ask "which features work for users with the fewest resources?" Workout tracking for someone with limited mobility isn't the same as tracking for a CrossFit enthusiast—but a feature that serves both is an architectural win. The constraint becomes the filter: design the simplified app as the version that works with intermittent connectivity, no gym access, and 10 minutes per week. Everything else cascades from that.

## Design With vs. Design For: Inverting the Feedback Hierarchy with Structural Mirrors

* **Summary.** The feedback bottleneck you've named—over-representation of articulate, motivated users—mirrors a known pattern in urban planning: the loudest residents tend to shape community design, leaving quieter populations (renters, elderly, non-English speakers) structurally marginalized. Cities that solved this created a parallel feedback system: not more surveys, but *accessibility observers* embedded in the design process. Invite 3–5 users from your most underserved segments (lower retention, non-English-speaking markets, accessibility-dependent users) to be decision-making participants in feature selection, not survey respondents. Give them veto power on specific features. This inverts the power dynamic: the 8% retention cohort becomes the baseline; the underserved user becomes the co-architect. The structural shift is moving from "tell us what you want" to "here are our three options; which doesn't serve you, and why?"

## Who Is Not in the Data: The Inverse User Research Model

* **Summary.** The 92% churn rate is actually your richest data source, mirrored by how epidemiologists study disease: they don't just study people who got sick; they intensively interview people who were *exposed but didn't get sick*. Run a parallel retention study focused not on "why did the 8% stay?" but "what would need to be true for the 92% to return?" Interview deleted-app users specifically, in their own environment (not in-app surveys). The assumption baked into your current analysis is likely "feature richness is valuable"—but the 92% deletion rate suggests the inverse: feature abundance signals complexity, not value. The non-users and deleters are telling you something the retained 8% won't: they're showing you what a *genuinely simplified* product would need to look like.

## The First-Open Moment: Emotional UX as a Co-Decision Lens

* **Summary.** There's a parallel with how booking systems like Airbnb or Ticketmaster segment users by decision-making friction. The six-tab interface creates what behavioral economists call "choice paralysis"—but the real data isn't in analytics; it's in session behavior (which tab is opened first and never closed? which features are marked read without tapping?). Your team should spend a week *using the app as new users with no context*, alone, on their first day back from a long workout. Track every moment of confusion, every toggle-away, every notification ignored. That emotional friction is the feature-selection signal. Users saying "overwhelming" likely means not "too many options" but "I don't know what success looks like in this app." A simplified version starts by making the first-open moment emotionally clear: *this is a workout logger, period.* The shame or frustration underneath the feedback is likely "I couldn't figure this out quickly," which suggests the core feature should be something accomplishable in 30 seconds.

## Feature-Dependent Acquisition Channels: Mapping the Hidden Dependencies

* **Summary.** This mirrors supply-chain auditing in manufacturing: a single feature might be driving a channel because it solves a niche acquisition problem (e.g., meal planner keywords in App Store), but that feature may have zero correlation with retention or engagement. Before cutting, build a *feature-to-channel attribution matrix*: which of the 15 features drove each acquisition channel, and what's the retention curve for users who downloaded because of that feature specifically? The insight is this: if meal planner was your top installer keyword but meal-planner users churn at 3% while core-app users churn at 12%, you've discovered a structural pattern. The "core" features may be different for users who came looking for workouts versus users who came looking for meal planning. The reframe: instead of one simplified app, design a *single core with acquisition hooks*—where the entry point varies by user motivation, but they all funnel to the same retention engine.
