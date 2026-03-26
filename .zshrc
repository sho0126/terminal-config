export PATH="/opt/homebrew/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/shinomiyasho/.lmstudio/bin"
# End of LM Studio CLI section


# Added by Antigravity
export PATH="/Users/shinomiyasho/.antigravity/antigravity/bin:$PATH"

. "$HOME/.local/bin/env"

# Android SDK
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$JAVA_HOME/bin:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH"

# Obsidian CLI
export PATH="$PATH:/Applications/Obsidian.app/Contents/MacOS"

# ── CLI Dev Environment ──────────────────────────────────
# fzf
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git"'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# zoxide
eval "$(zoxide init zsh)"

# starship
eval "$(starship init zsh)"

# alias
alias dev="zellij attach dev -c --layout dev"
# ─────────────────────────────────────────────────────────
