# .bashrc

HISTSIZE=50000
#HISTCONTROL=ignoredups
HISTCONTROL=erasedups
shopt -s histappend
PROMPT_COMMAND='history -a'

# User specific aliases and functions

BACKUP=/backup/olga-FC04/

alias psw="ps -ef | awk '{print $2}' | xargs pargs"
alias vi='vim'
#alias vi=$(backup $1; vim $1)

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias grep='grep --colour=auto'

alias acclog='tail -$1f /var/log/httpd/access_log'
alias errlog='tail -$1f /var/log/httpd/error_log'
alias l='ls -l'
alias a='ls -la'
alias f='ls -lF'
alias lh='ls -lFh'
alias lt='ls -l --time-style=+"%d.%b.%y %H:%M:%S"'
alias host='host -t any'
alias cd='pushd'
alias vd='dirs -v'

alias h='history'
alias hg='history | egrep'

alias pong='ping -i .01 -w 1 -c5'
alias ddiff='diff -w -y'

# quick edit and activate new shell settings
alias vb="vi $HOME/.bashrc; source $HOME/.bashrc"
alias sb="source $HOME/.bashrc"

PS1="\[$(tput smso)\][\A \u@\h \$(pwd) \! ]#\[$(tput rmso)\] "
# more INFO: http://linux.cad.de/tips_und_tricks/bash-prompt.shtml

# PS2 is the prompt when you have an open tag like '"' 
PS2='$USER> '

# PS4 is the prompt when you have a multi line command e.g. 
# cat file | \ grep something 
PS4='+ '

# every time your speaker beeps, there is a visual flash 
#set bell-style visible 

# after that you can scroll with 'Scroll Lock'-on <Pg Up> <Pg Dn> 
#set horizontal-scroll-mode On

num()
{
 if [ $# -eq 0 ]; then
  echo "usage: numline FILENAME" >&2
  return 1
 fi
 seq -w 1 `wc -l $1 | awk '{print$1}'` | paste -d " " - $1
}

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi
