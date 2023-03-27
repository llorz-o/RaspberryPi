. "$(cd ~ || return && pwd)/.bashrc"

cd aa 2>>"$LOG_FILE"
err_catch $? "test command error catch"
read
