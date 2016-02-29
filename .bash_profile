export EDITOR='atom -w'
export VISUAL='atom -w'
#export EDITOR='vi'
#export VISUAL='vi'


# homebrew
PATH+=:/usr/local/bin

# current directory bin (and for bundler)
# error: no directory
PATH=./bin:./.bundle/bin

# my bin
# error: no directory
#PATH=~/bin

# rbenv
# error: no directory
PATH+=:~/.rbenv/bin

# postgres
export PGHOME=/Applications/Postgres.app/Contents/Versions/9.3
PATH+=:$PGHOME/bin

# heroku
PATH+=:/usr/local/heroku/bin

# unix
# error: no directory
PATH+=:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

export PATH=/usr/local/bin:$PATH

# current directory bin
PATH+=:bin


# nvm
PATH+=:. ~/.nvm/nvm.sh

#Android react
PATH+=:/usr/local/opt/android-sdk

PATH+=:/Users/chrisguzman/zDevOps/gradle-2.4/bin/gradle
export PATH

# Android ADB
export ANDROID_HOME=/usr/local/opt/android-sdk

# pretty colors
export LESS='-R'

# Enable bash completion for git commands/branches
source /usr/local/etc/bash_completion.d/git-completion.bash

# Load rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Colors for prompt
RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[1;37m\]"
BLACK="\[\033[0;30m\]"
OFF="\[\033[0m\]"


# This will set the title of the iTerm tab to the name of the current directory
export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'

# Git Shortcuts
alias gc='git commit'
alias gb="git branch"
alias gco='git checkout'
alias gs='git status'
alias gcom='git checkout master'
alias gpr='git pull --rebase'
alias whatsmyip='ifconfig | grep inet && printf "STARTS WITH 10.\n"'
alias prep='git pull && bundle && rake db:migrate && git checkout db/structure.sql && git checkout Gemfile.lock'
alias save='export PREV=$(git symbolic-ref HEAD|cut -d/ -f3-) && git checkout -b "$1" && git commit -am "$1" && git checkout "$PREV"'



#Search for command by typing snippet then using up and down keys
bind '"\e[A":history-search-backward'
bind '"\e[B":history-search-forward'

# enable HIRB

export NVM_DIR="/Users/chrisguzman/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
