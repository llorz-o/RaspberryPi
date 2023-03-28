source "$(cd ~ && pwd)/.utils.sh"
dir=$(shell_path "$0")
cd "$dir"/frp/frp_client || return
./frpc -c "$dir/frp/frpc.ini"
