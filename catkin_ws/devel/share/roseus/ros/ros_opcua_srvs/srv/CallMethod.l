;; Auto-generated. Do not edit!


(when (boundp 'ros_opcua_srvs::CallMethod)
  (if (not (find-package "ROS_OPCUA_SRVS"))
    (make-package "ROS_OPCUA_SRVS"))
  (shadow 'CallMethod (find-package "ROS_OPCUA_SRVS")))
(unless (find-package "ROS_OPCUA_SRVS::CALLMETHOD")
  (make-package "ROS_OPCUA_SRVS::CALLMETHOD"))
(unless (find-package "ROS_OPCUA_SRVS::CALLMETHODREQUEST")
  (make-package "ROS_OPCUA_SRVS::CALLMETHODREQUEST"))
(unless (find-package "ROS_OPCUA_SRVS::CALLMETHODRESPONSE")
  (make-package "ROS_OPCUA_SRVS::CALLMETHODRESPONSE"))

(in-package "ROS")

(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))


(if (not (find-package "ROS_OPCUA_MSGS"))
  (ros::roseus-add-msgs "ros_opcua_msgs"))


(defclass ros_opcua_srvs::CallMethodRequest
  :super ros::object
  :slots (_node _method _data ))

(defmethod ros_opcua_srvs::CallMethodRequest
  (:init
   (&key
    ((:node __node) (instance ros_opcua_msgs::Address :init))
    ((:method __method) (instance ros_opcua_msgs::Address :init))
    ((:data __data) ())
    )
   (send-super :init)
   (setq _node __node)
   (setq _method __method)
   (setq _data __data)
   self)
  (:node
   (&rest __node)
   (if (keywordp (car __node))
       (send* _node __node)
     (progn
       (if __node (setq _node (car __node)))
       _node)))
  (:method
   (&rest __method)
   (if (keywordp (car __method))
       (send* _method __method)
     (progn
       (if __method (setq _method (car __method)))
       _method)))
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
    ;; ros_opcua_msgs/Address _method
    (send _method :serialization-length)
    ;; ros_opcua_msgs/TypeValue[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_opcua_msgs/Address _node
       (send _node :serialize s)
     ;; ros_opcua_msgs/Address _method
       (send _method :serialize s)
     ;; ros_opcua_msgs/TypeValue[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_opcua_msgs/Address _node
     (send _node :deserialize buf ptr-) (incf ptr- (send _node :serialization-length))
   ;; ros_opcua_msgs/Address _method
     (send _method :deserialize buf ptr-) (incf ptr- (send _method :serialization-length))
   ;; ros_opcua_msgs/TypeValue[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ros_opcua_msgs::TypeValue :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_opcua_srvs::CallMethodResponse
  :super ros::object
  :slots (_success _error_message _data ))

(defmethod ros_opcua_srvs::CallMethodResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:error_message __error_message) "")
    ((:data __data) ())
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
    ;; ros_opcua_msgs/TypeValue[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _error_message
       (write-long (length _error_message) s) (princ _error_message s)
     ;; ros_opcua_msgs/TypeValue[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
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
   ;; ros_opcua_msgs/TypeValue[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ros_opcua_msgs::TypeValue :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_opcua_srvs::CallMethod
  :super ros::object
  :slots ())

(setf (get ros_opcua_srvs::CallMethod :md5sum-) "c81736c009931c7a501dd513cf80a7b6")
(setf (get ros_opcua_srvs::CallMethod :datatype-) "ros_opcua_srvs/CallMethod")
(setf (get ros_opcua_srvs::CallMethod :request) ros_opcua_srvs::CallMethodRequest)
(setf (get ros_opcua_srvs::CallMethod :response) ros_opcua_srvs::CallMethodResponse)

(defmethod ros_opcua_srvs::CallMethodRequest
  (:response () (instance ros_opcua_srvs::CallMethodResponse :init)))

(setf (get ros_opcua_srvs::CallMethodRequest :md5sum-) "c81736c009931c7a501dd513cf80a7b6")
(setf (get ros_opcua_srvs::CallMethodRequest :datatype-) "ros_opcua_srvs/CallMethodRequest")
(setf (get ros_opcua_srvs::CallMethodRequest :definition-)
      "ros_opcua_msgs/Address node
ros_opcua_msgs/Address method
ros_opcua_msgs/TypeValue[] data

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
ros_opcua_msgs/TypeValue[] data

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

(setf (get ros_opcua_srvs::CallMethodResponse :md5sum-) "c81736c009931c7a501dd513cf80a7b6")
(setf (get ros_opcua_srvs::CallMethodResponse :datatype-) "ros_opcua_srvs/CallMethodResponse")
(setf (get ros_opcua_srvs::CallMethodResponse :definition-)
      "ros_opcua_msgs/Address node
ros_opcua_msgs/Address method
ros_opcua_msgs/TypeValue[] data

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
ros_opcua_msgs/TypeValue[] data

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



(provide :ros_opcua_srvs/CallMethod "c81736c009931c7a501dd513cf80a7b6")


