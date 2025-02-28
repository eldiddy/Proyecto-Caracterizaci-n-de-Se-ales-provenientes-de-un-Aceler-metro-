;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::Read)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'Read (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::READ")
  (make-package "ROS_OPCUA_SRVS::READ"))
(unless (find-package "ROS_OPCUA_SRVS::READREQUEST")
  (make-package "ROS_OPCUA_SRVS::READREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::READRESPONSE")
  (make-package "ROS_OPCUA_SRVS::READRESPONSE"))

(in-package "ROS")

(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))


(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))


(defclass ros_opcua_srvs::ReadRequest
  :super ros::object
  :slots (_node ))

(defmethod ros_opcua_srvs::ReadRequest
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

(defclass ros_opcua_srvs::ReadResponse
  :super ros::object
  :slots (_success _error_message _data ))

(defmethod ros_opcua_srvs::ReadResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    ((:data __data) (instance ros_opcua_msgs::TypeValue :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _error_message (string __error_message))
   (setq _data __data)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:error_message
   (&optional __error_message)
   (if __error_message (setq _error_message __error_message)) _error_message)
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
    ;; bool _success
    1
    ;; string _error_message
    4 (length _error_message)
    ;; ros_opcua_msgs/TypeValue _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; ros_opcua_msgs/TypeValue _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _error_message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; ros_opcua_msgs/TypeValue _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass ros_opcua_srvs::Read
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::Read :md5sum-) "3e13de5d032d585d8ddea12c7428cac1")
(setf (get ros_opcua_srvs::Read :datatype-) "ros_opcua_srvs/Read")
(setf (get ros_opcua_srvs::Read :request) ros_opcua_srvs::ReadRequest)
(setf (get ros_opcua_srvs::Read :response) ros_opcua_srvs::ReadResponse)

(defmethod ros_opcua_srvs::ReadRequest
  (:response () (instance ros_opcua_srvs::ReadResponse :init)))

(setf (get ros_opcua_srvs::ReadRequest :md5sum-) "3e13de5d032d585d8ddea12c7428cac1")
(setf (get ros_opcua_srvs::ReadRequest :datatype-) "ros_opcua_srvs/ReadRequest")
(setf (get ros_opcua_srvs::ReadRequest :definition-)
      "ros_opcua_msgs/Address node

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
ros_opcua_msgs/TypeValue data

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
")

(setf (get ros_opcua_srvs::ReadResponse :md5sum-) "3e13de5d032d585d8ddea12c7428cac1")
(setf (get ros_opcua_srvs::ReadResponse :datatype-) "ros_opcua_srvs/ReadResponse")
(setf (get ros_opcua_srvs::ReadResponse :definition-)
      "ros_opcua_msgs/Address node

================================================================================
MSG: ros_opcua_msgs/Address
string nodeId
---
bool success
string error_message
ros_opcua_msgs/TypeValue data

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
")



(provide :ros_opcua_srvs/Read "3e13de5d032d585d8ddea12c7428cac1")


