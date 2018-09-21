# DOMAINS
uint16 ACTION_FEEDBACK=100
uint16 TASK_FEEDBACK=101


# COMMON STATUS CODES
uint16 SUCCESS=0
uint16 FAILED=1
uint16 TERMINATED=2
uint16 ONGOING=3

# *****************************************************************************
# ACTION FEEDBACK STATUS CODES
## Navigation actions
uint16 REACHED=10
## Docking and undocking
uint16 UNDOCKED=11 # Successfuly undocked
uint16 DOCKED=12 # Successfully docked
# ****************************************************************************
# TASK FEEDBACK STATUS CODES
uint16 COMPLETED=20


# ****************************************************************************
uint16 domain
uint16 status_code
