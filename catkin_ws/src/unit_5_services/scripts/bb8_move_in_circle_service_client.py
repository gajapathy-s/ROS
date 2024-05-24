#!/usr/bin/env python
import rospkg
import rospy 

from std_srvs.srv import Empty, EmptyRequest


rospy.init_node('circle_client_service')

rospy.wait_for_service('/move_bb8_in_circle')


client_response=rospy.ServiceProxy("/move_bb8_in_circle",Empty)

client_msg=EmptyRequest()

result = client_response(client_msg)

print(result)