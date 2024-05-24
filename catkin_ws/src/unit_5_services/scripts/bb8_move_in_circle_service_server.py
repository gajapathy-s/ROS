#!/usr/bin/env python
import rospy
from std_srvs.srv import Empty, EmptyResponse
from geometry_msgs.msg import Twist


vel=Twist()


def callback(response):
    print("My_callback has been called")
    vel.linear.x=0.5
    vel.angular.z=0.5
    pub.publish(vel)

    return EmptyResponse()
   
if __name__ == '__main__':
    try:
        rospy.init_node("circle_service_server")
        move_bb8_in_circle = rospy.Service('/move_bb8_in_circle',Empty,callback)
        pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        rospy.spin()
    except rospy.ROSInterruptException:
        pass