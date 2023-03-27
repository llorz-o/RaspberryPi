source "$(cd ~ || return && pwd)/.bashrc"

project_path=$(shell_path "$0")

cd "$project_path/frp" || exit

frp_download_link="https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_arm64.tar.gz"
wget "$frp_download_link"

tar -zxvf "frp_0.48.0_linux_arm64.tar.gz" 2 >> "$LOG_FILE"
err_catch $? "tar frp gz file"

mv frp_0.48.0_linux_arm64 frp_client
err_catch $? "rename frp dir"

cd frp_client || return

sh "$project_path/shs/update_frp_config.sh"

