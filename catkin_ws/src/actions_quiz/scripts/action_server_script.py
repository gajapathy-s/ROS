#!/usr/bin/env python
import rospy
import actionlib
from actions_quiz.msg import CustomActionMsgAction, CustomActionMsgFeedback, CustomActionMsgResult
from std_msgs.msg import Empty

class Droneliftoff(object):
    
      
    def __init__(self):
        self.drone_obj = actionlib.SimpleActionServer("/action_custom_msg_as", CustomActionMsgAction, self.goal_callback, False)
        self.drone_obj.start()
        self.take_off_pub = rospy.Publisher("/drone/takeoff", Empty, queue_size=10)
        self.take_land_pub = rospy.Publisher("/drone/land", Empty, queue_size=10)
        self.feedback_msg = CustomActionMsgFeedback()
        self.result_msg = CustomActionMsgResult()

    def goal_callback(self, goal):
        success = True
        rate = rospy.Rate(1)
        goal_command = goal.goal

        
        if goal_command == "TAKEOFF":
            self.feedback_msg.feedback = "Taking off"
            self.take_off_pub.publish(Empty())        
        elif goal_command == "LAND":
            self.feedback_msg.feedback = "Landing"
            self.take_land_pub.publish(Empty())
        

        while not rospy.is_shutdown():
            if self.drone_obj.is_preempt_requested():
                self.drone_obj.set_preempted()
                success = False
                break
            self.drone_obj.publish_feedback(self.feedback_msg)
            rate.sleep()   

        if success:
            self.drone_obj.set_succeeded(self.result_msg)

if __name__ == "__main__":
    try:
        rospy.init_node("Drone_liftoff_server")
        Droneliftoff()   
        rospy.spin()
    except rospy.ROSInterruptException:
        pass
