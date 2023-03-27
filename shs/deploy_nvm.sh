source "$(cd ~ || return && pwd)/.utils.sh"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

cd ~ || return
is_file .nvmrc
echo "19.8.1" > .nvmrc

nvm install 19.8.1
err_catch $? "nvm install 19.8.1"
