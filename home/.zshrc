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
HISTSIZE=3000
SAVEHIST=6000
setopt HIST_IGNORE_DUPS 
setopt appendhistory nomatch notify


# == End of lines configured by zsh-newuser-install ===

# == The following lines were added by compinstall ====
zstyle :compinstall filename '/home/voot/.zshrc'

autoload -Uz compinit
compinit
# == End of lines added by compinstall ================


# == zsh options ======================================
setopt INTERACTIVE_COMMENTS
setopt PROMPT_SUBST
setopt rcquotes			# escape ' with a '
setopt autocd
setopt HIST_VERIFY
setopt HIST_IGNORE_SPACE
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
# =====================================================

# == Keybindings ====================================== 
bindkey -v # use vi shortcuts

#bindkey '\e[A'  history-search-backward # up arrow for searching the history file that matches the current line
#bindkey '\e[B'  history-search-forward  # down arrow for searching the history file that matches the current line

# == Prompt Configuration =============================
autoload -U promptinit
promptinit
prompt elite2 

function zle-line-init zle-keymap-select {
	RPS1="${${KEYMAP/vicmd/}/(main|viins)/-- INSERT --}"
	RPS2=$RPS1
	zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
# =====================================================


# == Env Variables ====================================
export EDITOR='/usr/bin/vim'
export XDG_CONFIG_HOME="/home/$USER/.config"

PATH="$HOME/.local/bin:${PATH}"
PATH="$HOME/.local/scripts:${PATH}"
PATH="/opt/tau-2.23/x86_64/bin:${PATH}"
# =====================================================


# == Aliases ==========================================
alias ls='ls -F --color=auto'
alias ll='ls -lhF --color=auto'
alias la='ls -lahF --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias dirs='dirs -v'

alias ezsh="$EDITOR $HOME/.zshrc"
alias szsh="source $HOME/.zshrc"

alias -g L='| less'
alias -g G='| grep'
alias -g NUL="> /dev/null 2>&1"

alias hg="cat $HISTFILE | grep"
# =====================================================

# == Directory Hashes =================================
hash -d awesome="$XDG_CONFIG_HOME/awesome"
hash -d books="$HOME/files/books"
hash -d downloads="$HOME/Downloads"
hash -d workspace="$HOME/workspace"
hash -d www="/var/www"
# =====================================================

# == Shell Variables ==================================
# =====================================================
