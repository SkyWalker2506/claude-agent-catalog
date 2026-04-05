#!/bin/bash
# Claude Agent Catalog — Standalone Install
# Installs agents to ~/.claude/agents/ — no claude-config required
#
# Usage:
#   ./install.sh              # interactive — pick categories
#   ./install.sh --all        # install all 134 agents
#   ./install.sh --active     # install only active agents (needs registry)
#   ./install.sh backend      # install specific category
#   ./install.sh B2 B7 K1     # install specific agents by ID

set -euo pipefail

CATALOG_DIR="$(cd "$(dirname "$0")" && pwd)"
AGENTS_DEST="${CLAUDE_AGENTS_DIR:-$HOME/.claude/agents}"
CLAUDE_CONFIG="${CLAUDE_CONFIG_DIR:-$HOME/Projects/claude-config}"
REGISTRY="$CLAUDE_CONFIG/config/agent-registry.json"

# Colors
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; NC='\033[0m'

echo "=== Claude Agent Catalog Installer ==="
echo "Source: $CATALOG_DIR"
echo "Target: $AGENTS_DEST"
echo ""

mkdir -p "$AGENTS_DEST"

MODE="${1:-}"

install_category() {
  local cat="$1"
  local src="$CATALOG_DIR/$cat"
  if [ -d "$src" ]; then
    mkdir -p "$AGENTS_DEST/$cat"
    cp -r "$src/"* "$AGENTS_DEST/$cat/"
    echo -e "  ${GREEN}✅${NC} $cat"
  else
    echo -e "  ${YELLOW}⚠️${NC}  $cat — not found in catalog"
  fi
}

CATEGORIES=(3d-cad ai-ops backend code-review data-analytics design devops jira-pm market-research marketing-engine orchestrator productivity prompt-engineering research sales-bizdev)

case "$MODE" in
  --all)
    echo "Installing all 134 agents..."
    for cat in "${CATEGORIES[@]}"; do install_category "$cat"; done
    ;;
  --active)
    echo "Installing active agents only..."
    if command -v python3 &>/dev/null && [ -f "$REGISTRY" ]; then
      CATALOG_DIR="$CATALOG_DIR" AGENTS_DEST="$AGENTS_DEST" REGISTRY="$REGISTRY" python3 - <<'PYEOF'
import json, os, shutil
catalog = os.environ['CATALOG_DIR']
dest = os.environ['AGENTS_DEST']
with open(os.environ['REGISTRY']) as f:
    reg = json.load(f)
active = [aid for aid, a in reg['agents'].items() if a.get('status') == 'active']
for aid in active:
    for cat in os.listdir(catalog):
        cat_path = os.path.join(catalog, cat)
        if not os.path.isdir(cat_path): continue
        for fname in os.listdir(cat_path):
            if not fname.endswith('.md'): continue
            fpath = os.path.join(cat_path, fname)
            with open(fpath) as mf:
                content = mf.read()
            if f'\nid: {aid}\n' in content:
                os.makedirs(os.path.join(dest, cat), exist_ok=True)
                shutil.copy(fpath, os.path.join(dest, cat, fname))
                print(f'  ✅ {aid} → {cat}/{fname}')
PYEOF
    else
      echo -e "${YELLOW}⚠️  --active requires agent-registry.json (install claude-config for this)${NC}"
      echo "   Using --all instead..."
      for cat in "${CATEGORIES[@]}"; do install_category "$cat"; done
    fi
    ;;
  "")
    echo "Categories:"
    for i in "${!CATEGORIES[@]}"; do
      echo "  $((i+1)). ${CATEGORIES[$i]}"
    done
    echo ""
    read -p "Enter categories (space-separated numbers or names, or 'all'): " selection
    if [ "$selection" = "all" ]; then
      for cat in "${CATEGORIES[@]}"; do install_category "$cat"; done
    else
      for sel in $selection; do
        if [[ "$sel" =~ ^[0-9]+$ ]]; then
          install_category "${CATEGORIES[$((sel-1))]}"
        else
          install_category "$sel"
        fi
      done
    fi
    ;;
  *)
    install_category "$MODE"
    for arg in "${@:2}"; do install_category "$arg"; done
    ;;
esac

echo ""
echo -e "${GREEN}Done.${NC} Agents installed to $AGENTS_DEST"
echo ""
echo "Optional: install claude-config for full system (auto-dispatch, skills, MCP):"
echo "  git clone https://github.com/SkyWalker2506/claude-config ~/Projects/claude-config"
echo "  cd ~/Projects/claude-config && ./install.sh"
