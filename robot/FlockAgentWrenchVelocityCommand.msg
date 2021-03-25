# This message describes a command send from the coordinator to another
# agent that is part of the flock.
int32 agent_id # id of agent. should be 2-N, since 1 is reserved for the coordinator.
geometry_msgs/WrenchStamped agent_wrench_setpoint
geometry_msgs/TwistStamped  agent_velocity_setpoint
