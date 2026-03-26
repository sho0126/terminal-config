#!/bin/bash
set -e

DOTFILES="$(cd "$(dirname "$0")" && pwd)"

link() {
  local src="$1" dst="$2"
  mkdir -p "$(dirname "$dst")"
  if [ -L "$dst" ]; then
    rm "$dst"
  elif [ -e "$dst" ]; then
    mv "$dst" "${dst}.bak"
    echo "  backed up $dst -> ${dst}.bak"
  fi
  ln -s "$src" "$dst"
  echo "  $dst -> $src"
}

echo "==> Linking dotfiles..."
link "$DOTFILES/.zshrc"                          "$HOME/.zshrc"
link "$DOTFILES/git/.gitconfig"                  "$HOME/.gitconfig"
link "$DOTFILES/.config/ghostty/config"          "$HOME/.config/ghostty/config"
link "$DOTFILES/.config/yazi/yazi.toml"          "$HOME/.config/yazi/yazi.toml"
link "$DOTFILES/.config/zellij/layouts/dev.kdl"  "$HOME/.config/zellij/layouts/dev.kdl"
link "$DOTFILES/.config/starship.toml"           "$HOME/.config/starship.toml"
link "$DOTFILES/lazygit/config.yml"              "$HOME/Library/Application Support/lazygit/config.yml"

echo ""
echo "==> Installing brew packages..."
brew install --cask ghostty
brew install zellij yazi ffmpegthumbnailer poppler fd zoxide lazygit fzf ripgrep starship git-delta

echo ""
echo "Done! Run 'source ~/.zshrc' then 'dev' to start."
