EDITOR=vi

## Colors ##
autoload colors; colors

## for the isle ##
export JAVA_HOME='/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home'

## Layout der Prompt ## 
export PS1="%B[%n%b@%B%{$fg[blue]%}%m%b%{$reset_color%}:%~%B]%b "
export PATH=~/bin/:$PATH
export PATH="/usr/local/sbin:$PATH"

## F#?# For the Umlauts ## 
# LC_ALL=de_DE.ISO8859-1; export LC_ALL
LA_ALL="de_DE.UTF-8"; export LC_ALL

LANG="de_DE.UTF-8"
LC_COLLATE="de_DE.UTF-8"
LC_CTYPE="de_DE.UTF-8"
LC_MESSAGES="de_DE.UTF-8"
LC_MONETARY="de_DE.UTF-8"
LC_NUMERIC="de_DE.UTF-8"
LC_TIME="de_DE g.UTF-8"

## History options ##
HISTSIZE=20000
SAVEHIST=20000
HISTFILE=~/.history

## The completion stuff ##
bindkey "^[[5~" history-search-backward
bindkey "^[[6~" history-search-forward

bindkey '\e[A' history-beginning-search-backward
bindkey '\e[B' history-beginning-search-forward
#bindkey '^xp' history-beginning-search-backward
#bindkey '^xn' history-beginning-search-forward

zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' max-errors 2 not-numeric
zstyle ':completion:*' menu select=2
zstyle :compinstall filename '/root/.zshrc'

autoload -Uz compinit
compinit

## Working path in top bar of your Terminal ##
case $TERM in
sun-cmd)
precmd () { print -Pn "\e]l%~\e\\" }
preexec () { print -Pn "\e]l%~\e\\" }
;;
*xterm*|rxvt|(dt|k|E)term)
precmd () { print -Pn "\e]2;%n@%m:%~\a" }
preexec () { print -Pn "\e]2;%n@%m:%~\a" }
;;
esac
