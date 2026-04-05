# Jira & PM Pack (I1-I9)

10 agents.

| ID | Name | Model | Capabilities |
|----|------|-------|--------------|
| **I1** | Jira Router | haiku | jira-routing, board-scan, task-assignment |
| I10 | Estimation Agent | haiku | story-points, estimation, complexity |
| **I2** | Sprint Planner | sonnet | sprint-planning, task-decomposition, estimation |
| I3 | Task Decomposer | haiku | task-splitting, subtask-creation |
| **I4** | Status Reporter | free-script | dashboard, reporting, cache |
| I5 | WAITING Decision Agent | haiku | decision, triage, priority |
| I6 | Backlog Groomer | local-qwen-9b | backlog-cleanup, prioritization |
| I7 | Burndown Tracker | free-script | burndown, velocity, tracking |
| I8 | Standup Generator | local-qwen-9b | standup, daily-summary |
| I9 | Retrospective Agent | haiku | retrospective, lessons-learned |

**Active by default:** I1, I2, I4 (3 agents)

Source: [claude-config/agents/jira-pm/](https://github.com/SkyWalker2506/claude-config/tree/main/agents/jira-pm)

Back to [Agent Catalog](../README.md)
