;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_msgs::Address)
  (if (not (find-package "ROS_OPCUA_MSGS"))
    (make-package "ROS_OPCUA_MSGS"))
  (shadow 'Address (find-package "ROS_OPCUA_MSGS")))
(unless (find-package "ROS_OPCUA_MSGS::ADDRESS")
  (make-package "ROS_OPCUA_MSGS::ADDRESS"))

(in-package "ROS")
;;//! \htmlinclude Address.msg.html


(defclass ros_opcua_msgs::Address
  :super ros::object
  :slots (_nodeId _qualifiedName ))

(defmethod ros_opcua_msgs::Address
  (:init
   (&key
    ((:nodeId __nodeId) "")
    ((:qualifiedName __qualifiedName) "")
    )
   (send-super :init)
   (setq _nodeId (string __nodeId))
   (setq _qualifiedName (string __qualifiedName))
   self)
  (:nodeId
   (&optional __nodeId)
   (if __nodeId (setq _nodeId __nodeId)) _nodeId)
  (:qualifiedName
   (&optional __qualifiedName)
   (if __qualifiedName (setq _qualifiedName __qualifiedName)) _qualifiedName)
  (:serialization-length
   ()
   (+
    ;; string _nodeId
    4 (length _nodeId)
    ;; string _qualifiedName
    4 (length _qualifiedName)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _nodeId
       (write-long (length _nodeId) s) (princ _nodeId s)
     ;; string _qualifiedName
       (write-long (length _qualifiedName) s) (princ _qualifiedName s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _nodeId
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nodeId (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _qualifiedName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _qualifiedName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get ros_opcua_msgs::Address :md5sum-) "4b42b1dbd3ac4f374e9502c4ddbd8514")
(setf (get ros_opcua_msgs::Address :datatype-) "ros_opcua_msgs/Address")
(setf (get ros_opcua_msgs::Address :definition-)
      "string nodeId
string qualifiedName
")



(provide :ros_opcua_msgs/Address "4b42b1dbd3ac4f374e9502c4ddbd8514")


