# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# zplug
source ~/.zplug/init.zsh

zplug "mafredri/zsh-async"

zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "zsh-users/zsh-autosuggestions", defer:2
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#757575"
ZSH_AUTOSUGGEST_PARTIAL_ACCEPT_WIDGETS=(
  forward-word
)

zplug "zsh-users/zsh-completions"

zplug "chrissicool/zsh-256color"

zplug "plugins/git", from:oh-my-zsh

zplug "romkatv/powerlevel10k", as:theme, depth:1

zplug load
#zplug load --verbose

# 補完候補を一覧表示する
setopt auto_list

# 補完のタブ移動を可能にする
setopt auto_menu
zstyle ':completion:*:default' menu select=1

# 同時に起動したzshの間でヒストリを共有する
setopt share_history

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

# コマンド自動補正
setopt correct

# コマンド履歴のファイルの保存先
HISTFILE=$HOME/.zsh_history

# メモリに保存されるコマンド履歴の件数
HISTSIZE=10000

# ファイルに保存されるコマンド履歴の件数
SAVEHIST=50000

# 自動補完の有効
autoload -U compinit; compinit

# 分割ファイルのロード
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
  for i in $ZSHHOME/*; do
    [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
  done
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
