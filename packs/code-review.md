# Code Review Pack (C1-C6)

6 agents.

| ID | Name | Model | Capabilities |
|----|------|-------|--------------|
| **C1** | Lint & Format Hook | free-deterministic | lint, format, type-check |
| **C2** | Security Scanner Hook | free-deterministic | secret-scan, dependency-audit, sast |
| **C3** | Local AI Reviewer | haiku | code-review, correctness, security, simplicity, concurrency |
| C4 | Code Rabbit Agent | free-coderabbit | deep-review, coderabbit |
| C5 | CI Review Agent | free-github-action | pr-review, ci-review |
| C6 | Human Review Coordinator | haiku | review-routing, human-handoff |

**Active by default:** C1, C2, C3 (3 agents)

Source: [claude-config/agents/code-review/](https://github.com/SkyWalker2506/claude-config/tree/main/agents/code-review)

Back to [Agent Catalog](../README.md)
