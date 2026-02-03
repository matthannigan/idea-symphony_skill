# Idea Symphony Development TODO

Based on comprehensive analysis of 6 test runs (Feb 1-3, 2026) across multiple platforms, effort levels, and domains. See `test-runs/INDEX.md` for detailed findings.

---

## High Priority: Template & Documentation

### 1. Create Extended REQUEST.md Template Variant
**Problem**: Only 33% of sessions closely followed the standard REQUEST.md template. Complex strategic initiatives (Factory/Neighborhood, Fred & Andy, TOL) organically extended the template with 7-8 sections vs. standard 4 sections.

**Investigation**:
- [ ] Design "Standard" vs. "Extended" REQUEST.md templates
- [ ] Extended template should include sections for:
  - Core Objective / Core Concept
  - Key Constraints & Opportunities / Key Considerations
  - Desired Outcomes / Target Questions
  - Contextual Background (for initiatives with historical/institutional context)
  - Strategic Goals (for multi-stakeholder initiatives)
- [ ] Add template selection guidance in SKILL.md: "Use Standard for straightforward brainstorming; use Extended for strategic initiatives requiring philosophical framing or institutional context"
- [ ] Test both templates with new sessions to validate utility

**Evidence**: REQUEST.md files ranged from 0.5 KB (Pittsburgh minimal) to 3.2 KB (Factory/GLM extended). Extended formats aligned with project complexity, not platform constraints.

---

### 2. Develop BRAINSTORM.md Format Variants
**Problem**: 33% of sessions used alternative formats (Factory/Manus archive README, Fred & Andy extreme compression), suggesting the standard template doesn't fit all use cases.

**Investigation**:
- [ ] Create three BRAINSTORM.md variants in `references/templates.md`:
  - **Standard Report** (current): Comprehensive narrative for decision-makers (Pittsburgh, TOL, Civic 250 model)
  - **Executive Brief** (new): Compressed format for time-constrained executives (target: <10 pages, emphasis on Executive Summary + Top 10 Actions)
  - **Research Archive** (new): Navigation-focused format for ongoing reference (Manus model)
- [ ] Add template selection criteria based on:
  - Audience: Foundation executives vs. research teams vs. implementation staff
  - Session complexity: Simple (4-6 topics) vs. Complex (10+ topics)
  - Use case: One-time decision vs. Ongoing program development
- [ ] Test each variant with appropriate use cases

**Evidence**: Size variance 7.7x (4.1 KB to 31.8 KB), Factory/Manus README format demonstrates practitioner innovation adapting tool to workflow.

---

## High Priority: Quality & Consistency

### 3. Establish Executive Summary Quality Guidelines
**Problem**: Executive summary quality varied from 0 lines to 33 lines, from conceptual-only to quantified and evidence-based. No clear guidance exists on what constitutes a "good" executive summary.

**Investigation**:
- [ ] Document best practices from high-quality examples:
  - Pittsburgh: Meta-insight + specific data + quantified recommendations
  - Civic 250: 5 numbered transformative insights + strategic context
  - TOL: Strategic insights with evidence + epistemological awareness
- [ ] Create Executive Summary rubric with required elements:
  - Opening meta-insight or problem reframing
  - 3-5 numbered key insights/findings
  - Specific quantitative evidence (costs, timelines, percentages)
  - Identification of critical tensions or trade-offs
  - Strategic context connection (where applicable)
- [ ] Add to orchestrator prompt: "Your executive summary should be 10-30 lines and include..."
- [ ] Test rubric with 2-3 new sessions comparing before/after

**Evidence**: Fred & Andy (Gemini) 4-line conceptual summary vs. Civic 250 33-line quantified summary. Gemini's extreme compression (19% Phase 4 retention) may sacrifice decision-support value.

---

### 4. Optimize Gemini Pro Synthesis Behavior
**Problem**: Gemini Pro shows extreme compression (19% retention in Phase 4, 2.5 KB avg responses in Phase 3, 4.1 KB final output) resulting in loss of quantitative detail and analytical depth. Fred & Andy output was conceptual marketing language vs. implementation-ready guidance.

**Investigation**:
- [ ] Test Gemini Pro with modified synthesis prompts emphasizing:
  - "Preserve specific data, costs, and timelines"
  - "Maintain quantitative evidence supporting recommendations"
  - "Balance conciseness with decision-support substance"
- [ ] Compare Gemini synthesis at current vs. modified prompts for:
  - Retention percentage (target: 35-45% vs. current 19%)
  - Presence of quantitative evidence
  - Actionability of recommendations
- [ ] If compression persists, document as platform characteristic with guidance: "Gemini Pro optimized for high-level strategic framing; use GLM-4.7 or Claude for implementation-ready detail"
- [ ] Test with 1-2 new Gemini sessions specifically asking for "detailed, evidence-based recommendations with specific costs and timelines"

**Evidence**: Gemini compression accumulates through pipeline: 2.5 KB responses → 19% synthesis retention → 4.1 KB final (vs. 8-18 KB average). Fred & Andy output notable for absence of quantification.

---

### 5. Create Question Quality > Quantity Guidelines
**Problem**: More questions don't linearly produce better outputs. Pittsburgh (31 questions) achieved highest efficiency at 758 bytes/question vs. Factory/GLM (71 questions) at 448 bytes/question. No guidance exists on optimal question count or quality assessment.

**Investigation**:
- [ ] Analyze correlation between question characteristics and output quality:
  - Question specificity (vague vs. precisely scoped)
  - Question depth (surface vs. assumption-challenging)
  - Question redundancy (unique vs. overlapping)
- [ ] Establish optimal question ranges by session complexity:
  - Simple projects: 20-35 questions across 4-6 topics
  - Complex initiatives: 40-60 questions across 8-10 topics
  - Maximum diminishing returns: 70+ questions
- [ ] Add to Phase 2 orchestrator prompt: "Prioritize question quality over quantity. Generate 20-60 questions that are specific, assumption-challenging, and non-redundant."
- [ ] Add question consolidation step: After persona generation, review for redundancy and merge similar questions
- [ ] Test with 2 sessions: one targeting quality over quantity vs. current approach

**Evidence**: Pittsburgh's efficiency (758 bytes/Q) suggests fewer, better questions outperform higher volume. Factory/GLM's 71 questions may have diminishing returns.

---

## Medium Priority: Persona & Synthesis Optimization

### 6. Standardize Cross-Cutting Insights Extraction
**Problem**: Only 50% of sessions (Factory/GLM, TOL, partially Civic 250) explicitly identified cross-cutting insights or patterns across topics. This is high-value synthesis work that reveals non-obvious patterns but isn't consistently produced.

**Investigation**:
- [ ] Add explicit "Cross-Cutting Insights" phase to orchestrator workflow:
  - After Phase 4 individual topic syntheses complete
  - Before Phase 5 final BRAINSTORM.md assembly
  - Dedicated subagent reviews all topic syntheses to identify:
    - Patterns appearing in 3+ topics
    - Contradictions between topic areas
    - Meta-insights about the brainstorming process itself
    - Assumptions questioned across multiple domains
- [ ] Create cross-cutting insights template:
  - Numbered list (5-10 insights)
  - Each insight cites specific topics where pattern appeared
  - Categorize as: Reinforcing patterns, Contradictory patterns, Meta-insights, Unexamined assumptions
- [ ] Test with 2 sessions comparing outputs with/without explicit cross-cutting phase
- [ ] Add to BRAINSTORM.md template as standard section

**Evidence**: Factory/GLM's 10 numbered cross-cutting insights provided exceptional value ("Irony Paradox," "Adult Projection," "Resource Fatigue"). TOL's 7 themes revealed patterns invisible in individual topics. Sessions without this produced less insightful finals.

---

### 7. Test Persona Selection Optimization
**Problem**: Persona selection impacts output characteristics but no systematic testing has validated optimal combinations. Current approach uses general heuristics (Analyst for technical topics, Storyteller for narrative topics).

**Investigation**:
- [ ] Conduct controlled experiments testing persona combinations:
  - **Experiment 1**: Same topic, different persona sets
    - Set A: Pragmatist + Analyst + Technical Expert (convergent thinking)
    - Set B: Visionary + Devil's Advocate + First Principles (divergent thinking)
    - Measure: Idea diversity, actionability, assumption-challenging
  - **Experiment 2**: Persona specialization vs. generalization
    - Specialized: Match personas precisely to topic type
    - Generalized: Use diverse personas across all topics
    - Measure: Depth vs. breadth, unexpected insights
  - **Experiment 3**: Adversarial pairing
    - Include Devil's Advocate on every topic vs. selective inclusion
    - Measure: Risk identification, tension surfacing
- [ ] Document persona selection decision tree based on:
  - Topic type (technical, strategic, operational, ethical)
  - Desired output (convergent solutions vs. divergent exploration)
  - Risk tolerance (high-stakes decisions need Devil's Advocate)
- [ ] Update SKILL.md persona selection guidance with evidence-based recommendations

**Evidence**: Persona performance varies (Analyst +27% length, Connector -16%). Devil's Advocate and adversarial perspectives surfaced critical risks (TOL gentrification, Factory/GLM "Irony Paradox"). No systematic testing of optimal combinations exists.

---

### 8. Implement Synthesis Quality Checkpoints
**Problem**: Synthesis compression varies from 11% to 110% with no quality gates. Some syntheses may over-compress (losing critical detail) or under-compress (missing consolidation opportunities). Expansion cases (110%) are intelligent but not intentionally designed.

**Investigation**:
- [ ] Create synthesis quality rubric with automatic flagging:
  - **Over-compression flags** (<30% retention):
    - Missing quantitative evidence from responses?
    - Lost specific recommendations or action items?
    - Eliminated important disagreements between personas?
  - **Under-compression flags** (>90% retention):
    - Substantial redundancy remaining?
    - Could be more concise without information loss?
  - **Expansion flags** (>100%):
    - Is added context necessary for comprehension?
    - Does expansion clarify vs. editorialize?
- [ ] Implement two-stage synthesis:
  - Stage 1: Initial synthesis by subagent
  - Stage 2: Quality review checking for flags
  - Stage 3: Revision if quality issues detected
- [ ] Test whether quality checkpoints improve:
  - User satisfaction with synthesis utility
  - Preservation of critical information
  - Appropriate compression levels
- [ ] Document expansion as intentional technique: "For complex topics requiring additional scaffolding (measurement frameworks, ethical considerations), synthesis may expand to 110-120% to add necessary context"

**Evidence**: Compression range 11-110% shows high variance. Expansion cases (measurement/evaluation topics) appear intelligent but not designed. Gemini's 19% compression may lose decision-support value. No quality gates currently exist.

---

## Medium Priority: Platform & Model Testing

### 9. Conduct Systematic Model Comparison Study
**Problem**: Test runs used different models opportunistically (Claude, Gemini Pro, GLM-4.7, Manus) revealing distinct behavioral signatures, but no systematic comparison exists with controlled variables.

**Investigation**:
- [ ] Design controlled experiment with identical inputs across models:
  - **Same brainstorming topic**: Select moderate-complexity topic (neither trivial nor highly complex)
  - **Same effort level**: Medium (3 question personas, 5 brainstorming personas/topic)
  - **Same context**: Provide identical REQUEST.md and supporting documents
  - **Models to test**:
    - Claude Sonnet 3.5
    - Claude Opus 4.5 (if available)
    - Gemini Pro 2.0
    - GLM-4.7
    - OpenAI GPT-4o
    - OpenAI o1 (for reasoning-heavy questions)
- [ ] Measure and compare:
  - **Phase 2**: Question count, question specificity, assumption-challenging
  - **Phase 3**: Response length, quantitative evidence, persona distinctiveness
  - **Phase 4**: Compression ratio, information preservation, expansion frequency
  - **Phase 5**: Executive summary quality, actionability, cross-cutting insights
  - **Overall**: User preference, decision-support utility, implementation readiness
- [ ] Document model selection guidance:
  - "Use Gemini Pro for high-level strategic framing with time constraints"
  - "Use GLM-4.7 for balanced depth and comprehensiveness"
  - "Use Claude for implementation-ready detail with specific guidance"
  - "Use OpenAI o1 for complex reasoning-heavy topics requiring deep analysis"
- [ ] Publish findings in `docs/model-comparison.md`

**Evidence**: Existing test runs show platform fingerprints (Gemini compression, GLM academic rigor, Claude balance) but lack controlled comparison. Understanding optimal model selection could significantly improve output quality.

---

### 10. Test High Effort Level Configuration
**Problem**: All test runs used Low (3 personas/topic) or Medium (5 personas/topic) effort levels. High effort (7-10 personas/topic) has never been tested. Unknown whether additional personas provide value or create diminishing returns.

**Investigation**:
- [ ] Conduct High effort test session:
  - Select topic warranting deep exploration (complex strategic initiative)
  - Configure Phase 3: 7-10 personas per topic cluster
  - Measure costs: Token usage, execution time, orchestrator complexity
- [ ] Compare High vs. Medium effort on same topic:
  - Idea diversity (unique insights per persona)
  - Redundancy (overlapping perspectives)
  - Synthesis challenge (harder to consolidate 7-10 vs. 5 personas?)
  - User preference (does additional depth justify additional cost?)
- [ ] Determine optimal effort levels by topic type:
  - Simple operational topics: Low (3 personas)
  - Standard strategic topics: Medium (5 personas)
  - High-stakes complex decisions: High (7-10 personas)
  - Reserve High effort for critical decisions only
- [ ] Update SKILL.md with effort level recommendations based on evidence

**Evidence**: Current range is 3 personas/topic (Low) to 5 personas/topic (Medium). No data on whether additional personas add value. Factory/GLM (Medium, 5 personas) showed strong results; unclear if 7-10 would improve further or create redundancy.

---

## Lower Priority: Documentation & User Experience

### 11. Create Session Failure Analysis Playbook
**Problem**: All 6 test sessions completed successfully (100% completion rate), but production use will inevitably encounter failures. No documented troubleshooting guidance exists for common failure modes.

**Investigation**:
- [ ] Identify potential failure modes:
  - Subagent timeout (persona response exceeds time limit)
  - Context window overflow (session too large for model)
  - Synthesis deadlock (contradictory perspectives can't reconcile)
  - Invalid file references (broken links in session index)
  - Quality degradation (outputs lack substance despite completion)
- [ ] For each failure mode, document:
  - Symptoms (how to detect)
  - Root causes (why it happens)
  - Mitigation strategies (how to prevent)
  - Recovery procedures (how to fix in-progress session)
- [ ] Test failure scenarios:
  - Deliberately exceed context limits
  - Create incompatible persona responses
  - Simulate subagent timeouts
- [ ] Create troubleshooting guide in `docs/troubleshooting.md`
- [ ] Add health checks to orchestrator:
  - Pre-flight validation (inputs valid before starting)
  - Phase completion verification (outputs meet minimum quality)
  - Session rescue procedures (save state if failure occurs)

**Evidence**: 100% success rate is unsustainable at scale. Production deployment needs failure handling. No documented recovery procedures exist.

---

### 12. Develop Quality Metrics Dashboard
**Problem**: Session quality assessed manually through document review. No automated quality scoring exists to compare sessions or track improvements over time.

**Investigation**:
- [ ] Design quality metrics across phases:
  - **Phase 2**: Questions per topic, question uniqueness (anti-redundancy), assumption-challenging score
  - **Phase 3**: Response diversity (variance between personas), evidence density (citations/data per KB)
  - **Phase 4**: Compression ratio appropriateness, cross-cutting insights count
  - **Phase 5**: Executive summary completeness score, action item specificity, traceability (broken links)
- [ ] Implement automated scoring:
  - Parse output files to extract metrics
  - Calculate quality scores per phase
  - Identify regression (quality declining) vs. improvement
- [ ] Create `scripts/quality-dashboard.sh` that generates report:
  ```
  Session Quality Report
  Phase 2: ⭐⭐⭐⭐ (38/40) - Excellent question quality
  Phase 3: ⭐⭐⭐ (32/40) - Good persona diversity
  Phase 4: ⭐⭐⭐⭐⭐ (40/40) - Optimal synthesis
  Phase 5: ⭐⭐⭐ (35/40) - Executive summary needs quantification
  Overall: ⭐⭐⭐⭐ (145/160) - Above average session
  ```
- [ ] Use dashboard to track:
  - Impact of prompt changes on quality
  - Model comparison quality scores
  - Effort level vs. quality correlation

**Evidence**: Manual analysis of 6 sessions revealed quality variance but took substantial effort. Automated scoring would enable rapid iteration and systematic improvement tracking.

---

## Implementation Priority Matrix

| Priority | Investigation | Impact | Effort | Timeline |
|----------|--------------|--------|--------|----------|
| **P0** | Extended REQUEST.md Template | High | Low | Week 1 |
| **P0** | Executive Summary Guidelines | High | Low | Week 1 |
| **P0** | Question Quality Guidelines | High | Medium | Week 2 |
| **P1** | BRAINSTORM.md Variants | High | Medium | Week 2-3 |
| **P1** | Cross-Cutting Insights Phase | High | Medium | Week 3 |
| **P1** | Optimize Gemini Behavior | Medium | Medium | Week 3-4 |
| **P2** | Persona Selection Experiments | Medium | High | Week 4-6 |
| **P2** | Synthesis Quality Checkpoints | Medium | High | Week 5-7 |
| **P2** | Systematic Model Comparison | High | Very High | Week 6-10 |
| **P3** | High Effort Level Testing | Low | Medium | Week 8 |
| **P3** | Failure Analysis Playbook | Medium | Medium | Week 9 |
| **P3** | Quality Metrics Dashboard | Medium | High | Week 10-12 |

---

## Success Criteria

For each investigation, define success as:
- **Template/Documentation items**: Tested with 2+ new sessions, 80%+ practitioner adoption
- **Quality improvements**: Measurable improvement in rubric scores (10+ point increase)
- **Optimization items**: Reduced variance (quality standard deviation decreases 20%+)
- **Testing items**: Clear selection criteria documented with evidence supporting recommendations

---

## Notes

- Prioritize based on: Frequency of issue (appeared in multiple test runs) × Impact on user utility × Ease of implementation
- Front-load documentation improvements (P0-P1) as they're low effort, high impact
- Sequence experiments logically (establish baselines before testing variations)
- Track findings in `docs/` directory as investigations complete
- Update `test-runs/INDEX.md` with new sessions to maintain comprehensive analysis

---

**Analysis Date**: 2026-02-03
**Based On**: 6 test runs, 3.4+ MB analyzed content, 227+ files, 778-line INDEX.md
**Next Review**: After completing P0-P1 investigations (Week 3-4)
