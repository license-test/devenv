# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

alias vd='deactivate'
alias d='docker-machine env default ; eval $(docker-machine env default)'
alias docker-remove-stopped='docker ps -aq --no-trunc | xargs docker rm'
alias docker-unset='eval $(docker-machine env -u)'
alias drm='docker ps -aq --no-trunc | xargs docker rm'

alias empty-trash='/bin/rm -rf ${HOME}/.local/share/Trash/files/*'
alias fix-git-pathspec-issue='git remote update ; git fetch ; git checkout --track -b origin/$1'
alias ga='git add'
alias gd='git diff'
alias gdl='git diff --name-only'
alias gc='git commit'
alias gh='git config remote.origin.push HEAD'
alias gi='yesterday=`gdate --date="2 day ago" +%Y-%m-%d ` ; gitinspector --since $yesterday -F html -HTlrm . > gitinspector-stats.html'
alias gl='git ls-files --others --exclude-standard'
alias glv='git log --stat'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias glv='git log --stat'
alias glf='git log --full-diff -p $1'
# Git log find by commit message
function gls() { git log --all --grep="$1"; }
alias gp='env GIT_SSL_NO_VERIFY=true git push'
alias gpl='git pull'
alias gplcp='git pull ; gcp'
alias gru='git fetch origin -v; git fetch upstream -v; git merge upstream/master; git push'
alias gs='git status .'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gda='git diff HEAD'
alias gi='git init'
alias gm='git merge --no-ff'
alias gss='git status -s'
alias g='grep --color=auto -R'


alias l='ls -l --time-style=full-iso'
alias j='jupyter notebook'
alias make='make -j4'
alias m='make > a 2>&1 ; less a'
alias open='gvfs-open'
alias p='python3'
alias p2='python2'
alias p3='python3'
alias phpunit='php -dzend_extension=xdebug.so `$(which phpunit)`'
alias rm='rm -i'
alias sr='ip=`hostname -i`; ssh root@${ip}'
alias vim='/usr/bin/vim -O'
alias v='source ${HOME}/Projects/venv/bin/activate'
alias v3='source ${HOME}/Projects/venv3/bin/activate'
alias d='docker-machine env default ; eval $(docker-machine env default)'
alias sg='sync-github-repos'
alias u='sudo apt update ; sudo apt upgrade -y ; sudo apt autoremove -y'
#alias g++='/usr/local/bin/g++ -std=c++11 -I/usr/include/x86_64-linux-gnu/ -L/usr/local/lib64/'
#alias gcc='/usr/local/bin/gcc'
#alias rm='gvfs-trash --'
#alias v='virtualenv -p /usr/bin/python2.7 ${HOME}/Projects/venv ; source ${HOME}/Projects/venv/bin/activate'

export PYTHONSTARTUP="${HOME}/.pyrc"
source ${HOME}/.git-completion.bash
