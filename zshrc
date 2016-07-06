export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="nebirhos"
DISABLE_AUTO_TITLE="true"
plugins=(git git-flow osx ruby golang python) 

alias sgdb='sudo /usr/local/bin/gdb'


source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/bin:/usr/local/sbin:$PATH
export GO15VENDOREXPERIMENT=1

if [ -f $HOME/.zsh_aliases ]; then
	. $HOME/.zsh_aliases
fi
