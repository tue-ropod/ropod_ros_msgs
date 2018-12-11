uint8 NONE = 0
uint8 LINEAR_VEL = 1
uint8 ANGULAR_VEL = 2
uint8 ANGULAR_POS = 3
# target linear velocity (m/s), angular vel (rad/s) or angular position (rad)
float64 command
# type of command: one of LINEAR_VEL, ANGULAR_VEL, ANGULAR_POS
uint8 type
