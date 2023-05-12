# vaisala_ros
ROS packages to access road weather information system (RWIS) data from VAISALA road-side unit
![rwis_layers](https://github.com/zlg9folira/CAVAS_ecosystem/assets/35779029/441ff19e-c6f8-4e1c-83bc-170ac2c58261)

## Packages
### vaisala_msgs
Defines the ROS messages containing road weather information such as 'ice layer (IL)', humidity (RH), 'rain state (RS)', 'wind speed (WS)', etc. For details refer to VAISALA documentation.

### vaisala_api
This package implements a ROS node to obtain road weather information from vendor API (https://www.vaisala.com/en) and publishes information to specific topics. Corresponding ROS messages are defined in vaisala_msgs package.

### vaisala_xml
This package implements ROS node to obtain information of Vaisala XML API (https://www.vaisala.io) and publish to specific topics. 

## install
Refer to the README file inside every package for standalone installation.

## Meta

Foad HAjiaghajani foadhaji@buffalo.edu

Yuyang Bai yuyangba@buffalo.edu

University at Buffalo - The State University of New York

2022
