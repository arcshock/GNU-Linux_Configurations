# Author: Bucky Frost
# File: .zshrc
# Purpose: Configuration of the ZSH

# == First Time User Configuration ====================
#
# To rerun new user install, use the following commands.
# 	autoload -Uz zsh-newuser-install
# 	zsh-newuser-install -f
#
# =====================================================

# == Lines configured by zsh-newuser-install ==========
HISTFILE=~/.zsh_histfile
HISTSIZE=2000
SAVEHIST=5000
setopt HIST_IGNORE_DUPS 
setopt appendhistory nomatch notify
bindkey -v
# == End of lines configured by zsh-newuser-install ===

# == The following lines were added by compinstall ====
zstyle :compinstall filename '/home/voot/.zshrc'

autoload -Uz compinit
compinit
# == End of lines added by compinstall ================


# == Prompt Configuration =============================
autoload -U promptinit
promptinit
prompt elite2 
# =====================================================


# == Aliases ==========================================
alias ls='ls --color=auto'
alias ll='ls -lh --color=auto'
alias la='ls -lah --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias downloads='~/Downloads/'
# =====================================================
