# Agent Cheatsheet

> One-liner per agent. For full details see [agent-index.md](agent-index.md).

## 3D Cad

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **E1** | 3D Concept Planner | `haiku` | 3d-planning |
| **E2** | Blender Script Agent | `local-qwen-9b` | blender |
| **E3** | CAD Automation | `local-qwen-9b` | autocad |
| **E4** | Render Pipeline | `free-script` | render-queue |
| **E5** | 3D Asset Optimizer | `local-qwen-9b` | lod |

## Ai Ops

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **G1** | Agent Coordinator | `sonnet` | multi-agent |
| **G10** | Deployment Agent | `haiku` | vercel |
| **G2** | Model Monitor | `free-cron` | model-health |
| **G3** | MCP Health Agent | `free-script` | mcp-health |
| **G4** | Config Manager | `free-script` | config-sync |
| **G5** | Log Analyzer | `local-qwen-9b` | log-analysis |
| **G6** | Backup Agent | `free-script` | backup |
| **G7** | Update Checker | `free-web` | version-check |
| **G8** | Cron Scheduler | `free-script` | cron |
| **G9** | Performance Monitor | `free-script` | token-tracking |

## Backend

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **B1** | Backend Architect | `opus` | architecture |
| **B10** | Dependency Manager | `free-script` | dependency-update |
| **B11** | Git Manager | `free-script` | branch |
| **B12** | Performance Optimizer | `sonnet` | profiling |
| **B13** | Security Auditor | `opus` | owasp |
| **B14** | Scripting Agent | `local-qwen-9b` | bash |
| **B15** | Mobile Dev Agent | `sonnet` | flutter |
| **B16** | Web Game Dev Agent | `sonnet` | phaser |
| **B17** | Full Stack Web Agent | `sonnet` | nextjs |
| **B18** | Python Specialist | `sonnet` | fastapi |
| **B19** | Unity Developer | `sonnet` | unity |
| **B2** | Backend Coder | `sonnet` | api |
| **B20** | API Gateway Agent | `sonnet` | api-gateway |
| **B21** | WebSocket Agent | `sonnet` | websocket |
| **B3** | Frontend Coder | `sonnet` | react |
| **B4** | API Integrator | `haiku` | api-integration |
| **B5** | Database Agent | `sonnet` | sql |
| **B6** | Test Writer | `haiku` | unit-test |
| **B7** | Bug Hunter | `sonnet` | debugging |
| **B8** | Refactor Agent | `haiku` | refactoring |
| **B9** | CI/CD Agent | `free-script` | ci |

## Code Review

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **C1** | Lint & Format Hook | `free-deterministic` | lint |
| **C2** | Security Scanner Hook | `free-deterministic` | secret-scan |
| **C3** | Local AI Reviewer | `haiku` | code-review |
| **C4** | Code Rabbit Agent | `free-coderabbit` | deep-review |
| **C5** | CI Review Agent | `free-github-action` | pr-review |
| **C6** | Human Review Coordinator | `haiku` | review-routing |

## Data Analytics

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **F1** | Data Cleaner | `local-qwen-9b` | pandas |
| **F10** | Statistics Agent | `local-qwen-9b` | hypothesis-testing |
| **F2** | Data Analyst | `sonnet` | statistics |
| **F3** | Visualization Agent | `haiku` | chart |
| **F4** | ETL Pipeline Agent | `free-script` | etl |
| **F5** | Report Generator | `local-qwen-9b` | pdf |
| **F6** | SQL Agent | `haiku` | sql |
| **F7** | Spreadsheet Agent | `local-qwen-9b` | excel |
| **F8** | Jupyter Agent | `local-qwen-9b` | jupyter |
| **F9** | Data Quality Agent | `free-script` | data-validation |

## Design

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **D1** | UI/UX Researcher | `free-web` | ui-research |
| **D10** | Motion Graphics Agent | `haiku` | animation-script |
| **D2** | Design System Agent | `haiku` | color |
| **D3** | Stitch Coordinator | `haiku` | stitch |
| **D4** | Figma Assistant | `local-qwen-9b` | figma |
| **D5** | Presentation Builder | `local-qwen-9b` | slides |
| **D6** | Image Prompt Generator | `free-router` | midjourney |
| **D7** | Icon & Asset Agent | `free-router` | svg |
| **D8** | Mockup Reviewer | `haiku` | design-review |
| **D9** | Brand Identity Agent | `haiku` | brand-guide |

## Devops

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **J1** | Docker Agent | `free-script` | docker |
| **J2** | Cloud Deploy Agent | `haiku` | deployment |
| **J3** | SSL/DNS Agent | `free-script` | ssl |
| **J4** | Server Monitor | `free-cron` | uptime |
| **J5** | Cost Optimizer | `haiku` | cloud-cost |
| **J6** | Firebase Agent | `haiku` | firestore |
| **J7** | Incident Responder | `sonnet` | incident |
| **J8** | Infrastructure Planner | `haiku` | capacity-planning |
| **J9** | Performance Load Tester | `free-script` | load-test |

## Jira Pm

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **I1** | Jira Router | `haiku` | jira-routing |
| **I10** | Estimation Agent | `haiku` | story-points |
| **I2** | Sprint Planner | `sonnet` | sprint-planning |
| **I3** | Task Decomposer | `haiku` | task-splitting |
| **I4** | Status Reporter | `free-script` | dashboard |
| **I5** | WAITING Decision Agent | `haiku` | decision |
| **I6** | Backlog Groomer | `local-qwen-9b` | backlog-cleanup |
| **I7** | Burndown Tracker | `free-script` | burndown |
| **I8** | Standup Generator | `local-qwen-9b` | standup |
| **I9** | Retrospective Agent | `haiku` | retrospective |

## Market Research

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **H1** | Market Researcher | `sonnet` | market-analysis |
| **H10** | New Tool Scout | `free-web` | tool-discovery |
| **H11** | MCP Distribution Agent | `haiku` | mcp-server-creation |
| **H12** | Viral Output Agent | `local-qwen-9b` | shareable-content |
| **H13** | Social Media Strategist | `haiku` | content-calendar |
| **H14** | Community Manager Agent | `local-qwen-9b` | community-moderation |
| **H15** | Influencer Research Agent | `free-web` | influencer-discovery |
| **H2** | Competitor Analyst | `free-web` | competitor |
| **H3** | Revenue Analyst | `sonnet` | revenue-model |
| **H4** | Pricing Strategist | `haiku` | pricing |
| **H5** | SEO Agent | `free-script` | programmatic-seo |
| **H6** | GEO Agent | `haiku` | ai-search-optimization |
| **H7** | Social Media Agent | `local-qwen-9b` | post-generation |
| **H8** | Content Repurposer | `local-qwen-9b` | content-splitting |
| **H9** | Newsletter Agent | `local-qwen-9b` | newsletter |

## Marketing Engine

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **M1** | Free Tool Builder | `sonnet` | lead-gen |
| **M2** | Landing Page Agent | `haiku` | landing-page |
| **M3** | A/B Test Agent | `free-script` | ab-test |
| **M4** | Analytics Agent | `free-script` | ga4 |

## Orchestrator

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **A1** | Lead Orchestrator | `sonnet` | planning |
| **A2** | Task Router | `sonnet` | classification |
| **A3** | Fallback Manager | `free-script` | model-switching |
| **A4** | Token Budget Manager | `free-script` | quota-tracking |
| **A5** | Context Pruner | `haiku` | summarization |
| **A6** | Daily Health Check | `free-cron` | monitoring |
| **A7** | Weekly Analyst | `sonnet` | web-search |
| **A8** | Manual Control | `none` | emergency-stop |

## Productivity

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **L1** | Email Summarizer | `free-gmail-mcp` | email-summary |
| **L2** | Calendar Agent | `free-script` | calendar |
| **L3** | Daily Briefing Agent | `local-qwen-9b` | briefing |
| **L4** | Note Organizer | `local-qwen-9b` | note-classification |
| **L5** | File Organizer | `free-script` | file-cleanup |
| **L6** | Meeting Notes Agent | `local-qwen-9b` | meeting-notes |

## Prompt Engineering

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **N1** | Prompt Engineer | `sonnet` | system-prompt |
| **N2** | Agent Builder | `opus` | agent-design |

## Research

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **K1** | Web Researcher | `free-web` | web-search |
| **K10** | Regulatory Compliance Agent | `sonnet` | gdpr |
| **K11** | Asset Scraper | `free-web` | 3d-model-search |
| **K12** | Resource Collector | `free-web` | font-search |
| **K13** | Dataset Finder | `free-web` | kaggle |
| **K2** | Paper Summarizer | `local-qwen-9b` | academic |
| **K3** | Documentation Fetcher | `free-context7` | api-docs |
| **K4** | Trend Analyzer | `free-web` | trend |
| **K5** | Video Summarizer | `local-qwen-9b` | youtube-transcript |
| **K6** | Tutorial Finder | `free-web` | tutorial |
| **K7** | Knowledge Base Agent | `local-qwen-9b` | rag |
| **K8** | Skill Recommender | `haiku` | skill-gap |
| **K9** | AI Tool Evaluator | `haiku` | tool-evaluation |

## Sales Bizdev

| ID | Name | Model | Primary Capability |
|----|------|-------|-------------------|
| **O1** | Sales Proposal Agent | `sonnet` | proposal |
| **O2** | CRM Agent | `haiku` | hubspot |
| **O3** | Outreach Agent | `local-qwen-9b` | cold-email |
| **O4** | Pricing Calculator | `free-script` | cost-estimation |
| **O5** | Client Onboarding Agent | `haiku` | onboarding-checklist |

