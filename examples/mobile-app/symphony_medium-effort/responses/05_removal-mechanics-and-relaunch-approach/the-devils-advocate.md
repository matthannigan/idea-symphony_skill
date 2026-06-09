---
project-name: "Feature-Bloated Mobile App MVP Reset"
session-dir: "test-runs/mobile-app/med"
datetime: 2026-04-28
effort: "medium"
stage: "Phase 3: Multi-Perspective Brainstorming"
model-requested: "haiku"
model-reported: "claude-haiku-4-5-20251001"
topic-cluster: "05_removal-mechanics-and-relaunch-approach"
persona: "The Devil's Advocate"
---

# Removal Mechanics and Relaunch Approach - The Devil's Advocate

---

## Mapping the Load-Bearing Walls

* **Assumption: you've actually identified the dependencies.** The engineering team likely doesn't have a complete dependency graph. Suggest a mandatory 2-week codebase audit with visualization (e.g., D3 dependency charts) before cutting anything. The risk: you yank "meal planner" and discover the notification system, user profiles, and analytics pipeline were all wired through it—suddenly "simple removal" becomes a 3-month rewrite. Mitigation: assign one engineer to trace every feature-to-feature integration and surface hidden coupling now, before you commit to the relaunch timeline.

* **Assumption: removing a feature is faster than maintaining it.** Have you calculated the actual engineering cost of removal + testing + rollback scenarios versus just leaving it dormant? Killed code still exists in version control; users on old builds still see old UI. Mitigation: estimate removal cost per feature (codebase surgery, test coverage, regression risk) and compare it to the cost of deprecation—marking features "sunset on [date]" and leaving them functional for 2-3 months while users migrate.

* **Assumption: team identity won't resist.** Engineers who built the sleep tracker or recipe library may fight feature cuts on psychological grounds ("my work mattered"). One potential challenge: this resistance can disguise real technical concerns. Mitigation: involve engineers in the dependency audit so they own the decision rather than fighting a directive from above. Frame cuts as "we're doubling down on what actually worked," not "your features failed."

* **Assumption: secondary effects are knowable.** A feature used by 2% of users may gate critical user flows for the remaining 98% (e.g., social features used by power users who drive retention). One potential challenge: you won't know this without deep session-flow analysis. Mitigation: run a 2-week behavioral analysis—trace session paths for retained vs. churned users; see which features correlate with retention, even if rarely used. Cut based on data, not download counts.

---

## Incremental Sunset, Clean Break, or Parallel Legacy

* **The partial-simplification trap is real—and you may already be in it.** If you remove 6 features but keep 9, you still have UI sprawl and complexity—you've just annoyed existing users without gaining traction with new users. One potential challenge: the "clean break" sounds decisive, but a full relaunch means building the new app while supporting the old one, burning runway on two codebases. Mitigation: decide first whether you're betting on *converting* existing users (incremental sunset, gradual UX migration) or *replacing* them (clean break, accept 30-40% churn). The cost difference is massive—incremental is 50-60% of a fresh build; clean break is 100% + legacy support.

* **The 8-month runway is probably optimistic for a clean break.** You're estimating engineering cost, but you're not factoring in: app store review delays (2-3 weeks per release), QA for the new simplified app (4-6 weeks minimum), marketing/repositioning ramp (3-4 weeks), and the inevitable bugs that surface in production. A clean break that "should" take 4 months often takes 6. Mitigation: add a 2-month buffer. If the simplified product isn't shipping by month 6, you're out of runway for pivoting or course-correcting.

* **"Simplification as an upgrade" narrative may not work for users who loved the features.** Existing users with high feature usage will churn; new users will try the simplified version but have no loyalty. One potential challenge: you lose both populations in the middle period. Mitigation: consider the parallel legacy path more seriously—keep the old app as "Professional" or "Full," release the new one as "Lite" (lower friction, focus, better retention), and let users choose. This costs more in the short term but lets you test whether the simplified product actually retains better before sunset-dating the full version.

* **Engineering cost estimates for "incremental" often underestimate feature coupling.** You might plan a 3-month incremental sunset, but if 40% of features are entangled, you're really doing 5 months of surgical removal + testing. Mitigation: before committing to incremental, run the dependency audit (see previous question). Then compare: "surgical removal cost" vs. "new-build cost." Sometimes a clean break is actually cheaper because you're building once, not rebuilding-while-maintaining.

---

## The Eight-Month Countdown and the Recovery Dip

* **A 3–5 month retention-recovery dip is optimistic if you're losing users to churn and gaining new users from word-of-mouth.** The real question: what's your growth assumption? If you assume the simplified product lands with a 4% retention rate (matching your current baseline) and takes 4 months to climb to 12%, you've lost 400K+ users by month 3 and may never recoup them before runway ends. One potential challenge: the reinforcing dynamic works *both ways*—if retention doesn't improve visibly by month 3, team morale tanks, marketing can't pitch the "focused product" story, and you spiral into fundraising desperation. Mitigation: define a hard recovery target by month 3 (e.g., "relaunch product must hit 10% 30-day retention by end of month 3"). If you miss it, trigger a pivot decision immediately, not a sunk-cost descent.

* **"Attracting new users" assumes the simplified product is actually better.** You're removing features people know exist, but are you *improving* the experience for core users, or just removing noise? One potential challenge: if the core feature (e.g., workout tracking) is no better than competitors, new users won't download it; they'll use Strava, Apple Fitness, or Peloton. Mitigation: run a 4-week beta with 500 new users and 500 existing power users *before* full relaunch. Measure whether the simplified version actually drives higher retention and engagement. If the beta hits 15% 30-day retention, launch full. If it stalls at 6%, kill the relaunch and double down on fixing the core feature instead of cutting others.

* **The contingency for a 10-month recovery timeline is: you run out of money.** If simplified product takes 10 months to prove itself and you have 8 months of runway, you're insolvent. One potential challenge: by month 7, you're making decisions under financial duress, not clarity. Mitigation: before relaunch, secure an extension (bridge round, investor commitment) or create a hard pivot plan. Define the no-go date: "If we don't see evidence of recovery by month 5, we stop the relaunch and pursue acquisition/pivot." This forces discipline instead of hope-driven deadlines.

* **You're assuming a "reinforcing dynamic" exists, but you haven't validated it.** Maybe users churn because of feature bloat, *or* maybe they churn because the core feature (workouts) is clunky compared to competitors. Removing features won't fix a weak core. One potential challenge: you simplify, launch, and discover that retention still tanks because users try the app, find the core feature underwhelming, and delete it anyway. Mitigation: before cutting features, run a month-long experiment where you *hide* (don't remove) 12 of 15 features for a cohort of new users. Measure whether a simplified UI + core features alone drives better retention. If it does, cut. If retention is the same, the problem isn't feature bloat—it's the core product. Don't relaunch until you've fixed that.

---

**Response count:** 4 responses per question  
**Cluster responses:** 12 total  
**Tone:** Constructive critique paired with concrete mitigation strategies, testing, and decision-forcing mechanisms
