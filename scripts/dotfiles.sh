
#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DOTFILES_DIR="$SCRIPT_DIR/../dotfiles"

echo "Installing dotfiles..."

cd "$DOTFILES_DIR"

stow -t "$HOME" hypr waybar kitty

echo "Dotfiles installed!"
