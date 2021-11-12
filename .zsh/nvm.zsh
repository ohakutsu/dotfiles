# nvm
init_nvm() {
  unset -f init_nvm

  export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf     %s "${XDG_CONFIG_HOME}/nvm")"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
}

nvm() {
  unset -f nvm

  init_nvm
  nvm "$@"
}

node() {
  unset -f node

  init_nvm
  node "$@"
}
