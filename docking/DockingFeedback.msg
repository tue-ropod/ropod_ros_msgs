# docking_status
# 0: docking mechanism at resting position
# 1: enable motors, set limits, initiate moving mechanism down
# 2: moving down till mechanism is sufficiently low
# 3: moving mechanism out till sufficiently far out
# 4: moving up till sufficiently high or pivot in mechanism
# 5: pulling in till either the velocity is small enough (then docked -> state 10) or we are back in all the way (docking failed -> state 0)
# 10: docked
# 11: enable motors, set limits, initiate moving mechanism down
# 12: go sufficiently down, then start pulling mechnism in
# 13: pull in until in home position -> state 0
uint8 DOCKING_FB_REST = 0
uint8 DOCKING_FB_INIT = 1
uint8 DOCKING_FB_MOVING_DOWN = 2
uint8 DOCKING_FB_MOVING_OUT = 3
uint8 DOCKING_FB_MOVING_UP = 4
uint8 DOCKING_FB_PULLIN_IN = 5
uint8 DOCKING_FB_DOCKED = 10
uint8 UNDOCKING_FB_INIT = 11
uint8 UNDOCKING_MOVING_DOWN = 12
uint8 UNDOCKING_PULLIN_IN = 13

uint8 docking_status
float64 horizontal_pos
float64 vertical_pos
float64 pivot
float64 horizontal_vel
float64 vertical_vel
