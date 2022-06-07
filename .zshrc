export EDITOR=nvim

### zplug ###

source ~/.zplug/init.zsh

zplug "mafredri/zsh-async"

zplug "sindresorhus/pure", use:pure.zsh, from:github, as:theme
PURE_GIT_PULL=0

zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "zsh-users/zsh-autosuggestions"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#757575"
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
	forward-word
)

zplug "zsh-users/zsh-completions"

zplug "chrissicool/zsh-256color"

zplug "plugins/git", from:oh-my-zsh

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
	printf "Install? [y/N]: "
	if read -q; then
		echo
		zplug install
	fi
fi

zplug load
# zplug load --verbose

### zsh options ###

bindkey -e

setopt AUTO_LIST

setopt AUTO_MENU
zstyle ':completion:*:default' menu select=1

setopt SHARE_HISTORY

setopt HIST_IGNORE_ALL_DUPS

setopt HIST_REDUCE_BLANKS

setopt CORRECT

setopt GLOB_DOTS

HISTFILE=$HOME/.zsh_history

HISTSIZE=10000

SAVEHIST=50000

autoload -U compinit
compinit

# Load split zsh files
ZSHHOME="${HOME}/.zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
	for i in $ZSHHOME/*; do
		[[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi

# For tmux 3.3
export TERM=xterm-256color
