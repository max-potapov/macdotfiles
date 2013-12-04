#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export PATH="/Users/$(whoami)/.homebrew/bin:/Users/$(whoami)/.homebrew/sbin:$PATH"
export PATH="$PATH:/Users/$(whoami)/devel/depot_tools"

export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export LESS="-R"
export EDITOR="vim"

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad
export GREP_OPTIONS='--color=auto'

export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

PS1='[`tput setaf 3`\u@\h`tput sgr0` `tput setaf 2`\W`tput sgr0`$(__git_ps1 " (`tput setaf 1`%s`tput sgr0`)")]\$ '

HISTCONTROL=ignoreboth
HISTIGNORE='reset:clear'
export HISTSIZE="10000"

shopt -s histappend
shopt -s cmdhist
shopt -s lithist
PROMPT_COMMAND='history -a'
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

shopt -s checkwinsize
shopt -s cdspell

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

if [ -f ~/Tools/mvncolor/mvncolor.sh ]; then
  . ~/Tools/mvncolor/mvncolor.sh
fi
