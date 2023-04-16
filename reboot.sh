echo "cron reboot script on time:$(time "+%Y/%m/%d %H:%M:%S")" >>~/reboot.log
sleep 120

PI_DIR=/home/pi/RaspberryPi
PM2="/root/.nvm/versions/node/v19.8.1/bin/pm2"

function main() {

  cd "$PI_DIR" && $PM2 frp-ssh

  cd "$PI_DIR" && $PM2 frp

  cd "$PI_DIR" && $PM2 cron
}

main >>~/reboot.log 2>&1
