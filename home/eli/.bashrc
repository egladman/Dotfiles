#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# chrome
alias chrome='google-chrome-stable'

# mooltipass chrome app
alias mooltipass='google-chrome-stable --app-id=cdifokahonpfaoldibbjmbkdhhelblpj'

# postman chrome app
alias postman='google-chrome-stable --app-id=fdmmgilgnpjigdojojpjoooidkmcomcm'

#RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# RVM bash completion
[[ -r "$HOME/.rvm/scripts/completion" ]] && source "$HOME/.rvm/scripts/completion"

source /usr/share/git/completion/git-completion.bash
source /usr/lib/python3.4/site-packages/powerline/bindings/bash/powerline.sh

hostname | figlet -f smslant

