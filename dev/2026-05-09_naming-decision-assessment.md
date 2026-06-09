# Naming Decision Assessment — Idea Symphony vs. Idea Forge vs. Third Option

**Date:** 2026-05-09
**Inputs:** Voice memo `dev/!voice-memos/2026-05-06  Idea Symphony Final Touches.md`, polish plan `dev/2026-05-09_symphony-final-polish.md`, Perplexity prompt `dev/2026-05-09_openai-symphony-naming-research_prompt.md`, Perplexity results `dev/2026-05-09_openai-symphony-naming-research_results.md`, `idea-symphony/SKILL.md`, `CLAUDE.md`.
**Status:** Assessment + recommendation. Final decision is the user's.

---

## 1. Research-quality audit

The Perplexity report covers all six research goals end-to-end and is more thorough than typical, with 52 numbered citations. It is good enough to act on — but with a few real caveats that matter for how confidently any single fact should be weighted:

- **Quantitative inconsistencies on Symphony's reach.** The executive summary and §1 narrative claim "20,500+ stars" and "1,800+ forks" with a trailing-week velocity of ~330 stars/week (report ¶ ES, §1). But the citation row that supposedly anchors that figure ([^2], star-history.com) reads "13.7k Stars · Global Rank #3348" in the references list. The two numbers can't both be current. Treat the absolute star count as **directionally correct but not precise** — Symphony is unambiguously in the tens-of-thousands, growing fast, but the exact velocity claim is shaky.
- **Search-result section is inference, not data.** Section 3 explicitly says "Direct SERP scraping was not possible; findings are based on inference from indexed content." The medium / medium-high collision ratings are reasoned, not measured. They should be treated as plausible hypotheses, not findings.
- **Naming-precedent section (§4) is thin on small-tool data.** The Cameo and iyO analogues are strong but both involve trademarked incumbents with legal recourse. The report explicitly admits "there is no formal precedent with published data on discoverability outcomes" for unregistered open-source tools — exactly the case here. The "fading is more common" claim is presented without case studies. Weight §4 lightly.
- **Third-option candidate vetting is shallow.** The collision checks for Council/Chorus/Parliament/etc. are framed as "no product found" but the search methodology isn't shown. These should be treated as preliminary screens, not clearances.
- **theideaforge.app analysis (§5) is the report's strongest section.** Pricing, function, launch dates, and Claude integration are concretely sourced ([^4][^6][^8]). High confidence here.

The report is **usable**, with the strongest evidence concentrated where it matters most for the decision (§5 same-domain Forge collision, §1 Symphony trajectory). The framework in §6 is genuinely balanced — it does not telegraph a single answer, which is what the prompt asked for. No need to re-run.

---

## 2. Headline findings

- **OpenAI Symphony has real, accelerating reach in the developer-tools space.** Tens of thousands of GitHub stars in ~2 months, organic HN/Techmeme/InfoWorld coverage, multiple community ports, and early signs of "Symphony-style" becoming a category term (report §1). *(High confidence on direction, medium on precise star/velocity numbers.)*
- **No major lab besides OpenAI uses "Symphony" as an AI/agent product name, and no "Idea Symphony" prior art exists in software** (report §2). Other Symphony tools — Symphony CMS, the Symphony IDE, symphonyoss, BetSymphony — are dormant or in unrelated domains. *(High confidence — claim is well-cited.)*
- **The Symphony collision is SEO/discoverability, not user confusion.** A coding-agent orchestrator and a multi-persona ideation skill are obviously different products to anyone who lands on either; the risk is "Idea Symphony" not ranking, not users mistaking one for the other (report §3, §5 comparison table). *(High confidence on the qualitative shape; medium on collision-risk ratings since SERPs were inferred.)*
- **theideaforge.app is the most decision-relevant single fact in the report.** Live, paid SaaS ($19–$79/mo), uses Claude + Tavily, positions itself as adversarial AI brainstorming for founders/solopreneurs, with active commercial launch (Reddit + Product Hunt cycle) on/around 2026-05-12 (report §5). *(High confidence — multiple sources [^4][^6][^8].)*
- **The other three "Idea Forge" prior-art uses are mixed but mostly low-overlap.** University makerspaces (physical), ideaForge Technology (drones, India), and the 2024 Gemini competition entry (dormant) don't materially compete for the same audience as a Claude brainstorming skill (report §5). *(High confidence.)*
- **The Forge collision is a *worse shape* than the Symphony collision** — multiple players including a same-domain, same-stack (Claude-using) commercial competitor launching the same week as the user's intended publish window (report §5 comparison table). *(High confidence on shape; medium on the magnitude of practical harm.)*
- **Strongest third-option candidates surfaced: Idea Council and Idea Chorus.** Council benefits from adjacency to Karpathy's `llm-council` vocabulary; Chorus retains a musical register near Symphony. Both apparently unclaimed in AI tooling (report §5b). *(Medium confidence — the collision checks were preliminary, not exhaustive.)*
- **Naming-precedent section provides one strong analogue (Cameo) but no real data on unregistered open-source tools.** The "fading" generalization is plausible but unsourced (report §4). *(Low confidence on the general claim; high confidence on Cameo as a single data point.)*

---

## 3. Three-branch comparison

Branch C uses **Idea Council** as the third-option representative — the strongest candidate per the report's own ranking (report §5b "Top Recommendations").

| Axis | A. Keep Idea Symphony | B. Rename to Idea Forge | C. Rename to Idea Council |
|---|---|---|---|
| **Search discoverability** | Acceptable. Discoverability for "Idea Symphony" + Claude-context is plausible since no prior project owns the exact phrase (report §2); broad "symphony" SEO is captured by OpenAI but the compound name is unclaimed. | Weak. theideaforge.app is actively SEO-launching for "idea forge" + Claude in the same domain (report §5). | Strong. "Idea Council" appears unclaimed in software (report §5b), and adjacency to `llm-council` may aid discovery in AI-power-user circles. |
| **Same-domain confusion risk** | Strong. Coding-agent orchestrator vs. ideation skill — no realistic confusion (report §3). | Bad. Same-domain (AI brainstorming), same-stack (Claude), same audience overlap (founders + AI tool users), same launch window (report §5 comparison table). | Strong. No same-domain Council product exists. Karpathy's `llm-council` is multi-model voting, not brainstorming, and uses a different name. |
| **Brand-continuity cost** | Strong. Sonata-form phase names (Exposition / Development / Recapitulation) are preserved; SKILL.md, dev notes, and prior session outputs stay coherent. | Bad. Sonata-form metaphor is wholly abandoned. Phase names need rework. Existing test-runs and dev notes carry the old name. | Bad. Same continuity loss as B, plus no salvageable metaphor reuse. |
| **Pairing fit with Idea Factory** | Acceptable. Symphony / Factory is mixed-metaphor (musical / industrial) — the voice memo flags this as "always a bit 'bleh'." Functional but not crisp. | Strong. Forge / Factory is a clean industrial pair; this is the voice memo's stated reason for the option. | Acceptable. Council / Factory is a deliberation/production pair — readable, not as crisp as Forge/Factory. |
| **Asymmetric downside** | Acceptable. Worst case: never ranks for "symphony" search; lives via direct/skill-marketplace distribution. Bounded harm because audience finds skills through Claude channels, not Google. | Bad. Worst case: theideaforge.app's commercial brand attaches to the skill; users assume the skill is a free/derivative version of the SaaS product. Confusion is *plausible* and the harm is uncapped if theideaforge.app grows. | Acceptable. Worst case: undiscovered collision surfaces post-rename; second rename forced. Bounded — and the preliminary collision checks were clean. |

---

## 4. Recommendation

- **The call: A — keep Idea Symphony.**
- **Confidence: medium.**
- **Reasoning:** The Symphony collision is the *less harmful* of the two leading-candidate collisions because it sits in an adjacent domain (coding-agent orchestration) rather than the same domain. The skill's distribution channel is the Claude skill ecosystem, not general Google search — which blunts the SEO headwind that is Symphony's only real cost. The sonata-form phase metaphor is a real creative asset that B and C both destroy. Branch B is clearly worse than A on the most decision-relevant axis (same-domain confusion with theideaforge.app, launching the same week). Branch C clears collisions but pays a full rebrand cost for marginal upside — and the report's collision-clearance for Council/Chorus is preliminary, not exhaustive. Confidence is medium rather than high because (a) the report's quantitative claims about Symphony's velocity are inconsistent and (b) the SERP-collision ratings are inferred, not measured, so the SEO headwind for "Idea Symphony" could be worse than estimated.

- **What would flip the recommendation:**
  - **Flip to C (third-option rename) if:** OpenAI begins actively maintaining Symphony as a product (rather than treating it as a reference spec) **or** "Symphony-style" hardens into a generic category term in mainstream developer vocabulary within ~3 months. Either condition turns the SEO headwind from a nuisance into an identity problem the skill can't escape. A quick pulse-check on `openai/symphony` commit cadence and HN/Techmeme coverage in 60–90 days will tell you which way this is trending.
  - **Flip to B (Idea Forge) if:** theideaforge.app fails to launch or shutters within ~6 months **and** the Forge/Factory pairing matters enough to justify the rebrand on aesthetic grounds alone. This is unlikely to be load-bearing — if A is working, there's no reason to revisit.
  - **Flip immediately to C if:** any "Idea Symphony" same-domain prior art surfaces that the report missed (e.g., a stealth Claude skill or a Product Hunt launch using the exact phrase). The report's clean-slate finding for "Idea Symphony" is a load-bearing assumption; if it's wrong, A loses its main advantage.

---

## 5. Open questions for the user

- **Personal-attachment weight.** The voice memo flags genuine attachment to the Symphony name and the sonata-form phase names. The recommendation already weighs that as a signal, not the driver. If the attachment is stronger than acknowledged in the memo, A becomes more clearly correct; if weaker, C becomes more attractive. This is the user's call.
- **Skill-pair aesthetics.** The voice memo notes Symphony/Factory as "a bit 'bleh'" pairing. If the user weights pairing crispness highly, that pulls toward B (Forge/Factory) or C (Council/Factory). The recommendation treats pairing as one axis among many; the user may weight it more.
- **Distribution-channel assumption.** The recommendation rests on the assumption that the skill's primary discovery channel is Claude skill ecosystems and direct sharing, not general Google search. If the user expects to actively SEO/promote the skill (blog posts, talks, indexing), the Symphony headwind matters more and C's appeal grows.
- **Lightweight benchmark survey?** Cheap insurance: ask 3–5 trusted reviewers (people who'd actually be skill users) which name lands best — Symphony, Forge, Council, Chorus. A 24-hour async poll could resolve the medium-confidence rating into high either way before locking in.
- **Defer-the-decision option.** Publishing examples as Idea Symphony now and reserving rename as a future option is technically possible but pays the rename cost twice if it's ever exercised (URLs, frontmatter, dev notes, examples). Only worth deferring if the user expects a clarifying signal in the next ~30 days that would change the answer.
- **What about Idea Forge as a deprecation, not a rename target?** The current repo has an Idea Forge skill (Agent Teams, deprecated per the polish plan). If A is the call, Forge stays in `idea-forge/` as a dormant historical artifact. If B were the call, the existing Forge directory would need to be reckoned with — adds non-trivial mechanical work that the prompt didn't surface.

---

*If the user picks A: zero rename work; proceed to bulk regen of Phase 4/5 examples. If B or C: single rename PR (paths, frontmatter, SKILL.md, README, dev notes) before bulk regen, per the polish plan's stated sequencing.*
