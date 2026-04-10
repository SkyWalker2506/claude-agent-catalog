# Claude Agent Catalog

**139 AI agents** across **15 categories** for [Claude Code](https://claude.ai/claude-code).

Part of the [claude-config](https://github.com/SkyWalker2506/claude-config) Multi-Agent OS — cost-aware orchestration, local-first routing, auto-dispatch.

## Ecosystem on GitHub (start here)

This repository is **step 1** when exploring the stack on GitHub: **agents → plugins → full OS → workspace HQ**.

| Step | Repository | Role |
|------|------------|------|
| **1** | **claude-agent-catalog** (this repo) | Full agent inventory, categories, `/dispatch` examples |
| **2** | [claude-marketplace](https://github.com/SkyWalker2506/claude-marketplace) | Plugin catalog, one-line installs, native marketplace |
| **3** | [claude-config](https://github.com/SkyWalker2506/claude-config) | Multi-Agent OS — `install.sh`, MCP, skills, hooks, registry |
| **4** | [ClaudeHQ](https://github.com/SkyWalker2506/ClaudeHQ) | Ecosystem workspace — multi-project `claude` session |
| — | [sdk-market](https://github.com/SkyWalker2506/sdk-market) | Optional — production SDKs and kits |

Copy and cross-links are kept aligned across these repos. Registry line-items may receive small weekly refreshes on `main`; runtime behavior always follows the latest [claude-config](https://github.com/SkyWalker2506/claude-config) install.

## Quick Start

```bash
# Full system (all 134 agents + skills + MCP + hooks + auto-dispatch)
git clone https://github.com/SkyWalker2506/claude-config.git ~/Projects/claude-config
cd ~/Projects/claude-config && ./install.sh

# Only agents (add agent .md files to ~/.claude/agents/)
git clone https://github.com/SkyWalker2506/claude-agent-catalog.git
cd claude-agent-catalog && ./install.sh
```

## Auto-Dispatch

> **Requires the full [claude-config](https://github.com/SkyWalker2506/claude-config) install.** The standalone `install.sh` above only copies agent definition files — auto-dispatch, `/dispatch`, and `/agent-refine` are skills provided by `claude-config`.

Once the full system is installed, agents activate automatically based on your task:

```
/dispatch write a REST API         → B2 Backend Coder (Sonnet)
/dispatch security audit           → B13 Security Auditor (Opus)
/dispatch plan sprint              → I2 Sprint Planner (Sonnet)
/dispatch research competitors     → H1 Market Researcher (Sonnet)
```

Or in any Claude Code session — plans automatically route to the right agent.

## Categories

| Category | Agents | Active | Description |
|----------|--------|--------|-------------|
| `backend` | 21 | 7 | API, code, mobile, Unity, web, security |
| `market-research` | 15 | 3 | Research, SEO, GEO, social, content |
| `research` | 13 | 3 | Web research, docs, trends, datasets |
| `orchestrator` | 8 | 5 | Routing, dispatch, budget, fallback |
| `jira-pm` | 10 | 3 | Sprint, status, decomposition |
| `ai-ops` | 10 | 3 | MCP health, monitoring, coordination |
| `data-analytics` | 10 | 0 | ETL, SQL, visualization, reports |
| `design` | 10 | 0 | UI/UX, Figma, brand, assets |
| `devops` | 9 | 2 | Docker, cloud, deploy, incidents |
| `code-review` | 6 | 3 | Lint, security scan, AI review |
| `productivity` | 6 | 1 | Email, calendar, notes, files |
| `sales-bizdev` | 5 | 0 | Proposals, CRM, outreach |
| `3d-cad` | 5 | 0 | Blender, CAD, render, assets |
| `marketing-engine` | 4 | 0 | Landing pages, A/B, analytics |
| `prompt-engineering` | 2 | 0 | Prompt design, agent builder |

## All Agents

✅ = Active (auto-dispatched) | ○ = Pool (activate with `/agent-refine`)

| Status | ID | Name | Category | Model | Capabilities |
|--------|----|------|----------|-------|--------------|
| ○ | E1 | 3D Concept Planner | 3d-cad | haiku | 3d-planning, reference, scene-composition |
| ○ | E2 | Blender Script Agent | 3d-cad | local-qwen-9b | blender, python-scripting, geometry-nodes |
| ○ | E3 | CAD Automation | 3d-cad | local-qwen-9b | autocad, scripting, parametric-design |
| ○ | E4 | Render Pipeline | 3d-cad | free-script | render-queue, batch-render |
| ○ | E5 | 3D Asset Optimizer | 3d-cad | local-qwen-9b | lod, polygon-reduction, texture-optimization |
| ✅ | G1 | Agent Coordinator | ai-ops | sonnet | multi-agent, orchestration, parallel-dispatch |
| ○ | G10 | Deployment Agent | ai-ops | haiku | vercel, firebase-deploy, github-pages |
| ○ | G2 | Model Monitor | ai-ops | free-cron | model-health, latency-check |
| ✅ | G3 | MCP Health Agent | ai-ops | free-script | mcp-health, connectivity-check |
| ○ | G4 | Config Manager | ai-ops | free-script | config-sync, settings-management |
| ○ | G5 | Log Analyzer | ai-ops | local-qwen-9b | log-analysis, pattern-detection |
| ○ | G6 | Backup Agent | ai-ops | free-script | backup, restore |
| ✅ | G7 | Update Checker | ai-ops | free-web | version-check, update-notification |
| ○ | G8 | Cron Scheduler | ai-ops | free-script | cron, scheduling, launchd |
| ○ | G9 | Performance Monitor | ai-ops | free-script | token-tracking, response-time |
| ✅ | B1 | Backend Architect | backend | opus | architecture, api-design, database-design |
| ○ | B10 | Dependency Manager | backend | free-script | dependency-update, vulnerability-check, version-management |
| ○ | B11 | Git Manager | backend | free-script | branch, merge, conflict-resolution |
| ○ | B12 | Performance Optimizer | backend | sonnet | profiling, bottleneck, caching |
| ✅ | B13 | Security Auditor | backend | opus | owasp, sql-injection, xss |
| ○ | B14 | Scripting Agent | backend | local-qwen-9b | bash, python, automation |
| ✅ | B15 | Mobile Dev Agent | backend | sonnet | flutter, dart, mobile-ui |
| ○ | B16 | Web Game Dev Agent | backend | sonnet | phaser, pixi, threejs |
| ○ | B17 | Full Stack Web Agent | backend | sonnet | nextjs, react, nodejs |
| ○ | B18 | Python Specialist | backend | sonnet | fastapi, django, flask |
| ○ | B19 | Unity Developer | backend | sonnet | unity, csharp, ecs |
| ✅ | B2 | Backend Coder | backend | sonnet | api, crud, rest |
| ○ | B20 | API Gateway Agent | backend | sonnet | api-gateway, rate-limiting, auth-middleware |
| ○ | B21 | WebSocket Agent | backend | sonnet | websocket, socket-io, real-time |
| ✅ | B3 | Frontend Coder | backend | sonnet | react, flutter, ui |
| ○ | B4 | API Integrator | backend | haiku | api-integration, oauth, webhook |
| ✅ | B5 | Database Agent | backend | sonnet | sql, nosql, migration |
| ○ | B6 | Test Writer | backend | haiku | unit-test, integration-test, e2e-test |
| ✅ | B7 | Bug Hunter | backend | sonnet | debugging, root-cause-analysis, error-tracing |
| ○ | B8 | Refactor Agent | backend | haiku | refactoring, dead-code, simplification |
| ○ | B9 | CI/CD Agent | backend | free-script | ci, cd, pipeline |
| ✅ | C1 | Lint & Format Hook | code-review | free-deterministic | lint, format, type-check |
| ✅ | C2 | Security Scanner Hook | code-review | free-deterministic | secret-scan, dependency-audit, sast |
| ✅ | C3 | Local AI Reviewer | code-review | haiku | code-review, correctness, security |
| ○ | C4 | Code Rabbit Agent | code-review | free-coderabbit | deep-review, coderabbit |
| ○ | C5 | CI Review Agent | code-review | free-github-action | pr-review, ci-review |
| ○ | C6 | Human Review Coordinator | code-review | haiku | review-routing, human-handoff |
| ○ | F1 | Data Cleaner | data-analytics | local-qwen-9b | pandas, data-cleaning, normalization |
| ○ | F10 | Statistics Agent | data-analytics | local-qwen-9b | hypothesis-testing, regression, bayesian |
| ○ | F2 | Data Analyst | data-analytics | sonnet | statistics, insight, correlation |
| ○ | F3 | Visualization Agent | data-analytics | haiku | chart, graph, matplotlib |
| ○ | F4 | ETL Pipeline Agent | data-analytics | free-script | etl, pipeline, data-transfer |
| ○ | F5 | Report Generator | data-analytics | local-qwen-9b | pdf, markdown, report |
| ○ | F6 | SQL Agent | data-analytics | haiku | sql, query-optimization |
| ○ | F7 | Spreadsheet Agent | data-analytics | local-qwen-9b | excel, sheets, formulas |
| ○ | F8 | Jupyter Agent | data-analytics | local-qwen-9b | jupyter, notebook, analysis |
| ○ | F9 | Data Quality Agent | data-analytics | free-script | data-validation, consistency |
| ○ | D1 | UI/UX Researcher | design | free-web | ui-research, competitor-ui, trend |
| ○ | D10 | Motion Graphics Agent | design | haiku | animation-script, lottie, css-animation |
| ○ | D2 | Design System Agent | design | haiku | color, typography, spacing |
| ○ | D3 | Stitch Coordinator | design | haiku | stitch, design-to-code, tailwind |
| ○ | D4 | Figma Assistant | design | local-qwen-9b | figma, component-extraction, figma-api |
| ○ | D5 | Presentation Builder | design | local-qwen-9b | slides, powerpoint, keynote |
| ○ | D6 | Image Prompt Generator | design | free-router | midjourney, dalle, prompt-engineering |
| ○ | D7 | Icon & Asset Agent | design | free-router | svg, icon, asset-optimization |
| ○ | D8 | Mockup Reviewer | design | haiku | design-review, ux-audit, accessibility |
| ○ | D9 | Brand Identity Agent | design | haiku | brand-guide, logo-concept, color-palette |
| ○ | J1 | Docker Agent | devops | free-script | docker, compose, container |
| ✅ | J2 | Cloud Deploy Agent | devops | haiku | vercel, firebase, gcp |
| ○ | J3 | SSL/DNS Agent | devops | free-script | ssl, dns, certificate |
| ○ | J4 | Server Monitor | devops | free-cron | uptime, health-check, alerting |
| ○ | J5 | Cost Optimizer | devops | haiku | cloud-cost, optimization, right-sizing |
| ○ | J6 | Firebase Agent | devops | haiku | firestore, auth, functions |
| ✅ | J7 | Incident Responder | devops | sonnet | incident, hotfix, rollback |
| ○ | J8 | Infrastructure Planner | devops | haiku | capacity-planning, architecture |
| ○ | J9 | Performance Load Tester | devops | free-script | load-test, artillery, k6 |
| ✅ | I1 | Jira Router | jira-pm | haiku | jira-routing, board-scan, task-assignment |
| ○ | I10 | Estimation Agent | jira-pm | haiku | story-points, estimation, complexity |
| ✅ | I2 | Sprint Planner | jira-pm | sonnet | sprint-planning, task-decomposition, estimation |
| ○ | I3 | Task Decomposer | jira-pm | haiku | task-splitting, subtask-creation |
| ✅ | I4 | Status Reporter | jira-pm | free-script | dashboard, reporting, cache |
| ○ | I5 | WAITING Decision Agent | jira-pm | haiku | decision, triage, priority |
| ○ | I6 | Backlog Groomer | jira-pm | local-qwen-9b | backlog-cleanup, prioritization |
| ○ | I7 | Burndown Tracker | jira-pm | free-script | burndown, velocity, tracking |
| ○ | I8 | Standup Generator | jira-pm | local-qwen-9b | standup, daily-summary |
| ○ | I9 | Retrospective Agent | jira-pm | haiku | retrospective, lessons-learned |
| ✅ | H1 | Market Researcher | market-research | sonnet | market-analysis, segmentation, trend |
| ○ | H10 | New Tool Scout | market-research | free-web | tool-discovery, model-updates |
| ○ | H11 | MCP Distribution Agent | market-research | haiku | mcp-server-creation, npm-publish, directory-submission |
| ○ | H12 | Viral Output Agent | market-research | local-qwen-9b | shareable-content, gamification, viral-design |
| ○ | H13 | Social Media Strategist | market-research | haiku | content-calendar, platform-strategy, engagement |
| ○ | H14 | Community Manager Agent | market-research | local-qwen-9b | community-moderation, discord, slack |
| ○ | H15 | Influencer Research Agent | market-research | free-web | influencer-discovery, audience-analysis, collaboration |
| ○ | H2 | Competitor Analyst | market-research | free-web | competitor, swot, benchmark |
| ○ | H3 | Revenue Analyst | market-research | sonnet | revenue-model, pricing, unit-economics |
| ○ | H4 | Pricing Strategist | market-research | haiku | pricing, ab-test, optimization |
| ✅ | H5 | SEO Agent | market-research | free-script | programmatic-seo, keyword, content-generation |
| ✅ | H6 | GEO Agent | market-research | haiku | ai-search-optimization, structured-data, schema |
| ○ | H7 | Social Media Agent | market-research | local-qwen-9b | post-generation, linkedin, twitter |
| ○ | H8 | Content Repurposer | market-research | local-qwen-9b | content-splitting, repurpose, multi-channel |
| ○ | H9 | Newsletter Agent | market-research | local-qwen-9b | newsletter, email-copy, segmentation |
| ○ | M1 | Free Tool Builder | marketing-engine | sonnet | lead-gen, free-tool, calculator |
| ○ | M2 | Landing Page Agent | marketing-engine | haiku | landing-page, stitch, conversion |
| ○ | M3 | A/B Test Agent | marketing-engine | free-script | ab-test, variant, analytics |
| ○ | M4 | Analytics Agent | marketing-engine | free-script | ga4, mixpanel, reporting |
| ✅ | A1 | Lead Orchestrator | orchestrator | sonnet | planning, dispatch, coordination |
| ✅ | A2 | Task Router | orchestrator | sonnet | classification, routing, capability-matching |
| ✅ | A3 | Fallback Manager | orchestrator | free-script | model-switching, health-check |
| ✅ | A4 | Token Budget Manager | orchestrator | free-script | quota-tracking, mode-switching, cost-control |
| ✅ | A5 | Context Pruner | orchestrator | haiku | summarization, context-management, state-transfer |
| ○ | A6 | Daily Health Check | orchestrator | free-cron | monitoring, health-check |
| ○ | A7 | Weekly Analyst | orchestrator | sonnet | web-search, trend-analysis, reporting |
| ○ | A8 | Manual Control | orchestrator | none | emergency-stop, human-handoff |
| ✅ | L1 | Email Summarizer | productivity | free-gmail-mcp | email-summary, priority, action-items |
| ○ | L2 | Calendar Agent | productivity | free-script | calendar, scheduling, reminder |
| ○ | L3 | Daily Briefing Agent | productivity | local-qwen-9b | briefing, news, tasks |
| ○ | L4 | Note Organizer | productivity | local-qwen-9b | note-classification, tagging, obsidian |
| ○ | L5 | File Organizer | productivity | free-script | file-cleanup, downloads, desktop |
| ○ | L6 | Meeting Notes Agent | productivity | local-qwen-9b | meeting-notes, action-items, transcript |
| ○ | N1 | Prompt Engineer | prompt-engineering | sonnet | system-prompt, few-shot, chain-of-thought |
| ○ | N2 | Agent Builder | prompt-engineering | opus | agent-design, mcp-integration, skill-creation |
| ✅ | K1 | Web Researcher | research | free-web | web-search, scraping, summarization |
| ○ | K10 | Regulatory Compliance Agent | research | sonnet | gdpr, kvkk, ccpa |
| ○ | K11 | Asset Scraper | research | free-web | 3d-model-search, sketchfab, poly-haven |
| ○ | K12 | Resource Collector | research | free-web | font-search, texture-download, icon-pack |
| ○ | K13 | Dataset Finder | research | free-web | kaggle, huggingface, github-datasets |
| ○ | K2 | Paper Summarizer | research | local-qwen-9b | academic, paper-summary, abstract |
| ✅ | K3 | Documentation Fetcher | research | free-context7 | api-docs, library-docs, sdk-docs |
| ✅ | K4 | Trend Analyzer | research | free-web | trend, market-signal, technology-radar |
| ○ | K5 | Video Summarizer | research | local-qwen-9b | youtube-transcript, video-summary |
| ○ | K6 | Tutorial Finder | research | free-web | tutorial, howto, learning-resource |
| ○ | K7 | Knowledge Base Agent | research | local-qwen-9b | rag, memory-query, knowledge-retrieval |
| ○ | K8 | Skill Recommender | research | haiku | skill-gap, tool-recommendation |
| ○ | K9 | AI Tool Evaluator | research | haiku | tool-evaluation, benchmark, comparison |
| ○ | O1 | Sales Proposal Agent | sales-bizdev | sonnet | proposal, rfp, pricing |
| ○ | O2 | CRM Agent | sales-bizdev | haiku | hubspot, pipedrive, lead-management |
| ○ | O3 | Outreach Agent | sales-bizdev | local-qwen-9b | cold-email, linkedin-outreach, personalization |
| ○ | O4 | Pricing Calculator | sales-bizdev | free-script | cost-estimation, margin, markup |
| ○ | O5 | Client Onboarding Agent | sales-bizdev | haiku | onboarding-checklist, welcome-sequence, handoff |

## Activate Pool Agents

Pool agents are defined but not auto-dispatched. To activate for your project:

```bash
# Requires claude-config to be installed
/agent-refine    # Analyzes your project, suggests which agents to activate
```

Or manually edit `~/Projects/claude-config/config/agent-registry.json` — change `"status": "pool"` to `"status": "active"`.

> **Note:** `/agent-refine` is a skill provided by [claude-config](https://github.com/SkyWalker2506/claude-config), not this repo.

## Model Tiers

| Model | When |
|-------|------|
| `opus` | Architecture, security audit, complex decisions |
| `sonnet` | Code, APIs, mid-complexity |
| `haiku` | Labels, simple edits, routing |
| `local-qwen-9b` | Offline, scripts, low-cost |
| `free-*` | Zero-cost tools (web search, scripts, cron) |

## Roadmap

- `config/agent-registry.json` — machine-readable registry for auto-dispatch (lives in claude-config today; see CC-24)
- `config/agent-router.sh` — CLI routing script (lives in claude-config)
- Standalone `/dispatch` skill bundled with this repo (see CC-22)
- Standalone `/agent-refine` skill bundled with this repo (see CC-23)

## Related

- [claude-marketplace](https://github.com/SkyWalker2506/claude-marketplace) — Plugin catalog (step 2 on GitHub)
- [claude-config](https://github.com/SkyWalker2506/claude-config) — Full Multi-Agent OS (agents + skills + MCP + hooks)
- [ClaudeHQ](https://github.com/SkyWalker2506/ClaudeHQ) — Ecosystem workspace hub
- [ccplugin-sync-agents](https://github.com/SkyWalker2506/ccplugin-sync-agents) — Keep agent frontmatter in sync with registry
