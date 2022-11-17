;; Auto-generated. Do not edit!


(when (boundp 'wit_imu::lonmsg)
  (if (not (find-package "WIT_IMU"))
    (make-package "WIT_IMU"))
  (shadow 'lonmsg (find-package "WIT_IMU")))
(unless (find-package "WIT_IMU::LONMSG")
  (make-package "WIT_IMU::LONMSG"))

(in-package "ROS")
;;//! \htmlinclude lonmsg.msg.html


(defclass wit_imu::lonmsg
  :super ros::object
  :slots (_orientation_x _orientation_y _orientation_z _orientation_w _angular_velocity_x _angular_velocity_y _angular_velocity_z _linear_acceleration_x _linear_acceleration_y _linear_acceleration_z ))

(defmethod wit_imu::lonmsg
  (:init
   (&key
    ((:orientation_x __orientation_x) 0.0)
    ((:orientation_y __orientation_y) 0.0)
    ((:orientation_z __orientation_z) 0.0)
    ((:orientation_w __orientation_w) 0.0)
    ((:angular_velocity_x __angular_velocity_x) 0.0)
    ((:angular_velocity_y __angular_velocity_y) 0.0)
    ((:angular_velocity_z __angular_velocity_z) 0.0)
    ((:linear_acceleration_x __linear_acceleration_x) 0.0)
    ((:linear_acceleration_y __linear_acceleration_y) 0.0)
    ((:linear_acceleration_z __linear_acceleration_z) 0.0)
    )
   (send-super :init)
   (setq _orientation_x (float __orientation_x))
   (setq _orientation_y (float __orientation_y))
   (setq _orientation_z (float __orientation_z))
   (setq _orientation_w (float __orientation_w))
   (setq _angular_velocity_x (float __angular_velocity_x))
   (setq _angular_velocity_y (float __angular_velocity_y))
   (setq _angular_velocity_z (float __angular_velocity_z))
   (setq _linear_acceleration_x (float __linear_acceleration_x))
   (setq _linear_acceleration_y (float __linear_acceleration_y))
   (setq _linear_acceleration_z (float __linear_acceleration_z))
   self)
  (:orientation_x
   (&optional __orientation_x)
   (if __orientation_x (setq _orientation_x __orientation_x)) _orientation_x)
  (:orientation_y
   (&optional __orientation_y)
   (if __orientation_y (setq _orientation_y __orientation_y)) _orientation_y)
  (:orientation_z
   (&optional __orientation_z)
   (if __orientation_z (setq _orientation_z __orientation_z)) _orientation_z)
  (:orientation_w
   (&optional __orientation_w)
   (if __orientation_w (setq _orientation_w __orientation_w)) _orientation_w)
  (:angular_velocity_x
   (&optional __angular_velocity_x)
   (if __angular_velocity_x (setq _angular_velocity_x __angular_velocity_x)) _angular_velocity_x)
  (:angular_velocity_y
   (&optional __angular_velocity_y)
   (if __angular_velocity_y (setq _angular_velocity_y __angular_velocity_y)) _angular_velocity_y)
  (:angular_velocity_z
   (&optional __angular_velocity_z)
   (if __angular_velocity_z (setq _angular_velocity_z __angular_velocity_z)) _angular_velocity_z)
  (:linear_acceleration_x
   (&optional __linear_acceleration_x)
   (if __linear_acceleration_x (setq _linear_acceleration_x __linear_acceleration_x)) _linear_acceleration_x)
  (:linear_acceleration_y
   (&optional __linear_acceleration_y)
   (if __linear_acceleration_y (setq _linear_acceleration_y __linear_acceleration_y)) _linear_acceleration_y)
  (:linear_acceleration_z
   (&optional __linear_acceleration_z)
   (if __linear_acceleration_z (setq _linear_acceleration_z __linear_acceleration_z)) _linear_acceleration_z)
  (:serialization-length
   ()
   (+
    ;; float64 _orientation_x
    8
    ;; float64 _orientation_y
    8
    ;; float64 _orientation_z
    8
    ;; float64 _orientation_w
    8
    ;; float64 _angular_velocity_x
    8
    ;; float64 _angular_velocity_y
    8
    ;; float64 _angular_velocity_z
    8
    ;; float64 _linear_acceleration_x
    8
    ;; float64 _linear_acceleration_y
    8
    ;; float64 _linear_acceleration_z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _orientation_x
       (sys::poke _orientation_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orientation_y
       (sys::poke _orientation_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orientation_z
       (sys::poke _orientation_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _orientation_w
       (sys::poke _orientation_w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_x
       (sys::poke _angular_velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_y
       (sys::poke _angular_velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular_velocity_z
       (sys::poke _angular_velocity_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration_x
       (sys::poke _linear_acceleration_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration_y
       (sys::poke _linear_acceleration_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _linear_acceleration_z
       (sys::poke _linear_acceleration_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _orientation_x
     (setq _orientation_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orientation_y
     (setq _orientation_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orientation_z
     (setq _orientation_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _orientation_w
     (setq _orientation_w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_x
     (setq _angular_velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_y
     (setq _angular_velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular_velocity_z
     (setq _angular_velocity_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration_x
     (setq _linear_acceleration_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration_y
     (setq _linear_acceleration_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _linear_acceleration_z
     (setq _linear_acceleration_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get wit_imu::lonmsg :md5sum-) "f6d3fea111e2a8e030584cb7b23fbadb")
(setf (get wit_imu::lonmsg :datatype-) "wit_imu/lonmsg")
(setf (get wit_imu::lonmsg :definition-)
      "
float64 orientation_x
float64 orientation_y
float64 orientation_z
float64 orientation_w
float64 angular_velocity_x
float64 angular_velocity_y
float64 angular_velocity_z
float64 linear_acceleration_x
float64 linear_acceleration_y
float64 linear_acceleration_z
")



(provide :wit_imu/lonmsg "f6d3fea111e2a8e030584cb7b23fbadb")


