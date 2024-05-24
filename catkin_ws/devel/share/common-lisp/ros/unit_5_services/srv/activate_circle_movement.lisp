; Auto-generated. Do not edit!


(cl:in-package unit_5_services-srv)


;//! \htmlinclude activate_circle_movement-request.msg.html

(cl:defclass <activate_circle_movement-request> (roslisp-msg-protocol:ros-message)
  ((duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass activate_circle_movement-request (<activate_circle_movement-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <activate_circle_movement-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'activate_circle_movement-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unit_5_services-srv:<activate_circle_movement-request> is deprecated: use unit_5_services-srv:activate_circle_movement-request instead.")))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <activate_circle_movement-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unit_5_services-srv:duration-val is deprecated.  Use unit_5_services-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <activate_circle_movement-request>) ostream)
  "Serializes a message object of type '<activate_circle_movement-request>"
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <activate_circle_movement-request>) istream)
  "Deserializes a message object of type '<activate_circle_movement-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<activate_circle_movement-request>)))
  "Returns string type for a service object of type '<activate_circle_movement-request>"
  "unit_5_services/activate_circle_movementRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'activate_circle_movement-request)))
  "Returns string type for a service object of type 'activate_circle_movement-request"
  "unit_5_services/activate_circle_movementRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<activate_circle_movement-request>)))
  "Returns md5sum for a message object of type '<activate_circle_movement-request>"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'activate_circle_movement-request)))
  "Returns md5sum for a message object of type 'activate_circle_movement-request"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<activate_circle_movement-request>)))
  "Returns full string definition for message of type '<activate_circle_movement-request>"
  (cl:format cl:nil "int32 duration    # The time (in seconds) during which BB-8 will keep moving in circles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'activate_circle_movement-request)))
  "Returns full string definition for message of type 'activate_circle_movement-request"
  (cl:format cl:nil "int32 duration    # The time (in seconds) during which BB-8 will keep moving in circles~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <activate_circle_movement-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <activate_circle_movement-request>))
  "Converts a ROS message object to a list"
  (cl:list 'activate_circle_movement-request
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude activate_circle_movement-response.msg.html

(cl:defclass <activate_circle_movement-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass activate_circle_movement-response (<activate_circle_movement-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <activate_circle_movement-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'activate_circle_movement-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unit_5_services-srv:<activate_circle_movement-response> is deprecated: use unit_5_services-srv:activate_circle_movement-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <activate_circle_movement-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unit_5_services-srv:success-val is deprecated.  Use unit_5_services-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <activate_circle_movement-response>) ostream)
  "Serializes a message object of type '<activate_circle_movement-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <activate_circle_movement-response>) istream)
  "Deserializes a message object of type '<activate_circle_movement-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<activate_circle_movement-response>)))
  "Returns string type for a service object of type '<activate_circle_movement-response>"
  "unit_5_services/activate_circle_movementResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'activate_circle_movement-response)))
  "Returns string type for a service object of type 'activate_circle_movement-response"
  "unit_5_services/activate_circle_movementResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<activate_circle_movement-response>)))
  "Returns md5sum for a message object of type '<activate_circle_movement-response>"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'activate_circle_movement-response)))
  "Returns md5sum for a message object of type 'activate_circle_movement-response"
  "b92c952a9248b3029cefe45f52f6ffde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<activate_circle_movement-response>)))
  "Returns full string definition for message of type '<activate_circle_movement-response>"
  (cl:format cl:nil "bool success      # Did it achieve it?~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'activate_circle_movement-response)))
  "Returns full string definition for message of type 'activate_circle_movement-response"
  (cl:format cl:nil "bool success      # Did it achieve it?~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <activate_circle_movement-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <activate_circle_movement-response>))
  "Converts a ROS message object to a list"
  (cl:list 'activate_circle_movement-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'activate_circle_movement)))
  'activate_circle_movement-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'activate_circle_movement)))
  'activate_circle_movement-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'activate_circle_movement)))
  "Returns string type for a service object of type '<activate_circle_movement>"
  "unit_5_services/activate_circle_movement")