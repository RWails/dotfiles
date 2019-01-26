if [ -f /etc/bashrc ]; then
   . /etc/bashrc
fi

HISTCONTROL=ignoreboth
shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

LS_COLORS=$LS_COLORS:'di=1;34:ln=0;35:ex=1;31' ; export LS_COLORS

PATH=$HOME/localpfx/bin:$PATH:$HOME/.local/bin:$HOME/bin:$HOME/python/bin
PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
PATH=$HOME/.shadow/bin:$PATH
export PATH

LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib:$HOME/localpfx/lib
export LD_LIBRARY_PATH

export CFLAGS="-isystem/home/rwails/include -isystem/home/rwails/localpfx/include -I/home/rwails/include/python3.4m"
export CPPFLAGS="-isystem/home/rwails/include -isystem/home/rwails/localpfx/include"
export CXXFLAGS="-isystem/home/rwails/include -isystem/home/rwails/localpfx/include"
export LDFLAGS="-L/home/rwails/lib -L/home/rwails/localpfx/lib"

PYTHONPATH=$PYTHONPATH:$HOME/python/lib/python2.7/site-packages/
export PYTHONPATH

export PS1="[\d \t \u@\h:\w]\n\$ "

alias make="make -j32"
alias ls="ls -lah --color=auto"
alias tmux="tmux -2"
alias r="ranger"

alias virtualenv="python /home/rwails/python/bin/virtualenv.py"

export CSCOPE_EDITOR=vim
