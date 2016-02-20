#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias la='ls -a'
alias mkdir='mkdir -pv'
alias mv=' timeout 8 mv -iv'
alias rm=' timeout 3 rm -Iv --one-file-system'
alias df='df -h'
alias du='du -ch'
alias top='htop'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias c='clear'
alias ports='netstat -tulanp'
alias vi=emacs
alias gpm="git push origin master"
alias update='yaourt -Syu'
alias nuke='killall -9'
alias repos='cd $HOME/Repositories'

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

hostname | figlet -f smslant
