#!/usr/bin/env python
import rospy
from unit_5_services.srv import activate_circle_movement, activate_circle_movementResponse
from geometry_msgs.msg import Twist


vel=Twist()




def callback(request):
  
    print("My_callback has been called")
    
    pub.publish(vel)
    
    i=0
    while i<=(request.duration):
    
            vel.linear.x=1.0
            vel.angular.z=1.0
            pub.publish(vel)
            rate.sleep()
            i=i+1
        
     
    vel.linear.x=0.0
    vel.angular.z=0.0
    pub.publish(vel)

       
     
    
    return activate_circle_movementResponse(success=1)
   
if __name__ == '__main__':
    try:
        rospy.init_node("circle_service_server")
        move_bb8_in_circle = rospy.Service('move_bb8_in_circle_custom',activate_circle_movement,callback)
        pub = rospy.Publisher('/cmd_vel', Twist, queue_size=10)
        rate = rospy.Rate(1)
        rospy.spin()
    except rospy.ROSInterruptException:
        pass