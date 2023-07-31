if which nodenv 1>/dev/null 2>&1; then
	eval "$(nodenv init -)"
fi

if which rbenv 1>/dev/null 2>&1; then
	eval "$(rbenv init - zsh)"
fi

if which pyenv 1>/dev/null 2>&1; then
	export PYENV_ROOT="${HOME}/.pyenv"
	command -v pyenv >/dev/null || export PATH="${PYENV_ROOT}/bin:${PATH}"
	eval "$(pyenv init -)"
fi
