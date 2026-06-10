---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "08_equity-inclusion-and-whose-voice-shapes-the-decision"
persona: "The Devil's Advocate"
---

# Equity, Inclusion, and Whose Voice Shapes the Decision - The Devil's Advocate

---

## Accessibility Across User Circumstances

* **Summary.** Stripping the app to "core features" risks narrowing reach to affluent, able-bodied users with gym access. The meal planner, meditation guide, and home-workout library may serve users priced out of gyms—cutting them leaves money on the table and undermines inclusive positioning.

**The challenge:** How do you know which underserved segments actually exist if you're using retention data from users who already survived the onboarding gauntlet? One mitigation: before cutting features, run a lightweight survey with users who *downloaded but never returned*, specifically asking "What would have made you stay?" This reveals unmet needs invisible to retained cohorts. You might find that users without gym access are actually a distinct, valuable segment—not a liability to trim away.

---

## Design With Versus Design For, and Power Dynamics in Feedback

* **Summary.** Surveys and user interviews systematically exclude less-articulate users, non-English speakers, and people uncomfortable with formal feedback channels. Building a simplified app based on feedback from this biased sample risks creating a product that works great for engaged early adopters and alienates the less-vocal 60% of the user base.

**The challenge:** Articulate users are often NOT representative of long-tail revenue or retention. One concrete mitigation: recruit a diverse advisory board (not just interviewed informants) from underserved segments—lower-literacy users, non-English speakers, users over 55—and give them decision-making power in 2–3 design checkpoints. Pay them. Make it binding (not consultative). If their recommendation contradicts data, you've caught a blind spot.

---

## Who Is Not in the Data—The 92% and Beyond

* **Summary.** Of 180K downloads, only 14.4K users returned once. The team's feature-selection logic is optimizing for 8% retention and ignoring 92% churn. That 92% holds clues: some deleted because the app was genuinely bad, but others may have deleted because they couldn't *find* the feature they needed in the UI chaos—a navigation problem, not a feature problem.

**The challenge:** Deleting features might solve the wrong problem. One mitigation: conduct brief exit interviews with users who uninstalled within 48 hours—ask *which feature(s)* they came to use, then ask if they found it and why they left. You may discover that users came for meal planning (thought it was a nutrition app) but couldn't find it past the fitness onboarding. The fix isn't to cut meal planning; it's to unbury it or create separate onboarding paths. The app isn't bloated; it's *buried*.

---

## The First-Open Moment, Navigation Burden, and the Shame Underneath "Overwhelming"

* **Summary.** "Overwhelming" is a vague signal. Does it mean cognitive load (too many tabs), feature paralysis (can't decide where to start), or embarrassment (the app made them feel inadequate)? A user deleting after 47 seconds isn't telling you which features to keep—they're telling you the first screen broke trust. Cutting features without understanding *when* in the flow they dropped off is guessing.

**The challenge:** Simplification assumes the problem is too many features, but the problem might be a confusing hierarchy or an onboarding that demands commitment before showing value. One mitigation: instrument the app with telemetry that tracks *exactly* where users click before uninstalling (which tab, which notification, which form field causes a 15-second pause). Pair that data with session replay (with consent) for a subset of churned users. If 60% abandon at the "create a profile" screen, the problem isn't features—it's friction upstream of features.

---

## Feature-Dependent Acquisition Channels

* **Summary.** If meal planner drives App Store keyword installs (e.g., "diet" searches) and you cut it to simplify, you're not just removing a feature—you're removing an acquisition lever. The team might see short-term retention improve (fewer overwhelmed users), but long-term growth will crater because new users stop discovering the app via search.

**The challenge:** Cutting features for retention may cannibalize growth. You could end up with a product 5K engaged users love and 0 new signups. One mitigation: audit *which* features drive acquisition via which channels (app store, social, organic search) before cutting anything. Features with acquisition weight deserve deeper scrutiny—maybe they don't need to be cut, just repositioned or time-gated. For example, keep meal planning but hide it behind "Advanced Mode" (for retention), while keeping "meal plan" visible in app store keywords (for acquisition). Simplify the default onboarding while preserving discoverability for each segment.
