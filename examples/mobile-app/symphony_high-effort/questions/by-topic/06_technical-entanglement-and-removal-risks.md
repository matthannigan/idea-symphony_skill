---
project-name: "Feature-Bloated Mobile App MVP Reset"
effort: "high"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 06: Technical Entanglement and Removal Risks

## Questions

28. **Dependency graph, second-order effects, and the entanglement budget**: Deeply integrated features rarely uncouple cleanly — shared data models, shared notification pipelines, and shared analytics instrumentation may mean that "removing" a feature creates new bugs and cascading debt rather than reducing maintenance load. How would you systematically map the dependency graph of the 15 features to surface both architecturally clean removals and the shared-state second-order effects that don't surface until after launch — and what's the contingency if removal proves costlier than expected within the 8-month runway? If features are removed from the UI but backend infrastructure is left in place "temporarily" to avoid risk, what mechanism prevents that infrastructure from surviving indefinitely and quietly consuming engineering time, and is a clean architectural break at relaunch actually achievable in 8 months given the team's current burnout state?
29. **Load-bearing walls vs. partition walls**: Structural engineers identify which walls carry the building's weight before renovating — given that some of the app's 15 features may be load-bearing in the codebase even if they're invisible to users, how should the team map technical dependency structures onto product priority decisions, and where do those two maps conflict?
30. **Keystone features and trophic cascades**: Ecologists know that removing a keystone species triggers cascades that reshape the entire ecosystem, often in ways that weren't predicted by studying the species in isolation — which of the app's features, if removed, would cascade into unexpected user-behavior changes, and how would you design a pruning sequence that protects against unintended collapse of the remaining retention loops?
31. **Deep integration as a forced-clarity audit**: Removing deeply integrated features is framed as a technical risk, but integration depth also reveals which features the codebase has been "voting for" through accumulated investment. How could a structured audit of which features are most deeply entangled in the codebase—rather than a purely user-data or strategic exercise—surface a different and equally valid hypothesis about the app's true core, and what would it mean if the technical answer contradicted the retention data?

---

**Question count**: 4
**Cluster focus**: How shared infrastructure, dependency graphs, and load-bearing code constrain which features can actually be cut cleanly within an 8-month window.
