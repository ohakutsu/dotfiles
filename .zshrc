export EDITOR=nvim

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
ZSHHOME="${HOME}/.config/zsh"
if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
	for i in $ZSHHOME/*; do
		[[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
	done
fi

### homebrew ###
eval $(/opt/homebrew/bin/brew shellenv)

### sheldon ###
eval "$(sheldon source)"

# pure
PURE_GIT_PULL=0
PURE_PROMPT_SYMBOL="$(printf "\xF4\x80\x82\xAF oO")"
