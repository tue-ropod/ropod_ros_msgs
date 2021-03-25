# This message reports the current status of the flock.
# That is its current velocity and active wrench

int32 flock_id
bool isEnabled # flock is ready
float64 flock_alpha # alpha value of distribution optimization
geometry_msgs/WrenchStamped flock_wrench_setpoint
geometry_msgs/TwistStamped  flock_velocity_setpoint
geometry_msgs/TwistStamped  flock_velocity_current
