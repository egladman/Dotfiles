#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#Run X on the same tty used to login
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
