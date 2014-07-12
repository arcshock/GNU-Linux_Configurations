# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.
export BROWSER="firefox '%s' &"
export EDITOR="vim"

export TAU_HOME="/opt/tau-2.23/x86_64/"
export TAU_MAKEFILE="$TAU_HOME/lib/Makefile.tau"

#alias ls='ls -l -h --color'

PATH="$HOME/.local/bin:${PATH}"
PATH="/opt/tau-2.23/x86_64/bin:${PATH}"

