
(cl:in-package :asdf)

(defsystem "chassis_drive-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Drive" :depends-on ("_package_Drive"))
    (:file "_package_Drive" :depends-on ("_package"))
  ))