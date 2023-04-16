terminal_pwd=$(pwd)
cd "$terminal_pwd" || exit
relative_shell_dir=$(dirname "$0")
cd "$relative_shell_dir" || exit
absolute_shell_dir=$(pwd)

# 将utils.sh 写入到根目录
cd ~ || return
touch .utils.sh
cat "$absolute_shell_dir/shs/utils.sh" >.utils.sh

source "$(cd ~ && pwd)/.utils.sh"

# 之前的代码不要改动!!!!!
# 之前的代码不要改动!!!!!
# 之前的代码不要改动!!!!!
dir=$(shell_path)

pm2 start "$dir/services/frp.sh" 2>>"$LOG"
err_catch $? "init.sh pm2 frp service"

pm2 start "$dir/services/frp-ssh.sh" 2>>"$LOG"
err_catch $? "init.sh pm2 frp-ssh service"

pm2 start "$dir/services/cron.sh" 2>>"$LOG"
err_catch $? "init.sh pm2 cron service"
