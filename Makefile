DOTFILES_PATH=~/ohakutsu/dotfiles

all: brew zsh git tmux nvim hammerspoon

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
	ln -sfv ${DOTFILES_PATH}/.zsh/rust.zsh ~/.zsh/rust.zsh

git:
	mkdir -p ~/.config/git
	ln -sfv ${DOTFILES_PATH}/.config/git/config ~/.config/git/config
	ln -sfv ${DOTFILES_PATH}/.config/git/ignore ~/.config/git/ignore

tmux:
	ln -sfv ${DOTFILES_PATH}/.tmux.conf ~/.tmux.conf

alacritty:
	mkdir -p ~/.config/alacritty
	ln -sfv ${DOTFILES_PATH}/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml

nvim:
	mkdir -p ~/.config/nvim
	ln -sfv ${DOTFILES_PATH}/.config/nvim/init.vim ~/.config/nvim/init.vim

hammerspoon:
	mkdir -p ~/.hammerspoon
	ln -sfv ${DOTFILES_PATH}/.hammerspoon/init.lua ~/.hammerspoon/init.lua

vscode:
	mkdir -p ~/.vscode
	ln -sfv ${DOTFILES_PATH}/.vscode/.vimrc ~/.vscode/.vimrc
	sh ./scripts/install_vscode_extensions.sh

.PHONY: all brew zsh git tmux nvim hammerspoon

format:
	shfmt -w .zsh/*.zsh .zshrc scripts/*.sh
	prettier --write **/*.md **/*.toml **/*.json **/*.yml

.PHONY: format
