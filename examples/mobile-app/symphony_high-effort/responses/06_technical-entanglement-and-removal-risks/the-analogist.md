---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-28
effort: "high"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "06_technical-entanglement-and-removal-risks"
persona: "The Analogist"
---

# Technical Entanglement and Removal Risks - The Analogist

---

## Dependency Graph, Second-Order Effects, and the Entanglement Budget

* **Chemical plant deconstruction model.** Shutting down a feature is like decommissioning a chemical plant—you can't just turn off the reactor. Pharmaceutical companies use the "plant genealogy" approach: document every pipe, every shared tank, every reaction that depends on downstream outputs. Map the 15 features as reaction vessels; shared data models are pipes carrying intermediate products. Before removal, trace not just direct dependencies but contamination risk: does removing the meal planner's nutrient database break the fitness tracker's calorie calculations? Model this as a "cascade map" showing which shutdowns require multi-feature coordination. This takes 2-3 weeks for a 15-feature system but prevents costly surprise ruptures.

* **Software archaeology and controlled demolition.** Similar to how structural engineers tag "asbestos zones" before renovation, use git archaeology to identify which features were integrated early (broad roots) vs. late (shallow). Features integrated in the first 6 months touch more code than those added in month 18. Prioritize removal of late-integrated features even if retention metrics say otherwise—the technical cost is lower. This is the inverse of user-data intuition: code archaeology reframes "removal cheapness" in concrete terms the team can actually execute.

* **Temporary debt as pharmaceutical half-life.** The app company's instinct to leave "temporary" backend infrastructure feels safe but violates the pharmaceutical industry's principle: there's no such thing as temporary scaffolding in production systems. Instead, adopt explicit "removal dates" written into the codebase (like drug recall dates). Mark backend code slated for deletion with `REMOVAL_DEADLINE: 2026-08-15` comments. Create a calendar event for July 1 to audit which infrastructure hasn't been touched and either commit to keeping it or hard-delete it. This prevents six-month-old "temporary" code from becoming permanent debt.

---

## Load-Bearing Walls vs. Partition Walls

* **Structural load mapping from architecture firms.** Architecture firms use load-bearing vs. non-bearing wall identification before demolition—a feature invisible to users might carry infrastructure load. Task the team (1-2 weeks) to produce a technical load map: rank each of the 15 features by "how many other features would break if this went down?" Then create a separate product-priority map from user data. Where they conflict—e.g., the forum system has low usage but high technical load—that conflict is your actual strategic decision point. This mirrors how buildings decide to keep thick corner walls even though they're "empty space."

* **Mycelial networks in forest ecosystems.** Forests depend on fungal networks connecting trees underground; removing trees but leaving the network active redirects nutrients to other species. Similarly, if the shared notification pipeline supports the forum, social features, and challenge system, killing the forum doesn't really free that pipeline—it'll still run, just serving fewer features. The mycological insight: removing a feature is only clean if you can completely halt its supporting infrastructure. Otherwise you're just creating "orphaned scaffolding" that stays alive for no user benefit.

* **Shipping container load distribution.** Container ships balance weight distribution across holds; removing one container shifts load to others. If the analytics instrumentation is shared and report-dense, removing the meal planner changes reporting load on remaining features. The shipping industry maps this precisely: knowing the weight of each container lets you predict what shifts when you remove one. Apply the same principle—measure each feature's "reporting weight," "API call weight," and "backend worker weight" so you understand what rebalancing happens after removal.

---

## Keystone Features and Trophic Cascades

* **Predator removal in Yellowstone ecosystem.** When wolves were removed from Yellowstone, elk populations exploded, overgrazing collapsed the ecosystem—the problem wasn't the wolves' absence but the cascading behavior change. Identify which of the 15 features act as "ecosystem regulators" through psychological contract, not code dependency. The social feed might have low usage but drive notification habit; removing it could collapse engagement across retained features if users no longer expect daily "friend activity." Before removal, hypothesize the cascade: which features are predators (gatekeeping engagement), and which collapse if predators vanish?

* **Coral reef symbiosis and single-points-of-failure.** Coral bleaching cascades because reefs are symbiotic systems where algae, fish, and coral reinforce each other. Removing one feature assumes it's independent, but if the workout tracker's social-comparison loop drives the challenge system's adoption, and the challenge system drives retention, removing workouts cascades into challenge collapse. Design a "symbiosis audit": map positive-feedback loops between features (A drives adoption of B, B drives retention on A) and rank removal candidates by fewest critical symbiotic partners.

* **Species introduction order in terrarium design.** Aquarium enthusiasts know the order of species introduction matters: introduce a keystone species last, after the system is stable, and it thrives. Conversely, remove keystone species first before the system learns to depend on them. Test the removal sequence by selecting the most "isolated" feature (fewest symbiotic loops) and removing it first as a proof-of-concept. Monitor whether retained features' engagement shifts. This is the inverse of launch order: it's "de-launch order," and it reveals which removals actually cascade.

---

## Deep Integration as a Forced-Clarity Audit

* **Geological time layers and stratigraphic reading.** Geologists read rock layers to understand environmental history—older, deeper layers reveal what mattered most in the distant past. The codebase is a stratified history: features added in month 1 are embedded deeper than features added in month 11. The features with deepest entanglement aren't accidents; they're the product's "geological foundation"—they reveal what the founders and early team believed mattered. Audit the codebase by entanglement depth, then ask: "Does the technical bedrock match our current product hypothesis?" If deep integration suggests the workout tracker and social feed were foundational, but retention data says they're weak, the team has conflicting signals that deserve debate, not data-driven dismissal.

* **Literary palimpsests and intent archaeology.** Medieval monks wrote over old texts, creating palimpsests—overlaid meanings. Codebases are similar: a feature's integration depth shows how many times the team has "written over" it (refactoring, rearchitecting, expanding). High integration means the team has repeatedly invested in and reshaped that feature, treating it as consequential. If the meditation guide is deeply entangled, it suggests the team once believed it was core—even if users have since voted otherwise. This technical entanglement is a form of "intent signal" worth surfacing in the relaunch strategy: are you killing the meditation guide because it's truly peripheral, or because your go-to-market forgot to educate users on it?

* **Alloy composition and strength-critical discovery.** Metallurgists test alloys and discover that some elements they assumed decorative are load-bearing—remove them and the entire structure fails. Run a "removal simulation" on the three deepest-integrated features: for each, estimate the engineering cost to surgically extract it (not just disable, but remove). If removal cost is 400+ hours for a feature with 2% engagement, the codebase is "voting" that feature as core, even if users aren't. This technical-economic signal is worth elevating to the strategy team: sometimes the hardest-to-remove features are also the ones most likely to unlock retention if repositioned or deeply refined, rather than deleted.
