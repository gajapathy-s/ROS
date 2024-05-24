#!/usr/bin/env python
import rospy
from services_quiz.srv import BB8CustomServiceMessage,BB8CustomServiceMessageRequest

rospy.init_node("custom_square_client_server")

rospy.wait_for_service("/move_bb8_in_square_custom")

client_server_service=rospy.ServiceProxy("/move_bb8_in_square_custom",BB8CustomServiceMessage)

client_obj=BB8CustomServiceMessageRequest()

client_obj.side=10
client_obj.repetitions=2

request=client_server_service(client_obj)
print(request)
  
client_obj.side=20
client_obj.repetitions=1

request=client_server_service(client_obj)
print(request)  

rospy.spin()