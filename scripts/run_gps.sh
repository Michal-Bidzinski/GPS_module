PORT="$1"
sudo chmod 777 ${PORT}
sleep 2
roslaunch gps gps.launch port:=${PORT}
