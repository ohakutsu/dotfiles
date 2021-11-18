DOTFILES_PATH=~/ohakutsu/dotfiles

.PHONY: all
all: brew zsh vim git tmux iterm

.PHONY: brew
brew:
	ln -sfv ${DOTFILES_PATH}/.Brewfile ~/.Brewfile
	brew bundle install --global

.PHONY: zsh
zsh:
	ln -sfv ${DOTFILES_PATH}/.zshrc ~/.zshrc
	ln -sfv ${DOTFILES_PATH}/.zsh ~/.zsh

.PHONY: vim
vim:
	ln -sfv ${DOTFILES_PATH}/.vimrc ~/.vimrc

.PHONY: git
git:
	ln -sfv ${DOTFILES_PATH}/.gitconfig ~/.gitconfig

.PHONY: tmux
tmux:
	ln -sfv ${DOTFILES_PATH}/.tmux.conf ~/.tmux.conf

.PHONY: iterm
iterm:
	ln -sfv ${DOTFILES_PATH}/iterm ~/iterm
