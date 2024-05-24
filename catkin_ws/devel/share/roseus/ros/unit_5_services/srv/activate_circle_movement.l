;; Auto-generated. Do not edit!


(when (boundp 'unit_5_services::activate_circle_movement)
  (if (not (find-package "UNIT_5_SERVICES"))
    (make-package "UNIT_5_SERVICES"))
  (shadow 'activate_circle_movement (find-package "UNIT_5_SERVICES")))
(unless (find-package "UNIT_5_SERVICES::ACTIVATE_CIRCLE_MOVEMENT")
  (make-package "UNIT_5_SERVICES::ACTIVATE_CIRCLE_MOVEMENT"))
(unless (find-package "UNIT_5_SERVICES::ACTIVATE_CIRCLE_MOVEMENTREQUEST")
  (make-package "UNIT_5_SERVICES::ACTIVATE_CIRCLE_MOVEMENTREQUEST"))
(unless (find-package "UNIT_5_SERVICES::ACTIVATE_CIRCLE_MOVEMENTRESPONSE")
  (make-package "UNIT_5_SERVICES::ACTIVATE_CIRCLE_MOVEMENTRESPONSE"))

(in-package "ROS")





(defclass unit_5_services::activate_circle_movementRequest
  :super ros::object
  :slots (_duration ))

(defmethod unit_5_services::activate_circle_movementRequest
  (:init
   (&key
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _duration (round __duration))
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass unit_5_services::activate_circle_movementResponse
  :super ros::object
  :slots (_success ))

(defmethod unit_5_services::activate_circle_movementResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass unit_5_services::activate_circle_movement
  :super ros::object
  :slots ())

(setf (get unit_5_services::activate_circle_movement :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get unit_5_services::activate_circle_movement :datatype-) "unit_5_services/activate_circle_movement")
(setf (get unit_5_services::activate_circle_movement :request) unit_5_services::activate_circle_movementRequest)
(setf (get unit_5_services::activate_circle_movement :response) unit_5_services::activate_circle_movementResponse)

(defmethod unit_5_services::activate_circle_movementRequest
  (:response () (instance unit_5_services::activate_circle_movementResponse :init)))

(setf (get unit_5_services::activate_circle_movementRequest :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get unit_5_services::activate_circle_movementRequest :datatype-) "unit_5_services/activate_circle_movementRequest")
(setf (get unit_5_services::activate_circle_movementRequest :definition-)
      "int32 duration    # The time (in seconds) during which BB-8 will keep moving in circles
---
bool success      # Did it achieve it?
")

(setf (get unit_5_services::activate_circle_movementResponse :md5sum-) "b92c952a9248b3029cefe45f52f6ffde")
(setf (get unit_5_services::activate_circle_movementResponse :datatype-) "unit_5_services/activate_circle_movementResponse")
(setf (get unit_5_services::activate_circle_movementResponse :definition-)
      "int32 duration    # The time (in seconds) during which BB-8 will keep moving in circles
---
bool success      # Did it achieve it?
")



(provide :unit_5_services/activate_circle_movement "b92c952a9248b3029cefe45f52f6ffde")


