## cavas_msgs

ROS messages that facilitate communication between connected autonomous vehicles and infrastructure nodes in campus-wide CAVAS ecosystem.
 

## System Requirements

**ROS**

Enabled support for Ubuntu 16.04 (ROS Kinetic) or Ubuntu 18.04 (ROS Melodic) 

## Build

```sh
catkin_make --only-pkg-with-deps cavas_msgs
```
## Usage

Include header file for the message you need in your project:
```sh
#include <cavas_msgs/SPaT.h>
```
Make publisher/subscriber using `<cavas_msgs::<MSG>>`, example:
```sh
message_filters::Subscriber<cavas_msgs::SPaT> CPTL (nh, "/infra/CPTL_0", 1);
```


## Meta

Credit: Foad Hajiaghajani

