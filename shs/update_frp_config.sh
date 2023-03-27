source "$(cd ~ || return && pwd)/.utils.sh"

project_path=$(shell_path "$0")

frp_dir=$project_path/../frp
frp_client=$frp_dir/frp_client
app_name=frpc
file_name=frpc.ini
# frpc 配置文件路径
frpc_app_path=$frp_client/$app_name
new_config=$frp_dir/frpc.ini

$frpc_app_path verify -c "$new_config"
err_catch $? "frpc config verify"

file_content=$(cat "$new_config")
# > 覆盖写入, >> 追加写入文件
echo "$file_content" > "$frp_client/$file_name"
err_catch $? "rewrite config"

pm2 restart server_frp 2>> "$LOG_FILE"
err_catch $? "restart pm2 frp"
