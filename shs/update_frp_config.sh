frp_dir=/home/richard/work/frp/frp_0.47.0_linux_arm

file_name=frpc.ini

local_frpc_config="$HOME/RaspberryPi/frp_config/frpc.ini"

cat "$local_frpc_config" >>"$frp_dir/$file_name"
