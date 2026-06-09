---
project-name: "Modern Habit Tracker Web App"
effort: "low"
stage: "Phase 2 Step 2.3: Question Synthesis"
model-requested: "opus"
model-reported: "claude-opus-4-7[1m]"
---

# Topic Cluster 07: Retention, the Day-47 Promise, and Graduation

## Questions

1. **The retention curve and the day-47 mechanism**: The PRD targets 30-day retention above 25% and envisions an app "easier on day 47 than day 2" — but what does the retention curve actually need to look like at days 7, 14, and 60 for the paid conversion funnel to be viable, which product decisions (streak grace, weekly review, notification design) have the highest leverage at each inflection, and what is the causal mechanism by which day-47 use is easier (habit internalization, reduced configuration need, personalized defaults)? Is that mechanism built into the product design, or does it depend on the user having independently succeeded — and where have you seen a product that genuinely got more seamless with time, adapting to the user rather than demanding the user adapt to it?
2. **Success-to-the-Successful feature drift under paid-tier pressure**: The PRD targets users who bounced from overcomplicated apps, but products that attract engaged power users face a predictable Success-to-the-Successful pull — power users request features, features get added, the product becomes the thing it was designed not to be, a dynamic amplified by paid-tier pressure to add visible capabilities that justify the price. What governance or product philosophy keeps the app from drifting toward complexity over time, and what are the explicit decision criteria for evaluating feature requests against the product vision before those requests arrive within the first 30 days from early users?
3. **The dropout who returned**: Picture a user who had abandoned every previous habit app after week two. They try this one, and six months later they are still using it — and they have built a habit that genuinely changed their life. What happened in weeks one and two that was different? What did the app do — or refrain from doing — that kept them from feeling like a failure?
4. **What if the app disappeared after you no longer needed it**: Most habit tools assume a permanent relationship — but what if the highest-possible success state was the app becoming unnecessary? What would a habit tracker look like if it was explicitly designed to make itself obsolete, graduating users out of active tracking once a behavior becomes truly automatic, rather than engineering indefinite engagement?
5. **The gym January effect and asymmetric motivation**: Fitness facilities know that January sign-ups have a predictable dropout curve — high activation energy at onboarding, steep decline by week six. They've learned that the physical layout of a gym (equipment placement, locker room proximity, sightlines) affects 30-day retention more than any digital intervention. What are the spatial/structural equivalents in a web app — the "layout decisions" that determine whether a user even opens the app on day 47 — and how does the PRD's "minimal on day one, invisible-but-present by week six" curve map onto what gyms have learned about environment design for long-term members?
6. **What if we tracked the absence of resistance instead of the presence of action**: Every current habit tracker, including this one, counts completions. What if we inverted the measurement axis entirely — treating a habit as "installed" not when it's performed but when performing it stops feeling like a decision? What would it look like to build an interface that detects and quantifies friction reduction over time rather than streak accumulation?

---

**Question count**: 6
**Cluster focus**: What mechanism makes day-47 use easier than day-2, whether the promise holds under Success-to-the-Successful pressure to add features, and what it means for the product to have a theory of graduation.
