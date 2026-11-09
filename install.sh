#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
    
bash "$SCRIPT_DIR/scripts/packages.sh"
bash "$SCRIPT_DIR/scripts/services.sh"
bash "$SCRIPT_DIR/scripts/dotfiles.sh"

echo "Installation complete!"