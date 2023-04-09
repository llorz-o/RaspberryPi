terminal_pwd=$(pwd)
cd "$terminal_pwd" || exit
relative_shell_dir=$(dirname "$0")
cd "$relative_shell_dir" || exit
absolute_shell_dir=$(pwd)

# 将utils.sh 写入到根目录
cd ~ || return
touch .utils.sh
cat "$absolute_shell_dir/shs/utils.sh" > .utils.sh

source "$(cd ~ && pwd)/.utils.sh"

# 之前的代码不要改动!!!!!
# 之前的代码不要改动!!!!!
# 之前的代码不要改动!!!!!

pm2 start ~/RaspberryPi/server_frp.sh 2>>"$LOG"
err_catch $? "init.sh pm2 server_frp"

pm2 start ~/RaspberryPi/server_frp_ssh.sh 2>>"$LOG"
err_catch $? "init.sh pm2 server_frp_ssh"
