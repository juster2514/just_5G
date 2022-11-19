;; Auto-generated. Do not edit!


(when (boundp 'chassis_drive::Drive)
  (if (not (find-package "CHASSIS_DRIVE"))
    (make-package "CHASSIS_DRIVE"))
  (shadow 'Drive (find-package "CHASSIS_DRIVE")))
(unless (find-package "CHASSIS_DRIVE::DRIVE")
  (make-package "CHASSIS_DRIVE::DRIVE"))

(in-package "ROS")
;;//! \htmlinclude Drive.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass chassis_drive::Drive
  :super ros::object
  :slots (_header _angle _speed ))

(defmethod chassis_drive::Drive
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angle __angle) 0)
    ((:speed __speed) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _angle (round __angle))
   (setq _speed (round __speed))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _angle
    8
    ;; int64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _angle
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _angle (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _angle) (= (length (_angle . bv)) 2)) ;; bignum
              (write-long (ash (elt (_angle . bv) 0) 0) s)
              (write-long (ash (elt (_angle . bv) 1) -1) s))
             ((and (class _angle) (= (length (_angle . bv)) 1)) ;; big1
              (write-long (elt (_angle . bv) 0) s)
              (write-long (if (>= _angle 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _angle s)(write-long (if (>= _angle 0) 0 #xffffffff) s)))
     ;; int64 _speed
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _speed (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _speed) (= (length (_speed . bv)) 2)) ;; bignum
              (write-long (ash (elt (_speed . bv) 0) 0) s)
              (write-long (ash (elt (_speed . bv) 1) -1) s))
             ((and (class _speed) (= (length (_speed . bv)) 1)) ;; big1
              (write-long (elt (_speed . bv) 0) s)
              (write-long (if (>= _speed 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _speed s)(write-long (if (>= _speed 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _angle
#+(or :alpha :irix6 :x86_64)
      (setf _angle (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _angle (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _speed
#+(or :alpha :irix6 :x86_64)
      (setf _speed (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _speed (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get chassis_drive::Drive :md5sum-) "a20cf24d6503cfee2ffb8f09d5d7a332")
(setf (get chassis_drive::Drive :datatype-) "chassis_drive/Drive")
(setf (get chassis_drive::Drive :definition-)
      "Header header 

int64 angle

int64 speed
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :chassis_drive/Drive "a20cf24d6503cfee2ffb8f09d5d7a332")


