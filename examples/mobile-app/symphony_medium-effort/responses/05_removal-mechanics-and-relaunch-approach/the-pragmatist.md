---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_removal-mechanics-and-relaunch-approach"
persona: "The Pragmatist"
---

# Removal Mechanics and Relaunch Approach - The Pragmatist

---

## Mapping the Load-Bearing Walls

* **Dependency audit first, then removal plan.** Before cutting anything, map data flows and API calls across all 15 features. A practical approach might be running a three-day internal sprint where two engineers trace each feature's tendrils—shared databases, notification systems, authentication gates. Document which removals create orphaned code paths. This costs ~2 person-weeks but prevents the surprise rework that burns another month later.

* **Incremental extraction + parallel testing.** Rather than ripping features out wholesale, decouple them first. Move marketplace notifications to a separate service, isolate the coaching module's data model. Test that remaining features still work after each extraction. This adds ~1 week per major feature but catches broken dependencies before users see them. Lower risk, slightly longer timeline.

* **Accept technical debt in non-core zones.** Some entanglement is acceptable. If the meditation guide is tangled with the analytics framework, keep the analytics but stub out meditation endpoints. You don't need perfect architecture; you need users opening the app again. Pragmatically, unfinished deletion of code is faster than perfect cleanup. Set a "debt ceiling" at 2–3 known rough edges, then move on.

* **Prototype the simplified architecture with one persona.** Pick your strongest remaining feature (likely workout tracking) and rebuild its data model from scratch as a proof-of-concept. This takes ~2 weeks but gives you a template for how the lean codebase should look. Then you know what debt you're accepting in other features.

---

## Incremental Sunset, Clean Break, or Parallel Legacy

* **Clean break costs ~6–8 weeks; incremental costs 12+ and fails.** A pragmatic read: cutting features gradually while older versions linger confuses users and splits your testing effort. Pick a hard relaunch date—say 12 weeks out. Spend weeks 1–6 building the simplified core in a new codebase branch. Spend weeks 7–10 migrating persistent user data (workouts, progress) and testing. Week 11 is comms. Week 12 is the switch. This is faster than incremental patching because you eliminate code review overhead and can parallelize removal work.

* **For the psychological reframe: "evolution, not retreat."** Don't frame it as "we built too much and we're cutting." Frame it as "we listened to users (overwhelmed) and designed the focused product they actually wanted." The relaunch narrative should highlight the three core features, emphasize speed and clarity, and position it as bold simplification—a competitive advantage against bloated competitors. This messaging work (1–2 weeks) can offset some churn psychology.

* **Parallel legacy path is expensive and risky.** Maintaining two versions means two QA cycles, two support streams, and confusing messaging. Users will resent the implication they're stuck on "old" software. If you have a small passion base for a removed feature (say, 200 users on recipe library), build a lightweight companion web app post-relaunch, not a parallel mobile version. That's a 2-person-week one-off, not an ongoing drain.

* **Hybrid: Soft cutover with feature flags.** Deploy the simplified build to 20% of users (beta ring) for 2 weeks. Monitor crash rates, session length, and engagement. Once confident, flip the flag to 100%. This gives you a ~2-week safety net without maintaining parallel infrastructure. Costs one engineer's time for feature-flag wiring but radically reduces launch risk.

---

## The Eight-Month Countdown and the Recovery Dip

* **Realistic timeline: 3–4 months to MVP simplification; 4 months to stabilization.** Weeks 1–12 are rearchitecture and relaunch (see previous answer). Expect immediate churn: 20–30% of your 180K active users may uninstall in week 1 (loss of their favorite features). But retention of *remaining* users should jump—8% to 20–25% after 3 months if you've picked the right core three features. You're trading total users for stickier users. By month 4, new user acquisition should accelerate because the app is no longer overwhelming.

* **The dip is recoverable if you own the narrative.** You have 8 months of runway. Allocate it: 2 months pre-relaunch (comms, beta testing), 1 month relaunch week, 3 months post-launch stabilization and feature polish (yes, you'll want to add depth to the three core features once you have breathing room), 2 months buffer for contingency or extended user recovery. This assumes retention starts recovering in month 2 post-launch and accelerates through month 5.

* **Rate-limiting step: user education and app store momentum.** Feature loss gets attention; app store algorithms punish sudden churn and one-star reviews. Your biggest risk is hitting negative network effects in the store. Mitigate this by: (a) pre-announcing the relaunch 4 weeks prior to build anticipation, (b) ensuring the three core features have polish and performance that measurably beats competitors, (c) investing in paid user acquisition (iOS/Android ads) for 2 months post-launch to offset organic decline. Budget ~$100–150K from your runway for acquisition and comms, not engineering alone.

* **Contingency: if adoption stalls at month 6, pivot to partnerships.** If your simplified app isn't gaining traction independently, can you integrate it into adjacent platforms (fitness wearables, gym memberships, health insurers)? This is a 3–4 month effort but sidesteps the "prove yourself standalone" grind. Or find an acquirer who wants the focused feature set plus your user base. Neither is ideal, but you'd have 2 months to explore if the standalone relaunch isn't working by mid-month 6.

---

**Response count: 12 responses across 3 questions**  
**Personas represented: The Pragmatist (1 of 3 personas for this cluster)**
