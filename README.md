# Claude Agent Catalog

131 AI agents across 15 categories for [Claude Code](https://claude.ai/claude-code). Each agent defines which model, tools, and rules to use for a specific task.

Part of the [claude-config](https://github.com/SkyWalker2506/claude-config) Multi-Agent OS.

## Quick Start

```bash
# Full system (all 131 agents)
git clone https://github.com/SkyWalker2506/claude-config.git
cd claude-config && ./install.sh

# Only activate what you need
/agent-refine              # Analyze your project, suggest agents
/dispatch <task>           # Auto-route to the right agent
```

## Agent Packs

| Pack | Agents | Best For | Details |
|------|--------|----------|--------|
| [Backend & Code](packs/backend.md) | B1-B21 | API, Flutter, Unity, Python, JS, testing, security | 21 agents |
| [Code Review](packs/code-review.md) | C1-C6 | Lint, security scan, AI review, CI/CD review | 6 agents |
| [Design & 2D](packs/design.md) | D1-D10 | UI/UX, Figma, brand, motion graphics, accessibility | 10 agents |
| [3D & CAD](packs/3d-cad.md) | E1-E5 | Blender, CAD, render, asset optimization | 5 agents |
| [Data & Analytics](packs/data-analytics.md) | F1-F10 | SQL, pandas, visualization, ETL, statistics | 10 agents |
| [AI Ops](packs/ai-ops.md) | G1-G10 | Agent coordination, MCP health, monitoring | 10 agents |
| [Market Research](packs/market-research.md) | H1-H15 | SEO, GEO, competitor, social media, influencer | 15 agents |
| [Jira & PM](packs/jira-pm.md) | I1-I10 | Sprint, backlog, standup, estimation | 10 agents |
| [DevOps](packs/devops.md) | J1-J9 | Docker, cloud, Firebase, SSL, load testing | 9 agents |
| [Research](packs/research.md) | K1-K10 | Web research, docs, trends, compliance | 10 agents |
| [Productivity](packs/productivity.md) | L1-L6 | Email, calendar, notes, files | 6 agents |
| [Marketing](packs/marketing.md) | M1-M4 | Landing pages, A/B testing, analytics | 4 agents |
| [Prompt Engineering](packs/prompt-engineering.md) | N1-N2 | Prompt optimization, agent design | 2 agents |
| [Sales & BizDev](packs/sales-bizdev.md) | O1-O5 | Proposals, CRM, outreach, pricing | 5 agents |
| **Orchestrator** | A1-A8 | Routing, budget, fallback, context | 8 agents |

## How It Works

```
Your task → A2 Task Router → capability match → best agent selected
                                              → model/effort auto-assigned
                                              → fallback chain ready
```

- **Auto-dispatch:** Every plan automatically routes via agent-registry.json
- **Pool system:** Only 30 agents are active by default. Rest are pool — activate on demand
- **Dependency check:** `check-agent-deps.sh <agent-id>` verifies tools/APIs/models before running

## Activating Agents

All agents are installed but most are in pool (inactive). Activate what you need:

```bash
# Option 1: Let the system decide
/agent-refine              # Scans project, suggests which agents to activate

# Option 2: Manual — in config/agent-registry.json:
#   "status": "pool" → "status": "active"
#   Add ID to active_agents array
```

## Agent Tracking

Agent usage is tracked in `~/.claude/agent-memory/`:

| File | What |
|------|------|
| `agent_performance.json` | Success rate, latency, cost per agent |
| `decisions.json` | Routing decisions and outcomes |
| `failures.json` | Failed attempts with reasons |
| `adaptive_rules.json` | Auto-learned routing rules |
| `usage_log.jsonl` | Chronological dispatch log |

## Model Distribution

| Tier | % | Cost |
|------|---|------|
| Free/Local (Ollama, OpenRouter) | ~65% | $0 |
| Haiku | ~18% | Low |
| Sonnet | ~13% | Medium |
| Opus | ~4% | High |

## Links

- [claude-config](https://github.com/SkyWalker2506/claude-config) — Multi-Agent OS (core)
- [claude-marketplace](https://github.com/SkyWalker2506/claude-marketplace) — Plugin marketplace
- [Agent source files](https://github.com/SkyWalker2506/claude-config/tree/main/agents)

## License

MIT
