DOTFILES_PATH=~/ohakutsu/dotfiles

.PHONY: brew
brew:
	ln -sfv ${DOTFILES_PATH}/.Brewfile ~/.Brewfile
	brew bundle install --global

.PHONY: zsh
zsh:
	ln -sfv ${DOTFILES_PATH}/.zshrc ~/.zshrc
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/zsh ~/.config/zsh

.PHONY: sheldon
sheldon:
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/sheldon ~/.config/sheldon

.PHONY: git
git:
	mkdir -p ~/.config/git
	ln -sfv ${DOTFILES_PATH}/.config/git/config ~/.config/git/config
	ln -sfv ${DOTFILES_PATH}/.config/git/ignore ~/.config/git/ignore

.PHONY: zellij
zellij:
	mkdir -p ~/.config/zellij
	ln -sfv ${DOTFILES_PATH}/.config/zellij/config.kdl ~/.config/zellij/config.kdl

.PHONY: alacritty
alacritty:
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/alacritty ~/.config/alacritty

.PHONY: nvim
nvim:
	mkdir -p ~/.config
	ln -shfv ${DOTFILES_PATH}/.config/nvim ~/.config/nvim

.PHONY: vscode
vscode:
	mkdir -p ~/.vscode
	ln -sfv ${DOTFILES_PATH}/.vscode/.vimrc ~/.vscode/.vimrc
	sh ./scripts/install_vscode_extensions.sh

.PHONY: gitui
gitui:
	mkdir -p ~/.config/gitui
	ln -sfv ${DOTFILES_PATH}/.config/gitui/key_bindings.ron ~/.config/gitui/key_bindings.ron

.PHONY: cspell
cspell:
	mkdir -p ~/.config
	ln -sfv ${DOTFILES_PATH}/.cspell.json ~/.config/.cspell.json
	ln -shfv ${DOTFILES_PATH}/.config/cspell ~/.config/cspell

.PHONY: mise
mise:
	mkdir -p ~/.config/mise
	ln -sfv ${DOTFILES_PATH}/.config/mise/config.toml ~/.config/mise/config.toml
	mise install

.PHONY: claude
claude:
	mkdir -p ~/.claude
	ln -sfv ${DOTFILES_PATH}/.claude/CLAUDE.md ~/.claude/CLAUDE.md

.PHONY: format
format:
	prettier --write --no-error-on-unmatched-pattern --list-different **/*.md **/*.json
	shfmt -w .config/zsh/*.zsh .zshrc scripts/*.sh
	stylua --verify --glob **/*.lua -- .config/nvim
	tombi format **/*.toml
	yamlfmt -dstar **/*.{yaml,yml}
