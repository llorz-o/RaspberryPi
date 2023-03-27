# 将 utils.sh 导入 .bashrc 先
# ssh 登录不会自动引用 .bashrc 而是q
# .bash_profile .bash_login .profile 其中一个
terminal_pwd=$(pwd)
cd "$terminal_pwd" || exit
relative_shell_dir=$(dirname "$0")
cd "$relative_shell_dir" || exit
absolute_shell_dir=$(pwd)

cd ~ || exit
root_path=$(pwd)
if [ ! -f ".bashrc" ]; then
    touch ".bashrc"
    echo "source $absolute_shell_dir/shs/utils.sh" > .bashrc
    echo "export LOG_FILE=\"$absolute_shell_dir/init.log\"" >> .bashrc
else
    match_bashrc=$(grep -r -n -e "^source .*utils.sh$" .bashrc)
    if [ -z "$match_bashrc" ]; then
      echo "source $absolute_shell_dir/shs/utils.sh" >> .bashrc
    fi

    match_log=$(grep -r -n -e "^export .*init.log$" .bashrc)
    if [ -z "$match_log" ]; then
      echo "export LOG_FILE=\"$absolute_shell_dir/init.log\"" >> .bashrc
    fi
fi
echo "$root_path"
source "$root_path/.bashrc"

is_file "$absolute_shell_dir/init.log"
err_catch $? "is file init.log"

# 之前的代码不要改动

#pm2 start ~/RaspberryPi/server_frp.sh 2>>"$LOG_FILE"
#err_catch $? "init.sh pm2 server_frp"
