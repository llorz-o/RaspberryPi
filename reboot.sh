echo "cron reboot script on time:$(date "+%Y/%m/%d %H:%M:%S")" >>~/reboot.log
sleep 120

SERVICES_DIR=/home/pi/RaspberryPi/services
PM2="/root/.nvm/versions/node/v19.8.1/bin/pm2"

function main() {

  cd "$SERVICES_DIR" && $PM2 start frp-ssh.sh

  cd "$SERVICES_DIR" && $PM2 start frp.sh

  cd "$SERVICES_DIR" && $PM2 start cron.sh
}

main >>~/reboot.log 2>&1
