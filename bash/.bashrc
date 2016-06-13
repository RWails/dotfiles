if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin
export PATH

alias ls="ls -lahG"
alias tmux="tmux -2"
export PS1="[\d \t \u@\h:\w]\n\$ "
