
#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PACKAGE_FILE="$SCRIPT_DIR/../packages/desktop.txt"

mapfile -t packages < <(
    grep -vE '^[[:space:]]*(#|$)' "$PACKAGE_FILE"
)

if (( ${#packages[@]} == 0 )); then
    echo "No packages to install."
    exit 0
fi

sudo pacman -S --needed "${packages[@]}"
