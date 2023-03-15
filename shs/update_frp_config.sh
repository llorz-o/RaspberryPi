err_catch() {
  if [ "$1" = "0" ]; then
    echo "success"
  else
    echo "catch an error"
    echo "any type will off this terminal"
    read -r
    exit
  fi
}

frp_dir=/home/richard/work/frp/frp_0.47.0_linux_arm
app_name=frpc
file_name=frpc.ini
# frpc 配置文件路径
frpc_app_path="$frp_dir/$app_name"
local_frpc_config_path="$HOME/RaspberryPi/frp_config/frpc.ini"

$frpc_app_path verify -c "$local_frpc_config_path"
err_catch $?

file_content=$(cat "$local_frpc_config_path")
echo "$file_content" >>"$frp_dir/$file_name"
err_catch $?
