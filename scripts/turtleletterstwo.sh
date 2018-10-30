rosservice call /kill "turtle1"
rosservice call /spawn 4 2 3.9 "turtle1"
rosservice call /spawn 8 2 1.57 "turtle2"

rosservice call /turtle1/set_pen 200 0 0 5 "off"
rosservice call /turtle2/set_pen 0 200 0 5 "off"

rostopic pub -1 /turtle1/cmd_vel geometry_msgs/Twist -- '[9.0, 0.0, 0.0]' '[0.0, 0.0, -5.0]'

rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[1.0, 0.0, 0.0]' '[0.0, 0.0, 0.0]'

rostopic pub -1 /turtle2/cmd_vel geometry_msgs/Twist -- '[4.0, 0.0, 0.0]' '[0.0, 0.0, 5.0]'
