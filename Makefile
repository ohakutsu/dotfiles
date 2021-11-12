DOTFILES_PATH=~/ohakutsu/dotfiles

brew: .Brewfile
	ln -sfv ${DOTFILES_PATH}/.Brewfile ~/.Brewfile
	brew bundle install --global

zsh: .zshrc .zsh/**/*
	ln -sfv ${DOTFILES_PATH}/.zshrc ~/.zshrc
	ln -sfv ${DOTFILES_PATH}/.zsh ~/.zsh

vim: .vimrc
	ln -sfv ${DOTFILES_PATH}/.vimrc ~/.vimrc

git: .gitconfig
	ln -sfv ${DOTFILES_PATH}/.gitconfig ~/.gitconfig
