frp_dir=/home/richard/work/frp/frp_0.47.0_linux_arm

file_name=frpc.ini

pwd=$(pwd)

local_frpc_config="$pwd/frp_config/frpc.init"

cat "$local_frpc_config" >>"$frp_dir/$file_name"
