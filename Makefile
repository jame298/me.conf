build:
	sudo apt-get install emacs tmux zsh docker python
	curl -L http://install.ohmyz.sh | sh
install:
	PWD=$(shell pwd)
	ln -sfvn $(PWD)/emacs $(HOME)/.emacs
	ln -sfvn $(PWD)/emacs.d $(HOME)/.emacs.d
	ln -sfvn $(PWD)/tmux.conf $(HOME)/.tmux.conf
	ln -sfvn $(PWD)/zshrc $(HOME)/.zshrc
	ln -sfvn $(PWD)/vimrc $(HOME)/.vimrc
