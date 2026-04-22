# Ecosystem Sync — How Counts Stay In Sync

The claude-agent-catalog is one node in the Claude ecosystem. Agent counts and badges appear in multiple READMEs. This document explains how they stay synchronized.

## Source of Truth

**`claude-config/config/agent-registry.json`** is the canonical registry.

This repo (`claude-agent-catalog`) mirrors the agent .md files and `agent-registry.json` but the live count always comes from `claude-config`.

## How to Sync

From `ClaudeHQ/`:

```bash
./scripts/hq sync
```

This script:
1. Counts agents in `claude-config/agents/**/*.md`
2. Counts plugins in `marketplace.json`
3. Counts skills in `claude-config/global/skills/`
4. Updates badge numbers in:
   - `claude-config/README.md`
   - `claude-agent-catalog/README.md`
   - `claude-marketplace/README.md`
   - `ClaudeHQ/README.md`

## When to Run

| Event | Action |
|-------|--------|
| Add or remove an agent | `hq sync` then commit affected READMEs |
| Add or remove a plugin | `hq sync` then commit affected READMEs |
| Add or remove a skill | `hq sync` if skills appear in badges |
| Release a new version | `hq sync` as part of release checklist |

## Never Do This

- Do NOT manually update badge numbers — they will drift
- Do NOT merge a PR that adds agents without running `hq sync`

## Badge Format (reference)

```markdown
[![Registry](https://img.shields.io/badge/registry-196_agents-6366f1)](...)
```

The number `196` must match the actual count in `agent-registry.json`.
