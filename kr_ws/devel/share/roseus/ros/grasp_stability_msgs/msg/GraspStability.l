;; Auto-generated. Do not edit!


(when (boundp 'grasp_stability_msgs::GraspStability)
  (if (not (find-package "GRASP_STABILITY_MSGS"))
    (make-package "GRASP_STABILITY_MSGS"))
  (shadow 'GraspStability (find-package "GRASP_STABILITY_MSGS")))
(unless (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY")
  (make-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))

(in-package "ROS")
;;//! \htmlinclude GraspStability.msg.html


(intern "*GRASP_CAT_UNDEFINED*" (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(shadow '*GRASP_CAT_UNDEFINED* (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(defconstant grasp_stability_msgs::GraspStability::*GRASP_CAT_UNDEFINED* 0)
(intern "*GRASP_CAT_GOOD*" (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(shadow '*GRASP_CAT_GOOD* (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(defconstant grasp_stability_msgs::GraspStability::*GRASP_CAT_GOOD* 1)
(intern "*GRASP_CAT_MEDIUM*" (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(shadow '*GRASP_CAT_MEDIUM* (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(defconstant grasp_stability_msgs::GraspStability::*GRASP_CAT_MEDIUM* 2)
(intern "*GRASP_CAT_BAD*" (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(shadow '*GRASP_CAT_BAD* (find-package "GRASP_STABILITY_MSGS::GRASPSTABILITY"))
(defconstant grasp_stability_msgs::GraspStability::*GRASP_CAT_BAD* 3)
(defclass grasp_stability_msgs::GraspStability
  :super ros::object
  :slots (_measurement_context_id _grasp_quality _estimation_confidence _grasp_category ))

(defmethod grasp_stability_msgs::GraspStability
  (:init
   (&key
    ((:measurement_context_id __measurement_context_id) "")
    ((:grasp_quality __grasp_quality) 0.0)
    ((:estimation_confidence __estimation_confidence) 0.0)
    ((:grasp_category __grasp_category) 0)
    )
   (send-super :init)
   (setq _measurement_context_id (string __measurement_context_id))
   (setq _grasp_quality (float __grasp_quality))
   (setq _estimation_confidence (float __estimation_confidence))
   (setq _grasp_category (round __grasp_category))
   self)
  (:measurement_context_id
   (&optional __measurement_context_id)
   (if __measurement_context_id (setq _measurement_context_id __measurement_context_id)) _measurement_context_id)
  (:grasp_quality
   (&optional __grasp_quality)
   (if __grasp_quality (setq _grasp_quality __grasp_quality)) _grasp_quality)
  (:estimation_confidence
   (&optional __estimation_confidence)
   (if __estimation_confidence (setq _estimation_confidence __estimation_confidence)) _estimation_confidence)
  (:grasp_category
   (&optional __grasp_category)
   (if __grasp_category (setq _grasp_category __grasp_category)) _grasp_category)
  (:serialization-length
   ()
   (+
    ;; string _measurement_context_id
    4 (length _measurement_context_id)
    ;; float32 _grasp_quality
    4
    ;; float32 _estimation_confidence
    4
    ;; int32 _grasp_category
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _measurement_context_id
       (write-long (length _measurement_context_id) s) (princ _measurement_context_id s)
     ;; float32 _grasp_quality
       (sys::poke _grasp_quality (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _estimation_confidence
       (sys::poke _estimation_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _grasp_category
       (write-long _grasp_category s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _measurement_context_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _measurement_context_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _grasp_quality
     (setq _grasp_quality (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _estimation_confidence
     (setq _estimation_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _grasp_category
     (setq _grasp_category (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get grasp_stability_msgs::GraspStability :md5sum-) "27f85b330ae8a5e5c97d0bc8c3a83f4a")
(setf (get grasp_stability_msgs::GraspStability :datatype-) "grasp_stability_msgs/GraspStability")
(setf (get grasp_stability_msgs::GraspStability :definition-)
      "## All of these fields are subject to change as the discussion about
## integration of grasp stability estimation and CRAM progresses


# For telling different grasp stability estimations (i.e. multiple
# arms that are monitored simultaneously) apart.
string measurement_context_id

# Functional data, describing the results of the estimation, and
# the confidence in the result.
float32 grasp_quality		# range: 0.0 - 1.0
float32 estimation_confidence	# range: 0.0 - 1.0

# Grasp category, based on the above values
int32 GRASP_CAT_UNDEFINED=0
int32 GRASP_CAT_GOOD=1
int32 GRASP_CAT_MEDIUM=2
int32 GRASP_CAT_BAD=3

int32 grasp_category		# the category of the grasp
")



(provide :grasp_stability_msgs/GraspStability "27f85b330ae8a5e5c97d0bc8c3a83f4a")


