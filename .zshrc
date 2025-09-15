#!/bin/zsh

# =============================================================================
# COMMON CONFIGURATION
# =============================================================================

# Core environment setup
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$PATH:/Users/max/.lmstudio/bin"
export LANG=en_US.UTF-8

# Load secrets
[[ -f ~/.secrets ]] && source ~/.secrets

# =============================================================================
# CURSOR AGENT: Minimal mode
# =============================================================================

if [[ -n "$CURSOR_AGENT" ]]; then
  PROMPT='%F{cyan}%n%f:%F{yellow}%~%f %#'
  return
fi

# =============================================================================
# INTERACTIVE TERMINAL: Full featured mode
# =============================================================================

# Oh My Zsh setup
export ZSH="/Users/max/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git gitfast git-prompt mise)

# Enable Powerlevel10k instant prompt
[[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]] &&
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"

# Initialize tools (silent to avoid instant prompt warnings)
eval "$(~/.local/bin/mise activate zsh)" > /dev/null 2>&1

# Load Oh My Zsh and Powerlevel10k
source $ZSH/oh-my-zsh.sh
[[ -r ~/.p10k.zsh ]] && source ~/.p10k.zsh

# Zellij AI CLI alias
alias ai-cli='zellij --layout ai-coding'
