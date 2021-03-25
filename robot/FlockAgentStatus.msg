# This message reports the current status of an agent to the coordinator.
# That is its current velocity, relative pose w.r.t the coordinator
# and force constraints.
# The latter two might only change from time to time, still they are
# not assumed to be constant.

# Number of agent starting from 1 to N. The agent with agent_id = 1 is the
# coordinator of the flock. The coordinator will calculate how to distribute
# set points for all agents. Only the coordinator will send commands to the
# other agents.
int32 agent_id
bool isEnabled # whether platform is enabled (started and calibrated) or not
geometry_msgs/PoseStamped agent_pose_inflock
geometry_msgs/TwistStamped agent_velocity
FlockActuationConstraints agent_actuation_constraints
