;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::ListNode)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'ListNode (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::LISTNODE")
  (make-package "ROS_OPCUA_SRVS::LISTNODE"))
(unless (find-package "ROS_OPCUA_SRVS::LISTNODEREQUEST")
  (make-package "ROS_OPCUA_SRVS::LISTNODEREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::LISTNODERESPONSE")
  (make-package "ROS_OPCUA_SRVS::LISTNODERESPONSE"))

(in-package "ROS")

(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))


(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))


(defclass ros_opcua_srvs::ListNodeRequest
  :super ros::object
  :slots (_node ))

(defmethod ros_opcua_srvs::ListNodeRequest
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

(defclass ros_opcua_srvs::ListNodeResponse
  :super ros::object
  :slots (_success _error_message _children ))

(defmethod ros_opcua_srvs::ListNodeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    ((:children __children) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   (setq _children __children)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
  (:children
   (&rest __children)
   (if (keywordp (car __children))
       (send* _children __children)
     (progn
       (if __children (setq _children (car __children)))
       _children)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ;; ros_opcua_msgs/Address[] _children
    (apply #'+ (send-all _children :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; ros_opcua_msgs/Address[] _children
     (write-long (length _children) s)
     (dolist (elem _children)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_opcua_msgs/Address[] _children
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _children (let (r) (dotimes (i n) (push (instance ros_opcua_msgs::Address :init) r)) r))
     (dolist (elem- _children)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_opcua_srvs::ListNode
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::ListNode :md5sum-) "b2a7f7743df0b9b4b3bc49d484a1e868")
(setf (get ros_opcua_srvs::ListNode :datatype-) "ros_opcua_srvs/ListNode")
(setf (get ros_opcua_srvs::ListNode :request) ros_opcua_srvs::ListNodeRequest)
(setf (get ros_opcua_srvs::ListNode :response) ros_opcua_srvs::ListNodeResponse)

(defmethod ros_opcua_srvs::ListNodeRequest
  (:response () (instance ros_opcua_srvs::ListNodeResponse :init)))

(setf (get ros_opcua_srvs::ListNodeRequest :md5sum-) "b2a7f7743df0b9b4b3bc49d484a1e868")
(setf (get ros_opcua_srvs::ListNodeRequest :datatype-) "ros_opcua_srvs/ListNodeRequest")
(setf (get ros_opcua_srvs::ListNodeRequest :definition-)
      "ros_opcua_msgs/Address node

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
ros_opcua_msgs/Address[] children

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
")

(setf (get ros_opcua_srvs::ListNodeResponse :md5sum-) "b2a7f7743df0b9b4b3bc49d484a1e868")
(setf (get ros_opcua_srvs::ListNodeResponse :datatype-) "ros_opcua_srvs/ListNodeResponse")
(setf (get ros_opcua_srvs::ListNodeResponse :definition-)
      "ros_opcua_msgs/Address node

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
ros_opcua_msgs/Address[] children

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
")



(provide :ros_opcua_srvs/ListNode "b2a7f7743df0b9b4b3bc49d484a1e868")


