function err_catch() {
  if [ "$1" = "0" ]; then
    echo "success"
  else
    echo "catch an error"
    echo "any type will off this terminal"
    read -r
    exit
  fi
}

local_frpc_config_path="$HOME/RaspberryPi/frp_config/frpc.ini"


$($frpc_app_path) verify -c "$local_frpc_config_path"
err_catch $?
echo 1
