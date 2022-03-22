# GPS_module

This repository contains the program to handle the gps module, GY-GPS6MV2 GPS. The program publishes localization data using the ROS system.

## Installation
First, install ROS. This repository was tested on Ubuntu 18.04 with ROS MELODIC (http://wiki.ros.org/melodic/Installation/Ubuntu).

In addition to the basic python libraries, you need to install the pyserial library (version 3.5 was tested):
```
pip3 install pyserial==3.5
```

Next step is create workspace, download and build repository:
```
mkdir -p catkin_gps/src
cd catkin_gps/src/
git clone https://github.com/Michal-Bidzinski/OpenStreetMap_path_generator.git
cd ..
catkin_make
```
Now package is prepare for use.

In terminal you need write:
```
source devel/setup.bash
```
## Run

To run GPS module:
```bash
bash ./src/OpenStreetMap_path_generator/scripts/prepare_gps.sh 
```

To start work with GPS module run the bash script and provide the correct usb port:

```bash
./src/gps/scripts/run_gps.sh /dev/ttyUSB0
```

You can also run separatelly:
```bash
sudo chmod 777 /dev/ttyUSB0
roslaunch gps gps.launch port:=/dev/ttyUSB0
```

Published topics:
 - /gps_point_lat_lng, type: NavSatFix
