
(cl:in-package :asdf)

(defsystem "person_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Person" :depends-on ("_package_Person"))
    (:file "_package_Person" :depends-on ("_package"))
    (:file "PointEvents" :depends-on ("_package_PointEvents"))
    (:file "_package_PointEvents" :depends-on ("_package"))
    (:file "Skeleton2D" :depends-on ("_package_Skeleton2D"))
    (:file "_package_Skeleton2D" :depends-on ("_package"))
    (:file "Skeleton3D" :depends-on ("_package_Skeleton3D"))
    (:file "_package_Skeleton3D" :depends-on ("_package"))
    (:file "SkeletonBBox" :depends-on ("_package_SkeletonBBox"))
    (:file "_package_SkeletonBBox" :depends-on ("_package"))
  ))