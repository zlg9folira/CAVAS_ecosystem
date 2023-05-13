## vaisala_xml

This package implements ROS nodes to obtain road weather information from Vaisala road-side station and API (https://www.vaisala.io). The package will publish three type of messages: full version weather information (full_weather_info.msg), Summarized (UB) version weather information (ub_weather_info.msg) and image stream (Image.msg). These ROS messages are defined in Vaisala_msgs module.

## Installation

Two types of ROS messages - `full_weather_info.msg` and `ub_weather_info.msg` - are required for this package. Please view `README.md` under `vaisala_msgs` folder for installation.

Navigate to `ros_workspace/src/vaisala_xml`, execute the following line in terminal to install dependencies:
```sh
pip install -r requirements
```

Put `vaisala_xml` package under ROS src folder and execute the following commands:
`source devel/setup.bash`
`catkin_make` or `catkin_make --only-pkg-with-deps vaisala_xml`.

## How to run

Under `vasala_xml/launch`, there are three launch file for the demo: `full_weather_info.launch`, `ub_weather_info.launch` and `full_weather_image.launch`.

Before the running, set up the launch file parameter in the launch file.

To run the demon from the lauch file, run the following line in ROS. Since there are no difference for different launch file, the following example is used for `full_weather_info.launch`.
```sh
roslaunch vaisala_node Vaisala_node.launch 
```

User can run `rostopic echo /full_weather_info` to check the published message

## Parameter explanation

`username`		mandatory	string	The username of your VAISALA request
`password`		mandatory	string	The password of your VAISALA request
`station`		mandatory	string	The station of your VAISALA request
`region`		optional	string	The region of your VAISALA request
`cam`			optional	int		The id of camara of your request
`earliesttime`	optional	string	The earliest time of the time interval for your VAISALA request
`latesttime`	optional	string	The latest time of the time interval for your VAISALA request
`request_rate`	optional	int		The request rate for VAISALA API, in unit of second
`publish_rate`	optional	int		The publishing message rate to ROS topic, in unit of HZ


## Ros Scripts

### full_weather_info_publisher.py (vaisala_msgs/msg/full_weather_info.msg)::
The node will publish the full road weather infomation retrieved from VAISALA API over `full_weather_info` ROS topic. The default request rate of this publisher is 300s. The default publish rate of this publisher is 1 Hz.

### ub_weather_info_publisher.py (vaisala_msgs/msg/full_weather_info.msg)::
The node will publish the summarized road weather infomation (optimized for UB RWIS station) retrieved from VAISALA API over `UB_weather_info` ROS topic. The default request rate of this publisher is 300s. The default publish rate of this publisher is 1 Hz.

### image_publisher.py (sensor_msgs/msg/Image.msg)::
The node will publish the image stream from road-side camera (mounted on RWIS station) over `UB_weather_images` ROS topic. The default request rate of this publisher is 300s. The default publish rate of this publisher is 10 Hz.

### utility.py
This script contains all the utility functions used across this package. The detailed function explantion can be found in `utility.py`.

## Meta
Foad Hajiaghajani foadhaji@buffalo.edu	

Yuyang Bai yuyangba@buffalo.edu 

University at Buffalo - The State University of New York 

2022 

## Last update
2022




