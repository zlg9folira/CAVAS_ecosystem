## CAVAS Messages

ROS Messages that facilitate communication between connected autonomous vehicles and infrastructure across campus-wide CAVAS ecosystem.
 

## System Requirements

**ROS**

Enabled support for Ubuntu 16.04 (ROS Kinetic) or Ubuntu 18.04 (ROS Melodic) 

## Installation & Usage 

1 - Change directory to the source directory of your catkin workspace and clone:
```sh
cd catkin_ws/src
git clone https://github.com/zlg9folira/CAVAS_ecosystem.git
```

2- Build: 
```sh
cd ..
catkin_make --only-pkg-with-deps cavas_msgs
```
3- Usage: 
include the header files in your C++ project as: 
```sh
#include <cavas_msgs/SPaT.h>
```
Create subscriber/publisher using `message_filters::Subscriber<cavas_msgs::SPaT>`:
```sh
message_filters::Subscriber<cavas_msgs::SPaT> CPTL(nh, "/infra/SPaT", 5);
```


## Meta

Credit: Foad Hajiaghajani

[CONNECTED AND AUTONOMOUS VEHICLE APPLICATIONS AND SYSTEMS](https://ubwp.buffalo.edu/cavas)


