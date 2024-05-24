#! /usr/bin/env python

import rospy
from std_msgs.msg import Int32 
from geometry_msgs.msg import Twist


var=Twist()



rospy.init_node('topic_publisher')
pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
rate = rospy.Rate(2)
count = Int32()
count.data = 0

while not rospy.is_shutdown(): 
  
  Age.years=8
  Age.months=5
  Age.days=5
  pub.publish(Age)
  rate.sleep()