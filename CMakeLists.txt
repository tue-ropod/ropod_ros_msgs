cmake_minimum_required(VERSION 2.8.6)
project(ropod_ros_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs)

add_message_files(
   FILES
   ropod_control_primitive.msg
   sem_waypoint_cmd.msg
   ropod_sem_waypoint.msg
   ropod_sem_waypoint_list.msg
   ropod_door_detection.msg
   ropod_demo_location.msg
   ropod_demo_area.msg
   ropod_demo_plan.msg
   ropod_demo_sem_location_list.msg
   ropod_demo_sem_location.msg
   ropod_demo_status.msg
   ropod_demo_status_update.msg
   ropod_demo_waypoint.msg
)
add_message_files(
   DIRECTORY elevators
   FILES
   ElevatorRequest.msg
   ElevatorRequestReply.msg
   ElevatorRobotConfirmation.msg
)

add_message_files(
   DIRECTORY robot
   FILES
   RobotStatus.msg
   SmartWheelData.msg
   SmartWheelInputData.msg
   SmartWheelOutputData.msg
)

add_message_files(
   DIRECTORY task
   FILES
   Action.msg
   RobotTask.msg
   RobotTaskUpdate.msg
   Task.msg
   TaskProgressGOTO.msg
)

add_message_files(
   DIRECTORY world_model
   FILES
   Area.msg
   Waypoint.msg
)

add_message_files(
   DIRECTORY osm
   FILES
   OSMNode.msg
   OSMWay.msg
   OSMTag.msg
   OSMRelation.msg
   OSMMember.msg
)

add_service_files(
  DIRECTORY srv
  FILES
  OSMQuery.srv
  RoutePlanner.srv
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
)

catkin_package(
#   INCLUDE_DIRS include
   CATKIN_DEPENDS message_runtime roscpp std_msgs geometry_msgs
#   DEPENDS message_runtime
)
