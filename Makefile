DOTFILES_PATH=~/ohakutsu/dotfiles

all: brew zsh git zellij alacritty nvim vscode gitui

brew:
	ln -sfv ${DOTFILES_PATH}/.Brewfile ~/.Brewfile
	brew bundle install --global

zsh:
	ln -sfv ${DOTFILES_PATH}/.zshrc ~/.zshrc
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/zsh ~/.config/zsh

sheldon:
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/sheldon ~/.config/sheldon

git:
	mkdir -p ~/.config/git
	ln -sfv ${DOTFILES_PATH}/.config/git/config ~/.config/git/config
	ln -sfv ${DOTFILES_PATH}/.config/git/ignore ~/.config/git/ignore

zellij:
	mkdir -p ~/.config/zellij
	ln -sfv ${DOTFILES_PATH}/.config/zellij/config.kdl ~/.config/zellij/config.kdl

alacritty:
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/alacritty ~/.config/alacritty

nvim:
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/nvim ~/.config/nvim

vscode:
	mkdir -p ~/.vscode
	ln -sfv ${DOTFILES_PATH}/.vscode/.vimrc ~/.vscode/.vimrc
	sh ./scripts/install_vscode_extensions.sh

gitui:
	mkdir -p ~/.config/gitui
	ln -sfv ${DOTFILES_PATH}/.config/gitui/key_bindings.ron ~/.config/gitui/key_bindings.ron

cspell:
	mkdir -p ~/.config
	ln -sfv ${DOTFILES_PATH}/.cspell.json ~/.config/.cspell.json
	ln -shfv ${DOTFILES_PATH}/.config/cspell ~/.config/cspell

mise:
	mkdir -p ~/.config/mise
	ln -sfv ${DOTFILES_PATH}/.config/mise/config.toml ~/.config/mise/config.toml
	mise install

.PHONY: all brew zsh git zellij alacritty nvim vscode gitui

format:
	prettier --write --no-error-on-unmatched-pattern --list-different **/*.md **/*.json
	shfmt -w .config/zsh/*.zsh .zshrc scripts/*.sh
	stylua --verify --glob **/*.lua -- .config/nvim
	tombi format **/*.toml
	yamlfmt -dstar **/*.{yaml,yml}

.PHONY: format
