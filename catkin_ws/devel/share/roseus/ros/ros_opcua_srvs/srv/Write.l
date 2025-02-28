;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::Write)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'Write (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::WRITE")
  (make-package "ROS_OPCUA_SRVS::WRITE"))
(unless (find-package "ROS_OPCUA_SRVS::WRITEREQUEST")
  (make-package "ROS_OPCUA_SRVS::WRITEREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::WRITERESPONSE")
  (make-package "ROS_OPCUA_SRVS::WRITERESPONSE"))

(in-package "ROS")

(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))




(defclass ros_opcua_srvs::WriteRequest
  :super ros::object
  :slots (_node _data ))

(defmethod ros_opcua_srvs::WriteRequest
  (:init
   (&key
    ((:node __node) (instance ros_opcua_msgs::Address :init))
    ((:data __data) (instance ros_opcua_msgs::TypeValue :init))
    )
   (send-super :init)
   (setq _node __node)
   (setq _data __data)
   self)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; ros_opcua_msgs/Address _node
    (send _node :serialization-length)
    ;; ros_opcua_msgs/TypeValue _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_opcua_msgs/Address _node
       (send _node :serialize s)
     ;; ros_opcua_msgs/TypeValue _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_opcua_msgs/Address _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; ros_opcua_msgs/TypeValue _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass ros_opcua_srvs::WriteResponse
  :super ros::object
  :slots (_success _error_message ))

(defmethod ros_opcua_srvs::WriteResponse
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

(defclass ros_opcua_srvs::Write
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::Write :md5sum-) "6b8afc0b78657683449df0e603595707")
(setf (get ros_opcua_srvs::Write :datatype-) "ros_opcua_srvs/Write")
(setf (get ros_opcua_srvs::Write :request) ros_opcua_srvs::WriteRequest)
(setf (get ros_opcua_srvs::Write :response) ros_opcua_srvs::WriteResponse)

(defmethod ros_opcua_srvs::WriteRequest
  (:response () (instance ros_opcua_srvs::WriteResponse :init)))

(setf (get ros_opcua_srvs::WriteRequest :md5sum-) "6b8afc0b78657683449df0e603595707")
(setf (get ros_opcua_srvs::WriteRequest :datatype-) "ros_opcua_srvs/WriteRequest")
(setf (get ros_opcua_srvs::WriteRequest :definition-)
      "ros_opcua_msgs/Address node
ros_opcua_msgs/TypeValue data

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
string qualifiedName
================================================================================
MSG: ros_opcua_msgs/TypeValue
# This represents OPC-UA type-value pair
string type
bool bool_d
int8 int8_d
uint8 uint8_d
int16 int16_d
uint16 uint16_d
int32 int32_d
uint32 uint32_d
int64 int64_d
uint64 uint64_d
float32 float_d
float64 double_d
string string_d
---
bool success
string error_message
")

(setf (get ros_opcua_srvs::WriteResponse :md5sum-) "6b8afc0b78657683449df0e603595707")
(setf (get ros_opcua_srvs::WriteResponse :datatype-) "ros_opcua_srvs/WriteResponse")
(setf (get ros_opcua_srvs::WriteResponse :definition-)
      "ros_opcua_msgs/Address node
ros_opcua_msgs/TypeValue data

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
string qualifiedName
================================================================================
MSG: ros_opcua_msgs/TypeValue
# This represents OPC-UA type-value pair
string type
bool bool_d
int8 int8_d
uint8 uint8_d
int16 int16_d
uint16 uint16_d
int32 int32_d
uint32 uint32_d
int64 int64_d
uint64 uint64_d
float32 float_d
float64 double_d
string string_d
---
bool success
string error_message
")



(provide :ros_opcua_srvs/Write "6b8afc0b78657683449df0e603595707")


