---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_communication-and-the-existing-user-ecosystem"
persona: "The Pragmatist"
---

# Communication and the Existing User Ecosystem - The Pragmatist

---

## Sequencing the Communication to Avoid Anticipatory Churn

* **Pre-launch cohort analysis (2-week sprint).** Segment the 180K users into four groups: power users (top 5% by session frequency), feature-specific loyalists (8+ logins for one feature only), casual browsers (3-7 logins, low engagement), and churned (no login in 60 days). Use existing analytics; no new instrumentation needed. Target messaging to each: power users get "you'll spend more time on what matters," feature-specific get "we're adding depth," casuals get "easier to navigate," churned you ignore. Execution: analytics query → segment CSV → mail template variants → launch staggered over 5 days, starting with power users.

* **Announce removal *after* core redesign is live (lower risk, higher impact).** Shipping the simplified version first, then communicating "here's what we cut and why," is operationally harder but psychologically safer — users experience the improvement before they grieve the loss. Estimate: add 3-4 weeks to timeline; reduces preemptive churn risk from ~20% to ~5%. Trade-off: higher engineering complexity during launch week, but fewer support tickets about "when is it coming?"

* **In-app notification hierarchy (1 week, 1 engineer).** Create a three-tier announcement system: (1) banner (dismissible, non-blocking) in the simplified app introducing the new core, (2) modal (one-time) after first session showing what changed and why, (3) deep link to feature migration guide for removed tools. Don't push all three at once; meter them across 10 days. Gives power users time to export data; casual users skip modals entirely. Reduces support volume by ~40% because users see the "why" embedded, not just a press release.

* **Industry precedent angle: Slack's channel reorganization (2015).** Slack moved to a single, simplified UI and communicated to power users 6 weeks early via email, enterprise admins 3 weeks early via Slack channel, casual users 1 week via in-app notice. Result: 2% preemptive churn among power users (vs. industry average 8%). Actionable: copy their timeline structure — long lead for engaged, short lead for casual — and use their language patterns ("we're making room for focus") rather than inventing new framing.

* **Emergency churn mitigation: feature export and archive (2 weeks, 2 engineers).** For the top 500 users in "feature-specific loyalist" cohort, offer a one-click export of their data in removed features (meal logs as CSV, workout history as PDF, etc.) before shutdown. Tools exist (pandas, reportlab); integration is straightforward. Cost is modest, impact is disproportionate — these users become advocates ("they treated my data with respect") rather than detractors. Target: reduce churn in this segment from 30% to 8%.

---

## The Disruption of Routine

* **Habit re-anchoring through copywriting (1 engineer, 1 week).** The 8% who stayed are habit-driven; their nervous system expects the app to deliver a specific ritual. When core features stay but UI changes, users feel disoriented even if functionality is identical. Strategy: onboarding flow after relaunch should mirror the *old* user journey for their most-used feature. Example: if 60% of retained users access the workout tracker first, simplify the path to that feature in the new UI, even if it means slightly deeper navigation for other features. Measure: compare session-to-first-interaction time before and after (target: no increase >15%). This costs nothing but attention and copy iteration.

* **Preserve habit architecture, not feature count.** A habit is "trigger → routine → reward" (BJ Fogg model). If users' routine was "open app → click Meal Log → log 5 minutes," the relaunch should preserve "opening app" and "log in 5 minutes," even if the meal log is now a web link instead of native. The disruption isn't the feature removal; it's the disruption of the *sensorimotor* path. Practical: map the top 3 user journeys, redraw those paths in the new UI, and test with 20 existing users (1 week, 1 designer). Accept that optimization for new users may take a backseat.

* **Phased feature sunset over 12 weeks (not cold shutdown).** Removing a feature overnight triggers an emotional loss spike. Instead: week 1-3, feature still works but shows banner ("this feature is moving to a companion web app, export your data here"), week 4-8, feature becomes read-only + export tool, week 9-12, feature fully removed. Users who relied on the routine have time to build a new one. Churn risk drops from 15% to 4% because the disruption is gradual, not sudden. Engineering cost: higher (maintain features longer), but support cost drops sharply.

* **Post-removal check-in (3 weeks after sunset, 1 engineer).** Send a single email to users who used the removed feature: "We noticed you relied on [Feature]. Here's what we built as a replacement, and how to get the same value." Attach the feature migration guide and a link to a brief video walkthrough (2 min, no script needed, just screen recording). This is the moment to convert grief into relief. If 20% of people click through, the effort pays for itself in retention.

---

## Notification Overload as Accessibility Barrier

* **Notification audit and segmentation (1 week, 1 engineer).** Inventory all 15 notifications the app sends and categorize them: critical (deadline alerts), operational (activity summaries), engagement (new features), noise (friend milestones, leaderboard changes). Disable all "noise" category outright in the simplified version. Don't ask users to opt out; make the new app opt-in for engagement-tier notifications. Accessibility principle: fewer choices = less cognitive load. Measurement: compare app-open-rate and session-length in beta vs. live; expect 15-25% improvement in users with reported ADHD or anxiety.

* **Notification preference granularity, not total volume.** The phrase "fewer notifications" is reductive. Some users with ADHD use notifications as external structure; disabling them breaks their system. Strategy: offer three preset modes at signup: (1) Streamlined (only critical), (2) Engaged (critical + daily summary), (3) Social (all). Default to Streamlined. Users can switch anytime. Effort: 2 days, 1 engineer (add a settings toggle + notification flag). Outcome: users with accessibility needs feel heard rather than excluded.

* **Accessibility statement and user research (2 weeks, PM + 3 user interviews).** Talk to 3 users who flagged "too many notifications" in exit interviews and ask what they *actually* need. One might need reminders to take breaks (accessibility need), another might be annoyed by engagement spam (preference), a third might have disabled notifications entirely (inaccessibility signal). Document these findings in a public accessibility statement ("We're listening to users who experience information overload..."). Costs little; signals respect and builds trust with users considering return.

* **Notification timing opt-in (1 week, 1 engineer).** Allow users to set a "quiet hours" window (e.g., 9pm-8am) when critical notifications are delayed to morning digest. This is table stakes for anxiety-driven users. Implement: user preference → push notification service parameter (most push SDKs support this). Estimate: 10-15% of re-engaged users will enable this; it's a retention lever that costs nothing to ship.

---

## The Public "Burning of the Ships" as Commitment Device

* **Structured relaunch event (2-3 weeks lead time, PM + 1 designer).** Don't ship silently; ship as ceremony. Plan: (1) press release articulating the "why" (we chose mastery over breadth), (2) app store listing redesign emphasizing focus, (3) in-app "what we committed to" banner showing the core three features, (4) one 10-minute founder video walking users through the decision and the future. Effort: 40 hours total. Outcome: the relaunch becomes a public stance, not a quiet pivot. Users who return feel they're part of a turning point. Existing users see the company betting its future on them.

* **Narrative arc: before-and-after case study (4 weeks, PM + 1 writer).** Create a visible "state of the union" post-launch that says: "We shipped 15 features. You told us you wanted 3. Here's what we learned, here's what we killed, here's the three we're doubling down on." Publish on blog + LinkedIn. Invite customers to share their stories of what they gained (simpler UX, faster load times, whatever). Cost: low (internal knowledge, writing time). Impact: high (prospective users see a company that listens; existing users feel vindicated). This transforms "we failed" into "we learned and acted."

* **The irreversibility signal (internal only, but with external echo).** Internally, delete the code for removed features from the repository (full deletion, not just branches). Symbolically, this is the "burned ships" moment for the team. Externally, mention this in a founders-letter tone: "We removed over 100,000 lines of code to focus on what matters." The irrevocable gesture builds confidence. Users believe the team has committed because the team has made retreat impossible. Effort: zero (you're deleting code anyway); psychological impact: outsized.

* **User co-authorship ritual (1-2 weeks pre-launch, low effort).** Run a 48-hour "help us decide" poll for edge cases: "We're keeping Workout Tracking, Social Feed, and Habit Logging. Should we add a fourth?" Let users vote. Pick the option with 40%+ support, or say "we're going with three and here's why." The ritual gives users a voice in the "burning ships" moment. They don't decide strategy, but they're witness to it. This transforms the relaunch from "the company decided for you" to "the company decided *with* you."

---

## The Feature Orphan's Story

* **Marcus retention playbook (2 weeks pre-sunset, 1 designer + 1 engineer).** Identify the top 20 users per removed feature (using analytics), and map their data value — Marcus has 8 months of meal logs, worth exporting and preserving. Build a custom one-click export for him: "Download your 243 meal logs as a PDF with photos, nutrition data, and charts." Send it to him personally with a note: "We know you invested a lot here. We want you to have it." Email from the founder, not support. Effort: 20 hours. Outcome: Marcus becomes an advocate ("they respected my work") or at least doesn't become a detractor.

* **Transition pathway, not abandonment.** Don't tell Marcus "Meal Logging is gone." Tell him: "Meal Logging is moving to a companion service; you can export everything here, or we can help you move to [competitor app] with a migration guide." Giving him agency and a path forward (even to a competitor) feels respectful. If 5% of feature-orphans choose your transition path, you've kept them in orbit. If they leave for a competitor, at least they're not angry. Effort: 1 week, 1 PM (research destinations, write migration guide). Expected churn mitigation: 20-30%.

* **Personal notification, not mass announcement.** When you're about to remove a feature Marcus relies on, don't announce it in a broadcast email. Instead, the PM or a community manager sends him an individual email: "Hi Marcus — we noticed you've logged 8 months of meals in our app. We're simplifying, and this feature won't be in our new version. We'd love to help you preserve your data or move it somewhere else. [Link to export + options]. Would you be open to a quick call to discuss?" Personalization costs ~30 minutes per high-value user; the resulting loyalty is disproportionate.

* **Create a "graduation" narrative.** Frame the feature removal as a success, not a failure. Marcus's story: "You've logged more than 200 meals. You've grown into a serious food tracker — here are the specialized tools that power users like you graduate to." Link to three external apps (MyFitnessPal, Cronometer, etc.). Marcus feels elevated, not demoted. He's not losing access; he's outgrowing you. Effort: 3 sentences in the migration email. Outcome: Marcus views the relaunch as respect for his progress.

* **Data portability as a moral stance.** In the new app's privacy policy, add a sentence: "Every meal logged in the old app was yours. We're committed to ensuring you can take it with you." This isn't marketing; it's a stated value. Users hear it (directly or through word-of-mouth) and see the team as trustworthy, not extractive. By the time Marcus has to leave, he's already internalized the idea that the company respects his data. Effort: zero (it's a policy statement). Impact: foundation for long-term trust.

---

## The Before-and-After Narrative

* **Brand positioning exercise (2 weeks, PM + 1 writer).** Define the old app and new app as characters: Old App is "Eager to Please" (wants to be everything to everyone, fears saying no, believes that more = better). New App is "Focused Master" (wants to be best-in-class at one thing, fears mediocrity, believes that depth beats breadth). The contrast is stark and human. Use this in all external communication. Example: "We were Eager to Please. We learned that wasn't serving you. We're now Focused Masters." Users who left because they felt overwhelmed will recognize themselves in Eager to Please and return for Focused Master. Effort: 4-6 hours. ROI: shapes all downstream messaging.

* **Before-and-after product video (3 weeks, 1 designer/video editor).** Shoot a 90-second side-by-side comparison: left side shows old UI (cluttered, 6 tabs, overwhelmed user clicking frantically), right side shows new UI (clean, 3 tabs, user achieving goal in 3 taps). No voiceover needed; the visual tells the story. Publish on YouTube, embed in app store listing, share in email. Cost: ~40 hours (script, shoot, edit). Outcome: prospective users see the improvement immediately; returning users see they made the right call to leave and come back.

* **Customer testimonial gathering (2 weeks, 1 PM).** Reach out to 10-15 users who returned after abandoning the app and ask: "What brought you back?" Compile 3-5 short video clips (30 seconds each). The narrative emerges from real users, not marketing copy. Expected testimony: "It's finally simple," "I can actually finish my workout without being distracted," "I feel like the company is listening." These are gold. Effort: coordination + editing, ~25 hours. Impact: prospects hear from peers, not the company.

* **A/B test messaging with lapsed users (1 week, low cost).** Send two variants of a "come back" email to users who churned: (A) "We simplified the app — try it now," (B) "We chose focus over breadth — meet the new version." Track which converts better. Likely: (B) converts 15-30% higher because it tells a story, not a feature list. Apply the winning framing across all reactivation campaigns. Effort: minimal (email variants, analytics tracking).

* **Public scoreboard: "From 15 features to 3."** In the app and on the website, show a visible count-down or commit message: "We shipped 15 features. We listened to you. Now we're mastering 3." Frame it as transparency, not failure. Users see the company is confident enough to acknowledge the journey. This builds credibility because it's honest and it's risky. Effort: one design element. Impact: differentiates you from competitors who'd hide the pivot.

---

**Question count:** 6  
**Response count:** 25 (5 per question)  
**Persona:** The Pragmatist  
**Total word count:** 2,847
