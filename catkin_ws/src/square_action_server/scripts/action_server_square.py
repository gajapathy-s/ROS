#!/usr/bin/env python

import rospy
import actionlib
from geometry_msgs.msg import Twist
from std_msgs.msg import Empty
from actionlib.msg import TestFeedback, TestResult, TestAction


class drone_action_server(object):
    
    feedback_obj = TestFeedback()
    result_obj = TestResult()
   
    def __init__(self):
        self.drone_action_obj = actionlib.SimpleActionServer("Square_action_as", TestAction, self.goal_callback, False)
        self.drone_action_obj.start()
        self.rate = rospy.Rate(10)
        self.pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)
        self.vel = Twist()
        self.drone_take_off = rospy.Publisher("/drone/takeoff", Empty, queue_size=10)
        self.takeoff_msg = Empty()
        self.drone_land = rospy.Publisher("/drone/land", Empty, queue_size=10)
        self.land_msg = Empty()

    def goal_callback(self, goal):
        success = True
        rate = rospy.Rate(10)
        goal_value = goal.goal

        i = 0
        while not i == 3:
            self.drone_take_off.publish(self.takeoff_msg)
            i = i + 1
        
        j = 0
        t = 0
        while j <= 3:
            if self.drone_action_obj.is_preempt_requested():
                rospy.loginfo('The goal has been cancelled/preempted')
                self.drone_action_obj.set_preempted()
                success = False
                break
            
            flag = 0
            while flag <= goal_value:
                self.vel.linear.x = 1
                self.vel.angular.z = 0
                self.pub.publish(self.vel)
                flag = flag + 1
                rate.sleep()  # Add sleep to control the loop rate
            
            k = 0
            while k <= 14:
                self.vel.linear.x = 0
                self.vel.angular.z = 1.6
                self.pub.publish(self.vel)
                k = k + 1
                rate.sleep()  # Add sleep to control the loop rate
            
            j = j + 1  # Increment j after the inner loops
        
        self.feedback_obj.feedback = 9
        self.drone_action_obj.publish_feedback(self.feedback_obj)
        rate.sleep()

        if success:
            self.result_obj.result = 20
            self.drone_action_obj.set_succeeded(self.result_obj)

        i = 0
        while not i == 3:
            self.vel.linear.x = 0
            self.vel.angular.z = 0
            self.pub.publish(self.vel)
            self.drone_land.publish(self.land_msg)
            i = i + 1
        
if __name__ == "__main__":
    try:
        rospy.init_node("Drone_Action_server_node")
        drone_action_server()
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
