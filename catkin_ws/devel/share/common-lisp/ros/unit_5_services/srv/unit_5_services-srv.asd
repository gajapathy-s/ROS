
(cl:in-package :asdf)

(defsystem "unit_5_services-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "activate_circle_movement" :depends-on ("_package_activate_circle_movement"))
    (:file "_package_activate_circle_movement" :depends-on ("_package"))
  ))