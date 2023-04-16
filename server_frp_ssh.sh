echo "start run server_frp_ssh.sh" >> ~/crontab_reboot.log
dir=/home/pi/RaspberryPi
client=$dir/frp/frp_client
cd $client && ./frpc -c "$dir/frp/frpc-ssh.ini"
