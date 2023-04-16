#echo "crontab run it origin is:$1 whoami is:$(whoami) " >> ~/test_crontab.log 2>&1
#type node >> ~/test_crontab.log 2>&1
#type pm2 >> ~/test_crontab.log 2>&1
#pm2 start /home/pi/RaspberryPi/server_frp_ssh.sh >> ~/test_crontab.log 2>&1

PATH="/usr/bin:/bin:/root/.nvm/versions/node/v19.8.1/bin/node"
pm2 -h >> ~/test_crontab.log 2>&1
