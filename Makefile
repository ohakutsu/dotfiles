DOTFILES_PATH=~/ohakutsu/dotfiles

all: brew zsh vim git tmux iterm2 nvim hammerspoon

brew:
	ln -sfv ${DOTFILES_PATH}/.Brewfile ~/.Brewfile
	brew bundle install --global

zsh:
	${DOTFILES_PATH}/scripts/install_zplug.sh

	ln -sfv ${DOTFILES_PATH}/.zshrc ~/.zshrc
	mkdir -p ~/.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/aliases.zsh ~/.zsh/aliases.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/anyenv.zsh ~/.zsh/anyenv.zsh

vim:
	ln -sfv ${DOTFILES_PATH}/.vimrc ~/.vimrc

git:
	ln -sfv ${DOTFILES_PATH}/.gitconfig ~/.gitconfig

tmux:
	ln -sfv ${DOTFILES_PATH}/.tmux.conf ~/.tmux.conf

iterm2:
	mkdir -p ~/iterm2
	ln -sfv ${DOTFILES_PATH}/iterm2/com.googlecode.iterm2.plist ~/iterm2/com.googlecode.iterm2.plist

nvim:
	mkdir -p ~/.config/nvim
	ln -sfv ${DOTFILES_PATH}/.config/nvim/init.vim ~/.config/nvim/init.vim

hammerspoon:
	mkdir -p ~/.hammerspoon
	ln -sfv ${DOTFILES_PATH}/.hammerspoon/init.lua ~/.hammerspoon/init.lua

.PHONY: all brew zsh vim git tmux iterm2 nvim hammerspoon
