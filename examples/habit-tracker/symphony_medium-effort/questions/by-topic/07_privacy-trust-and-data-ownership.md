---
project-name: "Modern Habit Tracker Web App"
effort: "medium"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7"
---

# Topic Cluster 07: Privacy, Trust, and Data Ownership

## Questions

1. **Privacy as legible trust signal, not invisible feature**: The PRD commits to minimal analytics, no third-party tracking SDKs, and no session recording — all strong positions — but privacy-by-design is only a differentiator if users know about it and trust the claim, and without a third-party audit, open-source codebase, or public privacy policy that makes the commitment verifiable, this posture risks being indistinguishable from competitors who make similar claims without honoring them; how does the team make the commitment credible and legible to the target user, is that communication strategy part of the MVP scope, and what would it mean to make privacy a trust-building feature rather than a constraint that is invisible to users?
2. **Privacy posture as structural feedback loop**: Committing to no behavioral analytics removes entire classes of optimization tooling — how does operating without behavioral analytics shape the feedback loop between the team and its users over time, what alternative signals (support requests, retention curves, export frequency) replace the data the team will not collect, how robust are those proxies, and does a privacy-conscious user base generate more word-of-mouth in privacy-conscious communities (strengthening the app's positioning) or create a ceiling effect where the addressable market is smaller than it first appears?
3. **Local-first as double-edged sword**: The PRD favors a local-first data model, which aligns with privacy values — but what happens to user data when they switch devices, lose a phone, or move between browsers; one failure mode is that the users most likely to pay (30-day actives with full history) are also the most likely to lose months of habit data in a device migration, converting a privacy feature into a trust-destroying data loss event, so what is the minimum cloud-sync story the team needs at launch to protect paying users' data without compromising the local-first architecture, and what are the concrete engineering cost differences at v1 (development time, infrastructure cost, offline complexity) at what active user scale does the cloud-sync cost per user become non-trivial for a solo-dev operation with a $3/mo price ceiling?
4. **Data export as dignity, not just feature**: The PRD lists CSV export as a paid feature. From the user's perspective, their habit log is a record of their own life and effort — not content the app created. What does it communicate about the power relationship between user and product to gate access to one's own data behind a paywall?
5. **Zero-knowledge self-tracking**: Take the privacy posture to the absurd extreme — what if the app stored nothing on the server, ever, and the server's role was purely relay, not retention? What would users actually lose, and what new trust dynamics would it create with the target demographic? *The insight: "minimal analytics, no third-party tracking" is a policy stance; asking what zero-server-memory forces in the architecture reveals how much of the current design quietly assumes server-side habit data is necessary.*

---

**Question count**: 5
**Cluster focus**: How to convert the privacy posture from an invisible design constraint into a legible, verifiable trust signal, and what the local-first architecture costs users when devices change.
