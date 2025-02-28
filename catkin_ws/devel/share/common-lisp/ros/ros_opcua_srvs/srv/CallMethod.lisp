; Auto-generated. Do not edit!


(cl:in-package ros_opcua_srvs-srv)


;//! \htmlinclude CallMethod-request.msg.html

(cl:defclass <CallMethod-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type ros_opcua_msgs-msg:Address
    :initform (cl:make-instance 'ros_opcua_msgs-msg:Address))
   (method
    :reader method
    :initarg :method
    :type ros_opcua_msgs-msg:Address
    :initform (cl:make-instance 'ros_opcua_msgs-msg:Address))
   (data
    :reader data
    :initarg :data
    :type (cl:vector ros_opcua_msgs-msg:TypeValue)
   :initform (cl:make-array 0 :element-type 'ros_opcua_msgs-msg:TypeValue :initial-element (cl:make-instance 'ros_opcua_msgs-msg:TypeValue))))
)

(cl:defclass CallMethod-request (<CallMethod-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallMethod-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallMethod-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<CallMethod-request> is deprecated: use ros_opcua_srvs-srv:CallMethod-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <CallMethod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:node-val is deprecated.  Use ros_opcua_srvs-srv:node instead.")
  (node m))

(cl:ensure-generic-function 'method-val :lambda-list '(m))
(cl:defmethod method-val ((m <CallMethod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:method-val is deprecated.  Use ros_opcua_srvs-srv:method instead.")
  (method m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CallMethod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:data-val is deprecated.  Use ros_opcua_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallMethod-request>) ostream)
  "Serializes a message object of type '<CallMethod-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'method) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallMethod-request>) istream)
  "Deserializes a message object of type '<CallMethod-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'method) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_opcua_msgs-msg:TypeValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallMethod-request>)))
  "Returns string type for a service object of type '<CallMethod-request>"
  "ros_opcua_srvs/CallMethodRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallMethod-request)))
  "Returns string type for a service object of type 'CallMethod-request"
  "ros_opcua_srvs/CallMethodRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallMethod-request>)))
  "Returns md5sum for a message object of type '<CallMethod-request>"
  "c81736c009931c7a501dd513cf80a7b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallMethod-request)))
  "Returns md5sum for a message object of type 'CallMethod-request"
  "c81736c009931c7a501dd513cf80a7b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallMethod-request>)))
  "Returns full string definition for message of type '<CallMethod-request>"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%ros_opcua_msgs/Address method~%ros_opcua_msgs/TypeValue[] data~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%================================================================================~%MSG: ros_opcua_msgs/TypeValue~%# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallMethod-request)))
  "Returns full string definition for message of type 'CallMethod-request"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%ros_opcua_msgs/Address method~%ros_opcua_msgs/TypeValue[] data~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%================================================================================~%MSG: ros_opcua_msgs/TypeValue~%# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallMethod-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'method))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallMethod-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CallMethod-request
    (cl:cons ':node (node msg))
    (cl:cons ':method (method msg))
    (cl:cons ':data (data msg))
))
;//! \htmlinclude CallMethod-response.msg.html

(cl:defclass <CallMethod-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform "")
   (data
    :reader data
    :initarg :data
    :type (cl:vector ros_opcua_msgs-msg:TypeValue)
   :initform (cl:make-array 0 :element-type 'ros_opcua_msgs-msg:TypeValue :initial-element (cl:make-instance 'ros_opcua_msgs-msg:TypeValue))))
)

(cl:defclass CallMethod-response (<CallMethod-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CallMethod-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CallMethod-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<CallMethod-response> is deprecated: use ros_opcua_srvs-srv:CallMethod-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CallMethod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:success-val is deprecated.  Use ros_opcua_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <CallMethod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:error_message-val is deprecated.  Use ros_opcua_srvs-srv:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <CallMethod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:data-val is deprecated.  Use ros_opcua_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CallMethod-response>) ostream)
  "Serializes a message object of type '<CallMethod-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CallMethod-response>) istream)
  "Deserializes a message object of type '<CallMethod-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_opcua_msgs-msg:TypeValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CallMethod-response>)))
  "Returns string type for a service object of type '<CallMethod-response>"
  "ros_opcua_srvs/CallMethodResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallMethod-response)))
  "Returns string type for a service object of type 'CallMethod-response"
  "ros_opcua_srvs/CallMethodResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CallMethod-response>)))
  "Returns md5sum for a message object of type '<CallMethod-response>"
  "c81736c009931c7a501dd513cf80a7b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CallMethod-response)))
  "Returns md5sum for a message object of type 'CallMethod-response"
  "c81736c009931c7a501dd513cf80a7b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CallMethod-response>)))
  "Returns full string definition for message of type '<CallMethod-response>"
  (cl:format cl:nil "bool success~%string error_message~%ros_opcua_msgs/TypeValue[] data~%~%================================================================================~%MSG: ros_opcua_msgs/TypeValue~%# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CallMethod-response)))
  "Returns full string definition for message of type 'CallMethod-response"
  (cl:format cl:nil "bool success~%string error_message~%ros_opcua_msgs/TypeValue[] data~%~%================================================================================~%MSG: ros_opcua_msgs/TypeValue~%# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CallMethod-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CallMethod-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CallMethod-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CallMethod)))
  'CallMethod-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CallMethod)))
  'CallMethod-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CallMethod)))
  "Returns string type for a service object of type '<CallMethod>"
  "ros_opcua_srvs/CallMethod")