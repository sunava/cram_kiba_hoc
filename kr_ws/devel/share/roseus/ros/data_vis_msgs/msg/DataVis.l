;; Auto-generated. Do not edit!


(when (boundp 'data_vis_msgs::DataVis)
  (if (not (find-package "DATA_VIS_MSGS"))
    (make-package "DATA_VIS_MSGS"))
  (shadow 'DataVis (find-package "DATA_VIS_MSGS")))
(unless (find-package "DATA_VIS_MSGS::DATAVIS")
  (make-package "DATA_VIS_MSGS::DATAVIS"))

(in-package "ROS")
;;//! \htmlinclude DataVis.msg.html


(intern "*TYPE_PIECHART*" (find-package "DATA_VIS_MSGS::DATAVIS"))
(shadow '*TYPE_PIECHART* (find-package "DATA_VIS_MSGS::DATAVIS"))
(defconstant data_vis_msgs::DataVis::*TYPE_PIECHART* 0)
(intern "*TYPE_BARCHART*" (find-package "DATA_VIS_MSGS::DATAVIS"))
(shadow '*TYPE_BARCHART* (find-package "DATA_VIS_MSGS::DATAVIS"))
(defconstant data_vis_msgs::DataVis::*TYPE_BARCHART* 1)
(intern "*TYPE_TREECHART*" (find-package "DATA_VIS_MSGS::DATAVIS"))
(shadow '*TYPE_TREECHART* (find-package "DATA_VIS_MSGS::DATAVIS"))
(defconstant data_vis_msgs::DataVis::*TYPE_TREECHART* 2)
(intern "*TYPE_TIMELINE*" (find-package "DATA_VIS_MSGS::DATAVIS"))
(shadow '*TYPE_TIMELINE* (find-package "DATA_VIS_MSGS::DATAVIS"))
(defconstant data_vis_msgs::DataVis::*TYPE_TIMELINE* 3)
(intern "*TYPE_LINECHART*" (find-package "DATA_VIS_MSGS::DATAVIS"))
(shadow '*TYPE_LINECHART* (find-package "DATA_VIS_MSGS::DATAVIS"))
(defconstant data_vis_msgs::DataVis::*TYPE_LINECHART* 4)
(defclass data_vis_msgs::DataVis
  :super ros::object
  :slots (_id _type _title _xlabel _ylabel _width _height _fontsize _values ))

(defmethod data_vis_msgs::DataVis
  (:init
   (&key
    ((:id __id) "")
    ((:type __type) 0)
    ((:title __title) "")
    ((:xlabel __xlabel) "")
    ((:ylabel __ylabel) "")
    ((:width __width) 0)
    ((:height __height) 0)
    ((:fontsize __fontsize) "")
    ((:values __values) (let (r) (dotimes (i 0) (push (instance data_vis_msgs::ValueList :init) r)) r))
    )
   (send-super :init)
   (setq _id (string __id))
   (setq _type (round __type))
   (setq _title (string __title))
   (setq _xlabel (string __xlabel))
   (setq _ylabel (string __ylabel))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _fontsize (string __fontsize))
   (setq _values __values)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:title
   (&optional __title)
   (if __title (setq _title __title)) _title)
  (:xlabel
   (&optional __xlabel)
   (if __xlabel (setq _xlabel __xlabel)) _xlabel)
  (:ylabel
   (&optional __ylabel)
   (if __ylabel (setq _ylabel __ylabel)) _ylabel)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:fontsize
   (&optional __fontsize)
   (if __fontsize (setq _fontsize __fontsize)) _fontsize)
  (:values
   (&rest __values)
   (if (keywordp (car __values))
       (send* _values __values)
     (progn
       (if __values (setq _values (car __values)))
       _values)))
  (:serialization-length
   ()
   (+
    ;; string _id
    4 (length _id)
    ;; int32 _type
    4
    ;; string _title
    4 (length _title)
    ;; string _xlabel
    4 (length _xlabel)
    ;; string _ylabel
    4 (length _ylabel)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; string _fontsize
    4 (length _fontsize)
    ;; data_vis_msgs/ValueList[] _values
    (apply #'+ (send-all _values :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; int32 _type
       (write-long _type s)
     ;; string _title
       (write-long (length _title) s) (princ _title s)
     ;; string _xlabel
       (write-long (length _xlabel) s) (princ _xlabel s)
     ;; string _ylabel
       (write-long (length _ylabel) s) (princ _ylabel s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; string _fontsize
       (write-long (length _fontsize) s) (princ _fontsize s)
     ;; data_vis_msgs/ValueList[] _values
     (write-long (length _values) s)
     (dolist (elem _values)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _title
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _title (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _xlabel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _xlabel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ylabel
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ylabel (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _fontsize
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fontsize (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; data_vis_msgs/ValueList[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (let (r) (dotimes (i n) (push (instance data_vis_msgs::ValueList :init) r)) r))
     (dolist (elem- _values)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get data_vis_msgs::DataVis :md5sum-) "54fc13c6e72b87a9c5ab7e772c90e8f2")
(setf (get data_vis_msgs::DataVis :datatype-) "data_vis_msgs/DataVis")
(setf (get data_vis_msgs::DataVis :definition-)
      "int32 TYPE_PIECHART=0
int32 TYPE_BARCHART=1
int32 TYPE_TREECHART=2
int32 TYPE_TIMELINE=3
int32 TYPE_LINECHART=4

string id
int32 type
string title
string xlabel
string ylabel
int32 width
int32 height
string fontsize
ValueList[] values

================================================================================
MSG: data_vis_msgs/ValueList
string label
string[] value1
string[] value2

")



(provide :data_vis_msgs/DataVis "54fc13c6e72b87a9c5ab7e772c90e8f2")


