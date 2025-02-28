; Auto-generated. Do not edit!


(cl:in-package ros_opcua_srvs-srv)


;//! \htmlinclude Read-request.msg.html

(cl:defclass <Read-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type ros_opcua_msgs-msg:Address
    :initform (cl:make-instance 'ros_opcua_msgs-msg:Address)))
)

(cl:defclass Read-request (<Read-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Read-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Read-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Read-request> is deprecated: use ros_opcua_srvs-srv:Read-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <Read-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:node-val is deprecated.  Use ros_opcua_srvs-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Read-request>) ostream)
  "Serializes a message object of type '<Read-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Read-request>) istream)
  "Deserializes a message object of type '<Read-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Read-request>)))
  "Returns string type for a service object of type '<Read-request>"
  "ros_opcua_srvs/ReadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Read-request)))
  "Returns string type for a service object of type 'Read-request"
  "ros_opcua_srvs/ReadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Read-request>)))
  "Returns md5sum for a message object of type '<Read-request>"
  "3e13de5d032d585d8ddea12c7428cac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Read-request)))
  "Returns md5sum for a message object of type 'Read-request"
  "3e13de5d032d585d8ddea12c7428cac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Read-request>)))
  "Returns full string definition for message of type '<Read-request>"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Read-request)))
  "Returns full string definition for message of type 'Read-request"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Read-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Read-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Read-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude Read-response.msg.html

(cl:defclass <Read-response> (roslisp-msg-protocol:ros-message)
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
    :type ros_opcua_msgs-msg:TypeValue
    :initform (cl:make-instance 'ros_opcua_msgs-msg:TypeValue)))
)

(cl:defclass Read-response (<Read-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Read-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Read-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Read-response> is deprecated: use ros_opcua_srvs-srv:Read-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Read-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:success-val is deprecated.  Use ros_opcua_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Read-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:error_message-val is deprecated.  Use ros_opcua_srvs-srv:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Read-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:data-val is deprecated.  Use ros_opcua_srvs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Read-response>) ostream)
  "Serializes a message object of type '<Read-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Read-response>) istream)
  "Deserializes a message object of type '<Read-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Read-response>)))
  "Returns string type for a service object of type '<Read-response>"
  "ros_opcua_srvs/ReadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Read-response)))
  "Returns string type for a service object of type 'Read-response"
  "ros_opcua_srvs/ReadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Read-response>)))
  "Returns md5sum for a message object of type '<Read-response>"
  "3e13de5d032d585d8ddea12c7428cac1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Read-response)))
  "Returns md5sum for a message object of type 'Read-response"
  "3e13de5d032d585d8ddea12c7428cac1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Read-response>)))
  "Returns full string definition for message of type '<Read-response>"
  (cl:format cl:nil "bool success~%string error_message~%ros_opcua_msgs/TypeValue data~%~%================================================================================~%MSG: ros_opcua_msgs/TypeValue~%# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Read-response)))
  "Returns full string definition for message of type 'Read-response"
  (cl:format cl:nil "bool success~%string error_message~%ros_opcua_msgs/TypeValue data~%~%================================================================================~%MSG: ros_opcua_msgs/TypeValue~%# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Read-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Read-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Read-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Read)))
  'Read-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Read)))
  'Read-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Read)))
  "Returns string type for a service object of type '<Read>"
  "ros_opcua_srvs/Read")