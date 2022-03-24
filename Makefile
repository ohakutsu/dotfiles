DOTFILES_PATH=~/ohakutsu/dotfiles

all: brew zsh vim git tmux iterm2 nvim hammerspoon

brew:
	ln -sfv ${DOTFILES_PATH}/.Brewfile ~/.Brewfile
	brew bundle install --global

zsh:
	sh ./scripts/install_zplug.sh
	ln -sfv ${DOTFILES_PATH}/.zshrc ~/.zshrc
	mkdir -p ~/.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/aliases.zsh ~/.zsh/aliases.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/anyenv.zsh ~/.zsh/anyenv.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/ffmpeg.zsh ~/.zsh/ffmpeg.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/holidays.zsh ~/.zsh/holidays.zsh
	ln -sfv ${DOTFILES_PATH}/.zsh/llvm.zsh ~/.zsh/llvm.zsh

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
	sh ./scripts/install_dein_vim.sh
	ln -sfv ${DOTFILES_PATH}/.config/nvim/init.vim ~/.config/nvim/init.vim
	ln -sfv ${DOTFILES_PATH}/.config/nvim/plugins.toml ~/.config/nvim/plugins.toml
	ln -sfv ${DOTFILES_PATH}/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

hammerspoon:
	mkdir -p ~/.hammerspoon
	ln -sfv ${DOTFILES_PATH}/.hammerspoon/init.lua ~/.hammerspoon/init.lua

vscode:
	mkdir -p ~/.vscode
	ln -sfv ${DOTFILES_PATH}/.vscode/.vimrc ~/.vscode/.vimrc
	sh ./scripts/install_vscode_extensions.sh

.PHONY: all brew zsh vim git tmux iterm2 nvim hammerspoon

format:
	shfmt -w .zsh/*.zsh .zshrc scripts/*.sh
	prettier --write **/*.md **/*.toml **/*.json

.PHONY: format
