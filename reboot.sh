echo "cron reboot script on time:$(date "+%Y/%m/%d %H:%M:%S")" >>~/reboot.log
sleep 120

PI_DIR=/home/pi/RaspberryPi
PM2="/root/.nvm/versions/node/v19.8.1/bin/pm2"

function main() {

  cd "$PI_DIR" && $PM2 start frp-ssh

  cd "$PI_DIR" && $PM2 start frp

  cd "$PI_DIR" && $PM2 start cron
}

main >>~/reboot.log 2>&1
