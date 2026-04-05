# Orchestrator & System Pack (A1-A8)

8 agents.

| ID | Name | Model | Capabilities |
|----|------|-------|--------------|
| **A1** | Lead Orchestrator | sonnet | planning, dispatch, coordination, escalation |
| **A2** | Task Router | sonnet | classification, routing, capability-matching |
| **A3** | Fallback Manager | free-script | model-switching, health-check |
| **A4** | Token Budget Manager | free-script | quota-tracking, mode-switching, cost-control |
| **A5** | Context Pruner | haiku | summarization, context-management, state-transfer |
| A6 | Daily Health Check | free-cron | monitoring, health-check |
| A7 | Weekly Analyst | sonnet | web-search, trend-analysis, reporting |
| A8 | Manual Control | none | emergency-stop, human-handoff |

**Active by default:** A1, A2, A3, A4, A5 (5 agents)

Source: [claude-config/agents/orchestrator/](https://github.com/SkyWalker2506/claude-config/tree/main/agents/orchestrator)

Back to [Agent Catalog](../README.md)
