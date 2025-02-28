;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::Unsubscribe)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'Unsubscribe (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::UNSUBSCRIBE")
  (make-package "ROS_OPCUA_SRVS::UNSUBSCRIBE"))
(unless (find-package "ROS_OPCUA_SRVS::UNSUBSCRIBEREQUEST")
  (make-package "ROS_OPCUA_SRVS::UNSUBSCRIBEREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::UNSUBSCRIBERESPONSE")
  (make-package "ROS_OPCUA_SRVS::UNSUBSCRIBERESPONSE"))

(in-package "ROS")

(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))




(defclass ros_opcua_srvs::UnsubscribeRequest
  :super ros::object
  :slots (_node ))

(defmethod ros_opcua_srvs::UnsubscribeRequest
  (:init
   (&key
    ((:node __node) (instance ros_opcua_msgs::Address :init))
    )
   (send-super :init)
   (setq _node __node)
   self)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:serialization-length
   ()
   (+
    ;; ros_opcua_msgs/Address _node
    (send _node :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_opcua_msgs/Address _node
       (send _node :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_opcua_msgs/Address _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;;
   self)
  )

(defclass ros_opcua_srvs::UnsubscribeResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod ros_opcua_srvs::UnsubscribeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_opcua_srvs::Unsubscribe
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::Unsubscribe :md5sum-) "ae5c63ee0cb642bb1e92eac019de8a2c")
(setf (get ros_opcua_srvs::Unsubscribe :datatype-) "ros_opcua_srvs/Unsubscribe")
(setf (get ros_opcua_srvs::Unsubscribe :request) ros_opcua_srvs::UnsubscribeRequest)
(setf (get ros_opcua_srvs::Unsubscribe :response) ros_opcua_srvs::UnsubscribeResponse)

(defmethod ros_opcua_srvs::UnsubscribeRequest
  (:response () (instance ros_opcua_srvs::UnsubscribeResponse :init)))

(setf (get ros_opcua_srvs::UnsubscribeRequest :md5sum-) "ae5c63ee0cb642bb1e92eac019de8a2c")
(setf (get ros_opcua_srvs::UnsubscribeRequest :datatype-) "ros_opcua_srvs/UnsubscribeRequest")
(setf (get ros_opcua_srvs::UnsubscribeRequest :definition-)
      "ros_opcua_msgs/Address node

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
")

(setf (get ros_opcua_srvs::UnsubscribeResponse :md5sum-) "ae5c63ee0cb642bb1e92eac019de8a2c")
(setf (get ros_opcua_srvs::UnsubscribeResponse :datatype-) "ros_opcua_srvs/UnsubscribeResponse")
(setf (get ros_opcua_srvs::UnsubscribeResponse :definition-)
      "ros_opcua_msgs/Address node

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
")



(provide :ros_opcua_srvs/Unsubscribe "ae5c63ee0cb642bb1e92eac019de8a2c")


