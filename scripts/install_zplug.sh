export ZPLUG_HOME=~/.zplug

if ! test -e ${ZPLUG_HOME}/init.zsh; then
  git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi
