if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

LS_COLORS=$LS_COLORS:'di=1;34:ln=0;35:ex=1;31' ; export LS_COLORS

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

export PS1="[\d \t \u@\h:\w]\n\$ "

alias ls="ls -lah --color=auto"
alias tmux="tmux -2"
alias r="ranger"
