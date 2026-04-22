#!/usr/bin/env python3
"""
validate_registry.py — Validate agent-registry.json schema.

Usage:
    python3 scripts/validate_registry.py
    python3 scripts/validate_registry.py --verbose

Exit codes:
    0 — all validations pass
    1 — one or more validation errors
"""

import json
import sys
import argparse
from pathlib import Path

REQUIRED_AGENT_FIELDS = ["name", "version", "category", "status", "primary_model", "fallbacks", "capabilities"]
VALID_STATUSES = {"active", "pool", "deprecated"}
VALID_MODELS = {"sonnet", "haiku", "opus", "local-qwen-9b", "free-script", "free-cron",
                "free-web", "free-deterministic", "free-coderabbit", "free-github-action",
                "free-router", "qwen-3.6-free", "none", "free-context7", "free-gmail-mcp",
                "free-vercel-mcp", "free-figma-mcp", "free-jira-mcp"}
REQUIRED_TOP_FIELDS = ["version", "categories", "agents"]

def validate(registry_path: Path, verbose: bool = False) -> list[str]:
    errors = []

    if not registry_path.exists():
        return [f"File not found: {registry_path}"]

    try:
        with open(registry_path) as f:
            data = json.load(f)
    except json.JSONDecodeError as e:
        return [f"JSON parse error: {e}"]

    # Top-level fields
    for field in REQUIRED_TOP_FIELDS:
        if field not in data:
            errors.append(f"Missing top-level field: '{field}'")

    agents = data.get("agents", {})
    categories = set(data.get("categories", {}).keys())
    seen_ids = set()

    for agent_id, agent in agents.items():
        prefix = f"Agent {agent_id}"

        # Duplicate ID check
        if agent_id in seen_ids:
            errors.append(f"{prefix}: duplicate ID")
        seen_ids.add(agent_id)

        # Required fields
        for field in REQUIRED_AGENT_FIELDS:
            if field not in agent:
                errors.append(f"{prefix}: missing required field '{field}'")

        # Status validation
        status = agent.get("status")
        if status and status not in VALID_STATUSES:
            errors.append(f"{prefix}: invalid status '{status}' (must be one of {VALID_STATUSES})")

        # Model validation
        model = agent.get("primary_model")
        if model and model not in VALID_MODELS:
            errors.append(f"{prefix}: unknown primary_model '{model}'")

        # Category validation
        cat = agent.get("category")
        if cat and categories and cat not in categories:
            errors.append(f"{prefix}: category '{cat}' not in top-level categories dict")

        # Capabilities must be a list
        caps = agent.get("capabilities")
        if caps is not None and not isinstance(caps, list):
            errors.append(f"{prefix}: 'capabilities' must be a list")

        # Fallbacks must be a list
        fallbacks = agent.get("fallbacks")
        if fallbacks is not None and not isinstance(fallbacks, list):
            errors.append(f"{prefix}: 'fallbacks' must be a list")

        if verbose and not errors:
            print(f"  OK: {agent_id} — {agent.get('name', '?')}")

    return errors


def main():
    parser = argparse.ArgumentParser(description="Validate agent-registry.json")
    parser.add_argument("--file", default="agent-registry.json", help="Path to registry file")
    parser.add_argument("--verbose", "-v", action="store_true", help="Show per-agent status")
    args = parser.parse_args()

    registry_path = Path(args.file)
    print(f"Validating {registry_path}...")

    errors = validate(registry_path, verbose=args.verbose)

    if errors:
        print(f"\n❌ {len(errors)} validation error(s):\n")
        for e in errors:
            print(f"  - {e}")
        sys.exit(1)
    else:
        print(f"✅ Registry valid — {len(json.loads(registry_path.read_text()).get('agents', {}))} agents")
        sys.exit(0)


if __name__ == "__main__":
    main()
