# *****************************************************************************
# DOMAINS, hierachically ordered
# *****************************************************************************
uint16 FMS=1       # Task
uint16 FLOCK=2     # Team of robots
uint16 ROBOT=3     # A single robot. Usually related to an action
uint16 COMPONENT=4 # A (sub) component of a robot

# *****************************************************************************
# MODULE CODES
# *****************************************************************************
uint16 UNDEFINED_MODULE=0
uint16 SMART_WHEEL=1
uint16 MANEUVER_NAVIGATION=2
uint16 ROUTE_NAVIGATION=3
uint16 DOCKING_MECHANISM=4
uint16 MOBIDIK_COLLECTION=5
uint16 ELEVATOR_ACTION=6
uint16 TASK_EXECUTOR=7
# ... to be continued


# *****************************************************************************
# STATUS CODES
# *****************************************************************************



# *****************************************************************************
# ROUTE_NAVIGATION CODES
#

uint16 UNDEFINED=0
uint16 FAILED=1      # generic, in case a more detailed code is not available
uint16 SUCCEEDED=2   # generic, in case a more detailed code is not available; initialy was uint16 COMPLETED=20 for TASK FEEDBACK STATUS
uint16 INITIALIZED=3 # FTSM; in case a more detailed code is not available
uint16 CONFIGURING=4 # FTSM; in case a more detailed code is not available
uint16 READY=5       # FTSM; in case a more detailed code is not available
uint16 RUNNING=6     # FTSM; in case a more detailed code is not available
uint16 RECOVERING=7  # FTSM; in case a more detailed code is not available
uint16 STOPPED=8     # FTSM; in case a more detailed code is not available

uint16 NAVIGATION_IN_PROGRESS=9
uint16 GOAL_REACHED=10 # was initially uint16 REACHED=10 for Navigation actions
uint16 GOAL_NOT_REACHABLE=11

# *****************************************************************************
# MOBIDIK_COLLECTION CODES
# NOTE: they are commented out here: since in a ROS message they caon be define donly once,
# though they a re fully applicable

#uint16 UNDEFINED=0
#uint16 FAILED=1      # generic, in case a more detailed code is not available
#uint16 SUCCEEDED=2   # generic, in case a more detailed code is not available; only generic failures
#uint16 INITIALIZED=3 # FTSM; in case a more detailed code is not available
#uint16 CONFIGURING=4 # FTSM; in case a more detailed code is not available
#uint16 READY=5       # FTSM; in case a more detailed code is not available
#uint16 RUNNING=6     # FTSM; in case a more detailed code is not available
#uint16 RECOVERING=7  # FTSM; in case a more detailed code is not available
#uint16 STOPPED=8     # FTSM; in case a more detailed code is not available

uint16 DOCKING_SEQUENCE_SUCCEEDED=9       # was intiially uint16 DOCKED=12 # Successfully docked
uint16 DOCKING_SEQUENCE_FAILED=10
uint16 COUPLING_SUCCEEDED=11              # relates to the mechanism (with hook)
uint16 COUPLING_FAILED=12                 # relates to the mechanism (with hook)
uint16 DECOUPLING_SUCCEEDED=13            # relates to the mechanism (with hook)
uint16 DECOUPLING_FAILED=14               # relates to the mechanism (with hook)
uint16 UNDOCKING_SEQUENCE_SUCCEEDED=15    # was initially uint16 UNDOCKED=11 # Successfuly undocked
uint16 UNDOCKING_SEQUENCE_FAILED=16
uint16 MOBIDIK_DETECTED=17
uint16 MULTIPLE_MOBIDIK_CANDIDATES_DETECTED=18
uint16 NO_MOBIDIK_DETECTED=19
uint16 DOCKING_AREA_EMPTY=20 # no MOBIDIK at all
uint16 PRE_DOCK_POSITION_UNREACHABLE=21
uint16 POST_DOCK_POSITION_UNREACHABLE=22
uint16 MOBIDIK_UNREACHABLE=23
uint16 ALIGNMENT_TO_MOBIDIK_FAILED=24
uint16 DOCKED_TO_WRONG_SIDE=25 #
uint16 MOBIDIK_CAN_NOT_BE_PULLED=26 # e.g. we can't pull it out
uint16 ACTIVE_SEARCH_MODE=27

# *****************************************************************************
# ELEVATOR_ACTION CODES
#

#uint16 UNDEFINED=0
#uint16 FAILED=1      # generic, in case a more detailed code is not available
#uint16 SUCCEEDED=2   # generic, in case a more detailed code is not available
#uint16 INITIALIZED=3 # FTSM; in case a more detailed code is not available
#uint16 CONFIGURING=4 # FTSM; in case a more detailed code is not available
#uint16 READY=5       # FTSM; in case a more detailed code is not available
#uint16 RUNNING=6     # FTSM; in case a more detailed code is not available
#uint16 RECOVERING=7  # FTSM; in case a more detailed code is not available
#uint16 STOPPED=8     # FTSM; in case a more detailed code is not available

#uint16 GOAL_REACHED=10 # same naming as for navigation
uint16 WAITING=9      # was initially uint16 WAITING=13
uint16 ENTERING=10    # was initially uint16 ENTERING=14
uint16 RIDING_ELEVATOR=34
uint16 EXITING=11     # was initially uint16 EXITING=15

uint16 WAITING_POINT_REACHED=12
uint16 DOOR_OPENED=13
uint16 ENTERING_ELEVATOR=14
uint16 ENTERED_ELEVATOR=15
uint16 DESTINATION_FLOOR_REACHED=16
uint16 EXITED_ELEVATOR=17

uint16 WAITING_FOR_ELEVATOR_FAILED=29
uint16 WAITING_POINT_UNREACHABLE=30
uint16 ELEVATOR_WAIT_TIMEOUT=31
uint16 ELEVATOR_ENTERING_FAILED=32
uint16 ELEVATOR_RIDE_TIMEOUT=33
uint16 ELEVATOR_RIDE_MAP_CHANGE_FAILURE=34
uint16 ELEVATOR_EXITING_FAILED=35
uint16 ELEVATOR_ACTION_PREEMPTED=36

# ****************************************************************************
uint16 domain      # cf. DOMAINS section
uint16 module_code # cf. MODULE CODES section
uint16 status_code # cf. STATUS CODES section; NOTE: every module has its OWN status codes. Only the first 8 are in common to all.
string sm_state       # optional state of any state machine
