dir=/home/pi/RaspberryPi
client=$dir/frp/frp_client
cd $client && ./frpc -c "$dir/frp/frpc.ini"
