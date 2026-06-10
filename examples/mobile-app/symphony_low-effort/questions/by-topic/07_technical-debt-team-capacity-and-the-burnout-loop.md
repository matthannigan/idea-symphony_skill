---
project-name: "Feature-Bloated Mobile App MVP Reset"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 07: Technical Debt, Team Capacity, and the Burnout Loop

## Questions

1. **Technical debt feedback loop**: The team is burned out maintaining 15 half-built features, which reduces the quality of each feature, which reduces user engagement, which creates pressure to add more features to compensate — a reinforcing feedback loop. How do you break this compounding dynamic before the runway runs out?
2. **Integration debt and regression risk**: What does a dependency graph of the 15 features look like — specifically, which are load-bearing infrastructure that others depend on, does that constrain which cores are feasible to build around, and have we accounted for the risk that cutting interconnected modules introduces new instability into the features that remain such that the 8-month runway absorbs a destabilized core after aggressive removal?
3. **Capacity reallocation, the designer bottleneck, and team energy released by subtraction**: With 6 engineers spread across 15 half-built features, how much engineering time is currently consumed by maintenance versus new development, and how does that ratio shift on 3-4 features — what becomes possible in the 8-month runway that is not currently? With 1 designer supporting that team, what design debt is invisible in the feature count, and how much of the "overwhelming" UX is design execution rather than feature scope? What would it look like to frame the cutting process as a gift to the team — freeing people to do one thing excellently — and what rituals could make that transition feel like momentum rather than loss?
4. **Burnout, the ownership loop, and morale in reverse**: Engineers who built features they believe in resist removing them — not from stubbornness but because their craftsmanship is attached — and that resistance surfaces as slow execution, scope creep back into the simplified version, or quiet rebuilding through the back door. Burned-out teams also tend to favor cuts that reduce their own maintenance load over cuts that optimize for user value, producing different lists. And the harder psychological problem may be the opposite: the team no longer believes in any of the features and is at risk of under-committing to even the retained core. How do you make "killing your darlings" a shared act of craft rather than a management directive, what safeguard ensures the cutting process is user-driven rather than relief-driven, and how would we know whether we're executing a focused relaunch versus going through the motions?
5. **Burn the roadmap, keep the engineers**: What if the real resource being wasted isn't features or runway — it's the cognitive overhead of a team maintaining 15 half-built things in their heads simultaneously? What if you measured morale not in features shipped but in the number of abstractions an engineer has to hold in working memory? *The insight: feature bloat may be a technical debt problem that masquerades as a product strategy problem.*
6. **The engineer's grief**: Imagine a senior engineer who spent four months building the meal-planning feature — it's elegant code, users occasionally praise it, and now the PM is proposing it gets cut. What is the internal story that engineer tells themselves about this decision, and how does the way the team frames "cutting" versus "focusing" change whether that engineer becomes an advocate or a quiet saboteur of the simplified product?

---

**Question count**: 6
**Cluster focus**: Treat the engineering reality and team psychology as load-bearing inputs to the cut, not afterthoughts.
