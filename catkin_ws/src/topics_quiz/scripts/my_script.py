#! /usr/bin/env python
import rospy
import math
from geometry_msgs.msg import Twist
from sensor_msgs.msg import LaserScan

vel=Twist()
dist=0

def callback(msg):

  global dist
  dist=msg.ranges[int(len(msg.ranges)/2)]

  return dist
  
 # print(dist)
  
if __name__ == '__main__':

    rospy.init_node('topics_quiz_node')
     
   

    sub = rospy.Subscriber('/kobuki/laser/scan', LaserScan, callback)
    #rospy.spin()

    pub = rospy.Publisher('/cmd_vel', Twist, queue_size=1)
    rate = rospy.Rate(2)


try:  
        while not rospy.is_shutdown(): 
            
        
            if dist > 1:
                vel.linear.x = 0.5
                vel.angular.z = 0
            elif dist < 1:
                vel.linear.x = 0
                vel.angular.z = 1
            else: 
                vel.linear.x = 0.25
                vel.angular.z = 0


             

            pub.publish(vel)
            rospy.loginfo(dist)
            rate.sleep()

except rospy.ROSInterruptException:
 rospy.loginfo("Shutting down node")
  
  
 

   