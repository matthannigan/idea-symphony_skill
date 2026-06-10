---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/high"
datetime: 2026-04-27
effort: "high"
stage: "Phase 2 Step 2.2: Persona-Based Question Generation"
model-requested: "sonnet"
model-reported: "claude-sonnet-4-6"
persona: "The Systems Thinker"
category: structural
stream: synthesize
volume: 13
---

# Brainstorming Questions from The Systems Thinker: Feature-Bloated Mobile App MVP Reset

---

## Feature Sprawl as a Self-Reinforcing Trap

1. **The feature-begets-feature cycle**: Each time the team added a feature to compensate for weak retention, did that addition further dilute the app's identity — and if so, what broke the signal that would have told them to stop adding and start removing?

2. **Maintenance debt as a compounding drag**: As engineers split their attention across 15 features, bug rates likely rose on each, which may have triggered more emergency patches, which left less time for any single feature to improve — how has this self-reinforcing fragmentation of attention shaped the current codebase's architecture, and what would "unfragmenting" attention actually require structurally?

3. **User confusion feeding abandonment feeding confusion**: If users who churn cite "overwhelming," and the remaining 8% who stay may be a self-selected group who figured out a workaround, what does the current retention number actually tell you about the remaining audience versus the original intended audience?

4. **Notification dependency as an engagement substitute**: If the team has been using notifications to prop up session-start rates, what happens to the DAU/MAU ratio the week after push notifications are cut — and would that reveal the true baseline of intrinsic engagement the simplified product would need to build from?

---

## Identifying the Viable Core Under the Noise

5. **Usage data as a lagging indicator**: Feature usage metrics reflect what users tried given the current navigation architecture — not what they would use if that feature were the primary experience. How should the team correct for this structural distortion when using analytics to select the 3-4 core features?

6. **The passionate minority problem as a system signal**: When a feature has a small but deeply engaged user base, that engagement pattern could mean the feature addresses a real unmet need the majority hasn't discovered yet, or it could mean the feature serves a niche incompatible with the main audience. What structural tests would distinguish genuine early-adopter signal from a feature that simply rewards a different user type entirely?

7. **Strategic vision vs. data-derived core**: If the data points toward features that are most used (but possibly only because they're easiest to find), while the team's strategic instinct points toward a different core, which direction carries more risk of being wrong — and how does the 8-month runway change which type of error is more recoverable?

8. **Second-order effects of cutting deeply integrated features**: Removing a feature that shares authentication, data models, or notification infrastructure with retained features can degrade the retained features' performance in ways that don't surface until after launch. What mapping process would surface these hidden structural dependencies before the cut — not just the obvious UI dependencies but the shared-state ones?

---

## Relaunch Dynamics and User Response

9. **Churn as a delayed signal**: Users who don't immediately churn after a simplification announcement may still leave 30-60 days later when they discover their specific use case is gone. How should the team design their relaunch communication and timeline to compress this discovery window rather than spread churn out over months, which would make the retention signal harder to read?

10. **The "killing features" announcement as a self-fulfilling churn trigger**: Announcing feature removal may cause users who barely used those features — but felt reassured by their existence — to question whether the app still fits them. What framing strategies neutralize this reaction by directing attention toward what's being gained rather than what's leaving?

11. **Redefining success metrics before launch, not after**: If the team sets a new retention target post-relaunch without changing what they measure, they risk optimizing the simplified product toward the same behaviors that produced 8% retention in the bloated one. Which current metrics are artifacts of the bloated architecture and would be misleading to carry forward — and what new measurements would better reflect whether the simplified core is working?

---

## Team and Organizational Dynamics

12. **Burned-out team as a constraint on decision quality**: A team maintaining 15 half-built features has been in triage mode long enough that their judgment about which features matter most may be shaped more by which ones caused the most pain than by which ones users value most. How do you structurally separate "features the team is tired of maintaining" from "features users don't actually need" — since the answer to both questions should influence the cut, but for different reasons?

13. **The morale rebound that cuts can produce**: Simplification often releases engineering attention that was fragmented across unmaintainable surface area — and that release can produce a burst of quality and speed on the retained core that has a direct effect on the product. What is the team's current estimate of how many engineering hours per week are spent in maintenance and bug-fixing on features slated for removal, and what does that number imply for the quality uplift the simplified version could realistically achieve in 8 months?

---

**Total questions**: 13
**Topic clusters**: 4
