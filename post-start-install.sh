#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p ~/.config/git
ln -sf "$DOTFILES_DIR/git/ignore" ~/.config/git/ignore
ln -sf "$DOTFILES_DIR/CLAUDE.md" ~/CLAUDE.md
