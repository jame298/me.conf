export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="steeef"
DISABLE_AUTO_TITLE="true"
plugins=(git osx ruby github golang rails bundler git-flow)

alias sgdb='sudo /usr/local/bin/gdb'

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export GOPATH=$HOME/.go
export PATH=$GOPATH/bin:$PATH

if [ -f $HOME/.zsh_aliases ]; then
	. $HOME/.zsh_aliases
fi
