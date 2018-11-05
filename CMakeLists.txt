cmake_minimum_required(VERSION 2.8.6)
project(ropod_ros_msgs)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs geometry_msgs genmsg actionlib_msgs actionlib)

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
   RobotAction.msg
   RobotTask.msg
   RobotTaskUpdate.msg
   Task.msg
   TaskProgressGOTO.msg
   TaskProgressDOCK.msg
   Status.msg
)

add_message_files(
   DIRECTORY world_model
   FILES
   Area.msg
   Waypoint.msg
   NavigationArea.msg
   Position.msg
   Shape.msg
   DoorDetection.msg
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

add_message_files(
   DIRECTORY experiments
   FILES
   ExecuteExperiment.msg
   CommandFeedback.msg
   ExperimentFeedback.msg
)

add_action_files(
  DIRECTORY action
  FILES
  OSMQuery.action
  RoutePlanner.action
  GetWayptPosition.action
  GetWayptShape.action
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  actionlib_msgs
)

catkin_package(
#  INCLUDE_DIRS include
   CATKIN_DEPENDS message_runtime roscpp std_msgs geometry_msgs actionlib_msgs
#  DEPENDS message_runtime
)
