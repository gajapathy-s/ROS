#! /usr/bin/env python

import rospy
from nav_msgs.msg import Odometry 
from sensor_msgs.msg import LaserScan

def callback(msg): 
  print (msg)

rospy.init_node('topic_subscriber')
sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)
rospy.spin()