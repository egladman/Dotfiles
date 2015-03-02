# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


##################################
#Starts tmux on every shell login#
##################################

# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux


###################
#ASCII TEXT BANNER#
###################
hostname | figlet
