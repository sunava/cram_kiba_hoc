;; Auto-generated. Do not edit!


(when (boundp 'iai_control_msgs::CartState)
  (if (not (find-package "IAI_CONTROL_MSGS"))
    (make-package "IAI_CONTROL_MSGS"))
  (shadow 'CartState (find-package "IAI_CONTROL_MSGS")))
(unless (find-package "IAI_CONTROL_MSGS::CARTSTATE")
  (make-package "IAI_CONTROL_MSGS::CARTSTATE"))

(in-package "ROS")
;;//! \htmlinclude CartState.msg.html


(defclass iai_control_msgs::CartState
  :super ros::object
  :slots (_running _error _error_pos _error_rot _vel_norm _elapsed_seconds _ee_frame_name _base_frame_name ))

(defmethod iai_control_msgs::CartState
  (:init
   (&key
    ((:running __running) nil)
    ((:error __error) 0.0)
    ((:error_pos __error_pos) 0.0)
    ((:error_rot __error_rot) 0.0)
    ((:vel_norm __vel_norm) 0.0)
    ((:elapsed_seconds __elapsed_seconds) 0.0)
    ((:ee_frame_name __ee_frame_name) "")
    ((:base_frame_name __base_frame_name) "")
    )
   (send-super :init)
   (setq _running __running)
   (setq _error (float __error))
   (setq _error_pos (float __error_pos))
   (setq _error_rot (float __error_rot))
   (setq _vel_norm (float __vel_norm))
   (setq _elapsed_seconds (float __elapsed_seconds))
   (setq _ee_frame_name (string __ee_frame_name))
   (setq _base_frame_name (string __base_frame_name))
   self)
  (:running
   (&optional __running)
   (if __running (setq _running __running)) _running)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:error_pos
   (&optional __error_pos)
   (if __error_pos (setq _error_pos __error_pos)) _error_pos)
  (:error_rot
   (&optional __error_rot)
   (if __error_rot (setq _error_rot __error_rot)) _error_rot)
  (:vel_norm
   (&optional __vel_norm)
   (if __vel_norm (setq _vel_norm __vel_norm)) _vel_norm)
  (:elapsed_seconds
   (&optional __elapsed_seconds)
   (if __elapsed_seconds (setq _elapsed_seconds __elapsed_seconds)) _elapsed_seconds)
  (:ee_frame_name
   (&optional __ee_frame_name)
   (if __ee_frame_name (setq _ee_frame_name __ee_frame_name)) _ee_frame_name)
  (:base_frame_name
   (&optional __base_frame_name)
   (if __base_frame_name (setq _base_frame_name __base_frame_name)) _base_frame_name)
  (:serialization-length
   ()
   (+
    ;; bool _running
    1
    ;; float64 _error
    8
    ;; float64 _error_pos
    8
    ;; float64 _error_rot
    8
    ;; float64 _vel_norm
    8
    ;; float64 _elapsed_seconds
    8
    ;; string _ee_frame_name
    4 (length _ee_frame_name)
    ;; string _base_frame_name
    4 (length _base_frame_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _running
       (if _running (write-byte -1 s) (write-byte 0 s))
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error_pos
       (sys::poke _error_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error_rot
       (sys::poke _error_rot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vel_norm
       (sys::poke _vel_norm (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _elapsed_seconds
       (sys::poke _elapsed_seconds (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _ee_frame_name
       (write-long (length _ee_frame_name) s) (princ _ee_frame_name s)
     ;; string _base_frame_name
       (write-long (length _base_frame_name) s) (princ _base_frame_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _running
     (setq _running (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error_pos
     (setq _error_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error_rot
     (setq _error_rot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vel_norm
     (setq _vel_norm (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _elapsed_seconds
     (setq _elapsed_seconds (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _ee_frame_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ee_frame_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _base_frame_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _base_frame_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get iai_control_msgs::CartState :md5sum-) "5fdee31b50bcb0376e81235255a47390")
(setf (get iai_control_msgs::CartState :datatype-) "iai_control_msgs/CartState")
(setf (get iai_control_msgs::CartState :definition-)
      "#Report the state of the cartesian controller
bool running   # Is the controller active?
float64 error  # Represents distance to the goal
float64 error_pos # norm of the cartesian position error
float64 error_rot # norm of the cartesian orientation error
float64 vel_norm # norm of the commanded velocity vector
float64 elapsed_seconds # time since the last goal was set

#geometry_msgs/PoseStamped goal_pose   # Has pose of the running goal
string ee_frame_name  # Frame at the end of the kin. chain
string base_frame_name # Frame at the beginning of the kin. chain



")



(provide :iai_control_msgs/CartState "5fdee31b50bcb0376e81235255a47390")


