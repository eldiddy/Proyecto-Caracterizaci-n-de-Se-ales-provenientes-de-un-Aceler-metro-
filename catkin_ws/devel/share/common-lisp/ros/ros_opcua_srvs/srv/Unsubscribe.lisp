; Auto-generated. Do not edit!


(cl:in-package ros_opcua_srvs-srv)


;//! \htmlinclude Unsubscribe-request.msg.html

(cl:defclass <Unsubscribe-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type ros_opcua_msgs-msg:Address
    :initform (cl:make-instance 'ros_opcua_msgs-msg:Address)))
)

(cl:defclass Unsubscribe-request (<Unsubscribe-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Unsubscribe-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Unsubscribe-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Unsubscribe-request> is deprecated: use ros_opcua_srvs-srv:Unsubscribe-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <Unsubscribe-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:node-val is deprecated.  Use ros_opcua_srvs-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Unsubscribe-request>) ostream)
  "Serializes a message object of type '<Unsubscribe-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Unsubscribe-request>) istream)
  "Deserializes a message object of type '<Unsubscribe-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Unsubscribe-request>)))
  "Returns string type for a service object of type '<Unsubscribe-request>"
  "ros_opcua_srvs/UnsubscribeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Unsubscribe-request)))
  "Returns string type for a service object of type 'Unsubscribe-request"
  "ros_opcua_srvs/UnsubscribeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Unsubscribe-request>)))
  "Returns md5sum for a message object of type '<Unsubscribe-request>"
  "ae5c63ee0cb642bb1e92eac019de8a2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Unsubscribe-request)))
  "Returns md5sum for a message object of type 'Unsubscribe-request"
  "ae5c63ee0cb642bb1e92eac019de8a2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Unsubscribe-request>)))
  "Returns full string definition for message of type '<Unsubscribe-request>"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Unsubscribe-request)))
  "Returns full string definition for message of type 'Unsubscribe-request"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Unsubscribe-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Unsubscribe-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Unsubscribe-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude Unsubscribe-response.msg.html

(cl:defclass <Unsubscribe-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_message
    :reader error_message
    :initarg :error_message
    :type cl:string
    :initform ""))
)

(cl:defclass Unsubscribe-response (<Unsubscribe-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Unsubscribe-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Unsubscribe-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Unsubscribe-response> is deprecated: use ros_opcua_srvs-srv:Unsubscribe-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Unsubscribe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:success-val is deprecated.  Use ros_opcua_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Unsubscribe-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:error_message-val is deprecated.  Use ros_opcua_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Unsubscribe-response>) ostream)
  "Serializes a message object of type '<Unsubscribe-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Unsubscribe-response>) istream)
  "Deserializes a message object of type '<Unsubscribe-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Unsubscribe-response>)))
  "Returns string type for a service object of type '<Unsubscribe-response>"
  "ros_opcua_srvs/UnsubscribeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Unsubscribe-response)))
  "Returns string type for a service object of type 'Unsubscribe-response"
  "ros_opcua_srvs/UnsubscribeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Unsubscribe-response>)))
  "Returns md5sum for a message object of type '<Unsubscribe-response>"
  "ae5c63ee0cb642bb1e92eac019de8a2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Unsubscribe-response)))
  "Returns md5sum for a message object of type 'Unsubscribe-response"
  "ae5c63ee0cb642bb1e92eac019de8a2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Unsubscribe-response>)))
  "Returns full string definition for message of type '<Unsubscribe-response>"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Unsubscribe-response)))
  "Returns full string definition for message of type 'Unsubscribe-response"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Unsubscribe-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Unsubscribe-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Unsubscribe-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Unsubscribe)))
  'Unsubscribe-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Unsubscribe)))
  'Unsubscribe-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Unsubscribe)))
  "Returns string type for a service object of type '<Unsubscribe>"
  "ros_opcua_srvs/Unsubscribe")