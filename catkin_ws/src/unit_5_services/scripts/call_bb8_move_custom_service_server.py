#!/usr/bin/env python
import rospkg
import rospy 
from unit_5_services.srv import activate_circle_movement, activate_circle_movementRequest



rospy.init_node('circle_client_service')

rospy.wait_for_service('move_bb8_in_circle_custom')


client_response=rospy.ServiceProxy("move_bb8_in_circle_custom",activate_circle_movement)

client_msg=activate_circle_movementRequest()
client_msg.duration=5
result = client_response(client_msg)

print(result)



