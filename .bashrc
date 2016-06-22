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

export EDITOR="vim"
export HISTSIZE=50000
export HISTFILESIZE=50000
export HISTCONTROL="ignoreboth"
export HISTIGNORE="&:ls:[bf]g:exit:pwd:clear:history*:h*"
export LESS="-iMFXR"

# bash completion
if [ -f /etc/profile.d/bash-completion.sh ]; then
	. /etc/profile.d/bash-completion.sh
fi

# source our functions
if [ -f /home/${USER}/.bash/functions ]; then
	. /home/${USER}/.bash/functions
fi

# source aliases
if [ -f /home/${USER}/.bash/aliases ]; then
	. /home/${USER}/.bash/aliases
fi
