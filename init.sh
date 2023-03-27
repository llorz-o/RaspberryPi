# 将 utils.sh 导入 .bashrc 先
# ssh 登录不会自动引用 .bashrc 而是q
# .bash_profile .bash_login .profile 其中一个
terminal_pwd=$(pwd)
cd "$terminal_pwd" || exit
relative_shell_dir=$(dirname "$0")
cd "$relative_shell_dir" || exit
absolute_shell_dir=$(pwd)

# 将utils.sh 写入到根目录
cd ~ || return
touch .utils.sh
cat "$absolute_shell_dir/shs/utils.sh" > .utils.sh

source "$(cd ~ || return && pwd)/.utils.sh"

is_file "$absolute_shell_dir/init.log"
err_catch $? "is file init.log"

# 之前的代码不要改动

#pm2 start ~/RaspberryPi/server_frp.sh 2>>"$LOG_FILE"
#err_catch $? "init.sh pm2 server_frp"
