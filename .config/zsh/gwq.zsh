if which gwq 1>/dev/null 2>&1; then
	source <(gwq completion zsh)

	alias cw='cd $(gwq get || gwq get $(git branch --show-current))'
fi
