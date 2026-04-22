# claude-agent-catalog — Master Analysis Report
> Generated: 2026-04-22 | Mode: Forge Orchestrator

---

## Executive Summary

- **Overall score: 6.8/10**
- **Strongest area:** Content — README is detailed, agent .md files are well-structured
- **Weakest area:** Discoverability (4/10) — no search, no filtering, no catalog UI
- **Critical actions:** 14

### Status Summary

The catalog has a solid foundation: 134 agents across 15 categories, well-structured AGENT.md files with frontmatter, and clear ecosystem positioning. However, the README agent table is static and not auto-generated from the registry, documentation depth varies widely across agents, skills/ directory is sparsely populated, and there is no CI to keep the registry and catalog in sync.

---

## Score Card

| Category | Score | Critical Issues | Improvements |
|----------|-------|----------------|--------------|
| Content / Docs | 7/10 | 3 | 5 |
| Architecture | 7/10 | 2 | 4 |
| Discoverability | 4/10 | 4 | 6 |
| DevX / Contribution | 6/10 | 3 | 4 |
| Ecosystem Sync | 7/10 | 2 | 3 |

---

## Department Analysis

### Content / Docs (7/10)
README is 400 lines and covers ecosystem well. Individual agent .md files follow consistent frontmatter schema. Gaps: no usage examples per agent, no "when to use vs. when not to use" section, skills/ directory has only 1 file.

### Architecture (7/10)
agent-registry.json has a clean schema (version, categories, agents with id, model, capabilities, fallbacks). Issues: `model` field returns `?` for all entries (field is `primary_model`, not `model`), no schema validation in CI, TRACKING.md references ~/.claude/agent-memory/ paths that won't exist after fresh install.

### Discoverability (4/10)
No way to search or filter agents except scrolling the README table. No tags index, no capabilities index, no quick-reference cheatsheet. GitHub search is the only discovery mechanism. Critical gap for a 134-agent catalog.

### DevX / Contribution (6/10)
`install.sh` exists but no CONTRIBUTING.md, no issue templates. Users wanting to add an agent have no clear workflow. No lint/schema validation for new agent .md files.

### Ecosystem Sync (7/10)
README states "live source of truth is claude-config main" but the local README table can drift. No automation to pull registry counts from claude-config on release.

---

## Top 14 Priority Actions

| # | Action | Category | Priority | SP |
|---|--------|----------|----------|----|
| 1 | Add CONTRIBUTING.md with agent addition guide | DevX | P0 | 1 |
| 2 | Add GitHub Issue templates (new agent, bug, feedback) | DevX | P0 | 1 |
| 3 | Create agent-index.md — searchable quick reference | Discoverability | P0 | 2 |
| 4 | Add capabilities index (which agent does what) | Discoverability | P0 | 2 |
| 5 | Fix agent-registry.json `model` field → use `primary_model` | Architecture | P0 | 1 |
| 6 | Add YAML/JSON schema validation script | Architecture | P1 | 2 |
| 7 | Add usage examples to top 10 most-used agents | Content | P1 | 2 |
| 8 | Add "when NOT to use" section to orchestrator agents | Content | P1 | 1 |
| 9 | Populate skills/ directory with 3+ skill stubs | Content | P1 | 1 |
| 10 | Add category README files (one per category dir) | Discoverability | P2 | 3 |
| 11 | Create agent-cheatsheet.md (one-liner per agent) | Discoverability | P2 | 1 |
| 12 | Add GitHub Actions CI for registry schema validation | Architecture | P2 | 2 |
| 13 | Add pull_request_template.md | DevX | P2 | 1 |
| 14 | Add ecosystem-sync.md (how counts stay in sync) | Ecosystem | P2 | 1 |
