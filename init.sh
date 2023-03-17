echo "\$0 $0"
new_pwd=$(pwd)
echo "pwd $new_pwd"
dirName=$(dirname "$0")
echo "dirname \$0 $dirName"
cdPwd=$(
  cd "$dirName" || exit
  pwd
)
echo "cd dirName and pwd is absolute path of this shell:"
echo "$cdPwd"

exit
source ./shs/utils.sh

is_file "init.log"
err_catch $? "is file init.log"

pm2 start ~/RaspberryPi/server_frp.sh
err_catch $? "init.sh pm2 server_frp"
