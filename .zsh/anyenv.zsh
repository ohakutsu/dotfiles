if which nodenv 1>/dev/null 2>&1; then
	eval "$(nodenv init -)"
fi

if which rbenv 1>/dev/null 2>&1; then
	eval "$(rbenv init - zsh)"
fi
