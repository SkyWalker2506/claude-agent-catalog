#!/bin/bash
# Claude Agent Catalog — Quick Install
# Installs selected agents into claude-config Multi-Agent OS
#
# Usage:
#   ./install.sh              # interactive — pick categories
#   ./install.sh --all        # install all 134 agents
#   ./install.sh --active     # install only 30 active agents
#   ./install.sh backend      # install specific category
#   ./install.sh B2 B7 K1     # install specific agents by ID

set -euo pipefail

CATALOG_DIR="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_CONFIG="${CLAUDE_CONFIG_DIR:-$HOME/Projects/claude-config}"
AGENTS_DEST="$CLAUDE_CONFIG/agents"
REGISTRY="$CLAUDE_CONFIG/config/agent-registry.json"

# Colors
GREEN='\033[0;32m'; YELLOW='\033[1;33m'; RED='\033[0;31m'; NC='\033[0m'

echo "=== Claude Agent Catalog Installer ==="
echo "Source: $CATALOG_DIR"
echo "Target: $AGENTS_DEST"
echo ""

# Check claude-config exists
if [ ! -d "$CLAUDE_CONFIG" ]; then
  echo -e "${RED}❌ claude-config not found at $CLAUDE_CONFIG${NC}"
  echo "   Set CLAUDE_CONFIG_DIR or clone: https://github.com/SkyWalker2506/claude-config"
  exit 1
fi

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
    echo "Installing 30 active agents only..."
    if command -v python3 &>/dev/null && [ -f "$REGISTRY" ]; then
      python3 - <<'PYEOF'
import json, os, shutil
catalog = os.environ.get('CATALOG_DIR', '.')
dest = os.environ.get('AGENTS_DEST', '')
registry_path = os.environ.get('REGISTRY', '')
with open(registry_path) as f:
    reg = json.load(f)
active = [aid for aid, a in reg['agents'].items() if a.get('status') == 'active']
for aid in active:
    # Find agent file in catalog
    for cat in os.listdir(catalog):
        cat_path = os.path.join(catalog, cat)
        if not os.path.isdir(cat_path): continue
        for fname in os.listdir(cat_path):
            fpath = os.path.join(cat_path, fname)
            if fname.endswith('.md'):
                with open(fpath) as mf:
                    content = mf.read()
                if f'\nid: {aid}\n' in content or content.startswith(f'---\nid: {aid}\n'):
                    dest_cat = os.path.join(dest, cat)
                    os.makedirs(dest_cat, exist_ok=True)
                    shutil.copy(fpath, os.path.join(dest_cat, fname))
                    print(f'  ✅ {aid} → {cat}/{fname}')
PYEOF
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
          idx=$((sel-1))
          install_category "${CATEGORIES[$idx]}"
        else
          install_category "$sel"
        fi
      done
    fi
    ;;
  *)
    # Category name or agent IDs
    install_category "$MODE"
    for arg in "${@:2}"; do install_category "$arg"; done
    ;;
esac

echo ""
echo "Done. Run claude-config install to apply:"
echo "  cd $CLAUDE_CONFIG && ./install.sh"
