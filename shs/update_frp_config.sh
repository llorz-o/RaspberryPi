source ./utils.sh

frp_dir=/home/pi/Workspace/frp/frp_arm
app_name=frpc
file_name=frpc.ini
# frpc 配置文件路径
frpc_app_path="$frp_dir/$app_name"
local_frpc_config_path="$HOME/Workspace/RaspberryPi/frp_config/frpc.ini"

$frpc_app_path verify -c "$local_frpc_config_path"
err_catch $? "frpc config verify"

file_content=$(cat "$local_frpc_config_path")
# > 覆盖写入, >> 追加写入文件
echo "$file_content" >"$frp_dir/$file_name"
err_catch $? "rewrite config"

pm2 restart server_frp
err_catch $? "restart pm2 frp"
