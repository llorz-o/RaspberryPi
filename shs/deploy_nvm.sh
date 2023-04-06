source "$(cd ~ && pwd)/.utils.sh"

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

source "$(cd ~ && pwd)/.bashrc"

cd ~ || return
is_file .nvmrc
echo "19.8.1" > .nvmrc

nvm install 19.8.1 2>> "$LOG"
err_catch $? "nvm install 19.8.1"

npm install -g pm2 2>> "$LOG"
err_catch $? "npm install pm2"
