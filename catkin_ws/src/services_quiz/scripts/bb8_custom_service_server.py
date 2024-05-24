#!/usr/bin/env python
import rospy
from services_quiz.srv import BB8CustomServiceMessage,BB8CustomServiceMessageResponse
from geometry_msgs.msg import Twist

vel=Twist()

def callback(request):
   
    flag=1
    while flag <=request.repetitions:
        i=0
        while i<=3:
                j=0
                k=0
                while j<=request.side:
                            vel.linear.x=1
                            vel.angular.z=0
                            pub.publish(vel)
                            rate.sleep()
                            j=j+1

                while k<=14:
                        vel.linear.x=0
                        vel.angular.z=1.6
                        pub.publish(vel)
                        rate.sleep()
                        k=k+1
                i=i+1
        flag=flag+1           


    vel.linear.x=0
    vel.angular.z=0
    pub.publish(vel)
    print("Square Completed")
    return BB8CustomServiceMessageResponse(success=1)

if __name__=="__main__":
   
   
        rospy.init_node("square_custom_service_server")
        service_server_obj=rospy.Service("/move_bb8_in_square_custom",BB8CustomServiceMessage,callback)
        pub=rospy.Publisher("/cmd_vel",Twist,queue_size=10)
        rate=rospy.Rate(10)
        
        while not rospy.is_shutdown():
           rate.sleep()
        
  
    
   
