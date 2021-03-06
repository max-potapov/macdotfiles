#
# ~/.bashrc
#

[[ $- != *i* ]] && return

export ANDROID_HOME=$HOME/devel/android-sdk-macosx
export PATH="$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/devel/webrtc/depot_tools
export PATH=$PATH:$HOME/Library/Python/2.7/bin

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

#export DEVELOPER_DIR=$(xcode-select -print-path)

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

RED_COLOR=$(tput setaf 1)
GREEN_COLOR=$(tput setaf 2)
YELLOW_COLOR=$(tput setaf 3)
RESET=$(tput sgr0)
PS1='[\[$YELLOW_COLOR\]\u@\h\[$RESET\] \[$GREEN_COLOR\]\W\[$RESET\]$(git-radar --bash --fetch " (\[$RED_COLOR\]%s\[$RESET\])")]\$ '

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

if [ -n "`which swift`" ]; then
    eval "`swift package completion-tool generate-bash-script`"
fi

shopt -s checkwinsize
shopt -s cdspell

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

