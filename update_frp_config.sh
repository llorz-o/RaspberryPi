frp_dir=/home/richard/work/frp/frp_0.47.0_linux_arm

file_name=frpc.ini

this_dir=$(dirname "$0")

local_frpc_config="$this_dir/frp_config/frpc.init"

cat "$local_frpc_config" >>"$frp_dir/$file_name"
