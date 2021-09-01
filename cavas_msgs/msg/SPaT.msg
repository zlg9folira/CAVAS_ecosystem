# Message from CAVAS connected portable traffic light (CPTL) system  
# Author:			Foad Hajiaghajani
# Last Modified:		July 2021
# ------------

Header header

uint8 infra_id			# unique ID representing publisher {0},{1},etc.
string infra_class		# Target class 'vehicle' or 'pedestrian'
uint8 total_phase		# Maximum number of phases {1},{2},{3} per infra_class

float64 latitude		# global coordinate of the infrastructure 
float64 longitude		# global coordinate of the infrastructure

string phase			# current phase string e.g., "r","g", etc.
string next_phase		# upcoming phase e.g., "r","g", etc.
float32 time_to_change		# time to next phase update (sec)
