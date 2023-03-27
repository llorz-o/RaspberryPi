source "$(cd ~ || return && pwd)/.utils.sh"

cd aa 2>>"$LOG_FILE"
err_catch $? "test command error catch"
read
