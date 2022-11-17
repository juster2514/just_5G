
(cl:in-package :asdf)

(defsystem "wit_imu-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "lonlatmsg" :depends-on ("_package_lonlatmsg"))
    (:file "_package_lonlatmsg" :depends-on ("_package"))
  ))