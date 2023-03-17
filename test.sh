source ./shs/utils.sh

mkdir_if_not "./test/22"
err_catch $? "mkdir_if_not"

read
