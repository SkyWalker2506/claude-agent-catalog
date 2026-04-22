# Contributing to Claude Agent Catalog

Thank you for helping grow the Claude Agent Catalog! This guide covers how to add a new agent, fix documentation, and keep the registry in sync.

---

## How to Add a New Agent

### 1. Choose the right category

| Category | Directory | Example agents |
|----------|-----------|---------------|
| `orchestrator` | `orchestrator/` | A1 Lead Orchestrator, A2 Task Router |
| `backend` | `backend/` | B2 Backend Coder, B8 API Gateway |
| `design` | `design/` | D1 UI Designer, D4 Figma Assistant |
| `code-review` | `code-review/` | C1 Code Reviewer, C3 AI Reviewer |
| `data-analytics` | `data-analytics/` | DA1 Data Analyst |
| `ai-ops` | `ai-ops/` | AO1 Model Monitor |
| `market-research` | `market-research/` | MR1 Market Researcher |
| `devops` | `devops/` | DO1 DevOps Engineer |
| `research` | `research/` | R1 Web Researcher |
| `productivity` | `productivity/` | P1 Task Manager |
| `marketing-engine` | `marketing-engine/` | ME1 Content Writer |
| `prompt-engineering` | `prompt-engineering/` | PE1 Prompt Engineer |
| `jira-pm` | `jira-pm/` | JP1 Jira PM |
| `sales-bizdev` | `sales-bizdev/` | SB1 Sales Agent |
| `3d-cad` | `3d-cad/` | E3 CAD Automation |

### 2. Create the agent .md file

Use this frontmatter schema:

```markdown
---
id: <ID>            # e.g. B15 — sequential within category
name: <Name>        # Human-readable name
category: <cat>     # Must match a category in agent-registry.json
primary_model: sonnet  # sonnet | haiku | opus | local-qwen-9b
fallbacks: [haiku]  # Ordered fallback list
mcps: []            # MCP servers needed, or ["*"] for all
capabilities: []    # List of capability tags
max_tool_calls: 20  # Suggested ceiling
template: standard  # standard | autonomous | readonly
related: []         # Related agent IDs
status: active      # active | pool | deprecated
---

# <ID>: <Name>

## Amaç
<!-- One paragraph — what problem does this agent solve? -->

## Kapsam
<!-- Bullet list of what this agent does -->

## Ne Zaman Kullanma
<!-- When NOT to use this agent — important! -->

## Örnek Görevler
<!-- 2-3 concrete example task prompts -->

## Çıktı Formatı
<!-- What this agent returns -->
```

### 3. Register in agent-registry.json

Add your agent under the correct category key in `agents`:

```json
"<ID>": {
  "name": "<Name>",
  "version": "1.0",
  "category": "<cat>",
  "status": "active",
  "primary_model": "sonnet",
  "fallbacks": ["haiku"],
  "mcps": [],
  "capabilities": ["<tag1>", "<tag2>"]
}
```

### 4. Open a PR

Use the preset PR template and link to the issue created from the **New Agent** template.

---

## Fixing Documentation

- Fix typos or outdated info directly — no issue needed for small fixes
- For major restructuring, open an issue first

## Keeping Counts in Sync

After adding/removing agents, run from `ClaudeHQ/`:
```bash
./scripts/hq sync
```

This updates README badge counts across the ecosystem.

---

## Code of Conduct

Be respectful. See [Contributor Covenant](https://www.contributor-covenant.org/) for details.
