# Forge Run 3 Lessons — claude-agent-catalog

## What worked
- Generating index/cheatsheet docs programmatically from agent-registry.json ensures they never drift
- Registry validator as the first architectural investment pays off immediately — found 3 real schema issues
- CI integration ensures future PRs adding agents cannot break the registry format

## What to improve
- The capabilities-index.md has 467 unique capabilities — too many. Agent capabilities should be normalized
  to ~50 canonical tags. Next forge: normalize capabilities and regenerate index.
- Category README files would help navigation but are low-priority given the agent-index.md

## Next forge priorities (if Run 4 needed)
1. Normalize capabilities to ~50 canonical tags
2. Category README files (one per category dir)
3. Per-agent usage examples for top 20 agents
