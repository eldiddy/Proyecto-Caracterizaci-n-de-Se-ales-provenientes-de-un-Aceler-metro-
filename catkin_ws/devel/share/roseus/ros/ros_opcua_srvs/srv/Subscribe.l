;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::Subscribe)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'Subscribe (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::SUBSCRIBE")
  (make-package "ROS_OPCUA_SRVS::SUBSCRIBE"))
(unless (find-package "ROS_OPCUA_SRVS::SUBSCRIBEREQUEST")
  (make-package "ROS_OPCUA_SRVS::SUBSCRIBEREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::SUBSCRIBERESPONSE")
  (make-package "ROS_OPCUA_SRVS::SUBSCRIBERESPONSE"))

(in-package "ROS")

(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))




(defclass ros_opcua_srvs::SubscribeRequest
  :super ros::object
  :slots (_node _callback_topic ))

(defmethod ros_opcua_srvs::SubscribeRequest
  (:init
   (&key
    ((:node __node) (instance ros_opcua_msgs::Address :init))
    ((:callback_topic __callback_topic) "")
    )
   (send-super :init)
   (setq _node __node)
   (setq _callback_topic (string __callback_topic))
   self)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:callback_topic
   (&optional __callback_topic)
   (if __callback_topic (setq _callback_topic __callback_topic)) _callback_topic)
  (:serialization-length
   ()
   (+
    ;; ros_opcua_msgs/Address _node
    (send _node :serialization-length)
    ;; string _callback_topic
    4 (length _callback_topic)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_opcua_msgs/Address _node
       (send _node :serialize s)
     ;; string _callback_topic
       (write-long (length _callback_topic) s) (princ _callback_topic s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_opcua_msgs/Address _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; string _callback_topic
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _callback_topic (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_opcua_srvs::SubscribeResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod ros_opcua_srvs::SubscribeResponse
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

(defclass ros_opcua_srvs::Subscribe
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::Subscribe :md5sum-) "611f15914760b79ca1b609342b109c53")
(setf (get ros_opcua_srvs::Subscribe :datatype-) "ros_opcua_srvs/Subscribe")
(setf (get ros_opcua_srvs::Subscribe :request) ros_opcua_srvs::SubscribeRequest)
(setf (get ros_opcua_srvs::Subscribe :response) ros_opcua_srvs::SubscribeResponse)

(defmethod ros_opcua_srvs::SubscribeRequest
  (:response () (instance ros_opcua_srvs::SubscribeResponse :init)))

(setf (get ros_opcua_srvs::SubscribeRequest :md5sum-) "611f15914760b79ca1b609342b109c53")
(setf (get ros_opcua_srvs::SubscribeRequest :datatype-) "ros_opcua_srvs/SubscribeRequest")
(setf (get ros_opcua_srvs::SubscribeRequest :definition-)
      "ros_opcua_msgs/Address node
string callback_topic

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
")

(setf (get ros_opcua_srvs::SubscribeResponse :md5sum-) "611f15914760b79ca1b609342b109c53")
(setf (get ros_opcua_srvs::SubscribeResponse :datatype-) "ros_opcua_srvs/SubscribeResponse")
(setf (get ros_opcua_srvs::SubscribeResponse :definition-)
      "ros_opcua_msgs/Address node
string callback_topic

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
")



(provide :ros_opcua_srvs/Subscribe "611f15914760b79ca1b609342b109c53")


