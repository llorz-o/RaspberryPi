source "$(cd ~ && pwd)/.utils.sh"

project_path=$(shell_path "$0")

services_dir=$project_path/../services
frp_dir=$project_path/../frp
frp_client=$frp_dir/frp_client
app_name=frpc
#file_name=frpc.ini
## frpc 配置文件路径
frpc_app_path=$frp_client/$app_name
#new_config=$frp_dir/frpc.ini

$frpc_app_path verify -c "$frp_dir/frpc.ini"
err_catch $? "frpc config verify"

#file_content=$(cat "$new_config")
# > 覆盖写入, >> 追加写入文件
#echo "$file_content" > "$frp_client/$file_name"
#err_catch $? "rewrite config"

cd "$services_dir" && pm2 restart frp 2>> "$LOG"
err_catch $? "restart pm2 frp"
