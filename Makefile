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
	mkdir -p ~/.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/aliases.zsh ~/.zsh/aliases.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/nvm.zsh ~/.zsh/nvm.zsh

.PHONY: vim
vim:
	ln -sfv ${DOTFILES_PATH}/.vimrc ~/.vimrc

.PHONY: git
git:
	ln -sfv ${DOTFILES_PATH}/.gitconfig ~/.gitconfig

.PHONY: tmux
tmux:
	ln -sfv ${DOTFILES_PATH}/.tmux.conf ~/.tmux.conf

.PHONY: iterm2
iterm2:
	mkdir -p ~/iterm2
	ln -sfv ${DOTFILES_PATH}/iterm2/com.googlecode.iterm2.plist ~/iterm2/com.googlecode.iterm2.plist

.PHONY: nvim
nvim:
	mkdir -p ~/.config/nvim
	ln -sfv ${DOTFILES_PATH}/.config/nvim/init.vim ~/.config/nvim/init.vim
