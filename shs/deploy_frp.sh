source "$(cd ~ && pwd)/.utils.sh"

DIR=$(shell_path "$0")

echo "当前文件夹为：$DIR"

frp_path=$DIR/../frp

if [ ! -f "$frp_path/frp_0.48.0_linux_arm64.tar.gz" ]; then
  frp_download_link="https://github.com/fatedier/frp/releases/download/v0.48.0/frp_0.48.0_linux_arm64.tar.gz"
  cd "$frp_path" && wget "$frp_download_link"
fi

tar -xf "$frp_path/frp_0.48.0_linux_arm64.tar.gz" 2>> "$LOG"
err_catch $? "tar frp gz file"

rm -rf frp_client
cd "$frp_path" && mv frp_0.48.0_linux_arm64 frp_client
err_catch $? "rename frp dir"

cd frp_client || return

sh "$DIR/update_frp_config.sh"

