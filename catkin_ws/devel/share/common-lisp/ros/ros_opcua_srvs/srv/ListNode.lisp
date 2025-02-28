; Auto-generated. Do not edit!


(cl:in-package ros_opcua_srvs-srv)


;//! \htmlinclude ListNode-request.msg.html

(cl:defclass <ListNode-request> (roslisp-msg-protocol:ros-message)
  ((node
    :reader node
    :initarg :node
    :type ros_opcua_msgs-msg:Address
    :initform (cl:make-instance 'ros_opcua_msgs-msg:Address)))
)

(cl:defclass ListNode-request (<ListNode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListNode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListNode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<ListNode-request> is deprecated: use ros_opcua_srvs-srv:ListNode-request instead.")))

(cl:ensure-generic-function 'node-val :lambda-list '(m))
(cl:defmethod node-val ((m <ListNode-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:node-val is deprecated.  Use ros_opcua_srvs-srv:node instead.")
  (node m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListNode-request>) ostream)
  "Serializes a message object of type '<ListNode-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'node) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListNode-request>) istream)
  "Deserializes a message object of type '<ListNode-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'node) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListNode-request>)))
  "Returns string type for a service object of type '<ListNode-request>"
  "ros_opcua_srvs/ListNodeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListNode-request)))
  "Returns string type for a service object of type 'ListNode-request"
  "ros_opcua_srvs/ListNodeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListNode-request>)))
  "Returns md5sum for a message object of type '<ListNode-request>"
  "b2a7f7743df0b9b4b3bc49d484a1e868")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListNode-request)))
  "Returns md5sum for a message object of type 'ListNode-request"
  "b2a7f7743df0b9b4b3bc49d484a1e868")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListNode-request>)))
  "Returns full string definition for message of type '<ListNode-request>"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListNode-request)))
  "Returns full string definition for message of type 'ListNode-request"
  (cl:format cl:nil "ros_opcua_msgs/Address node~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListNode-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'node))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListNode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ListNode-request
    (cl:cons ':node (node msg))
))
;//! \htmlinclude ListNode-response.msg.html

(cl:defclass <ListNode-response> (roslisp-msg-protocol:ros-message)
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
   (children
    :reader children
    :initarg :children
    :type (cl:vector ros_opcua_msgs-msg:Address)
   :initform (cl:make-array 0 :element-type 'ros_opcua_msgs-msg:Address :initial-element (cl:make-instance 'ros_opcua_msgs-msg:Address))))
)

(cl:defclass ListNode-response (<ListNode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ListNode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ListNode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<ListNode-response> is deprecated: use ros_opcua_srvs-srv:ListNode-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ListNode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:success-val is deprecated.  Use ros_opcua_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <ListNode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:error_message-val is deprecated.  Use ros_opcua_srvs-srv:error_message instead.")
  (error_message m))

(cl:ensure-generic-function 'children-val :lambda-list '(m))
(cl:defmethod children-val ((m <ListNode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:children-val is deprecated.  Use ros_opcua_srvs-srv:children instead.")
  (children m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ListNode-response>) ostream)
  "Serializes a message object of type '<ListNode-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'children))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'children))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ListNode-response>) istream)
  "Deserializes a message object of type '<ListNode-response>"
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
  (cl:setf (cl:slot-value msg 'children) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'children)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_opcua_msgs-msg:Address))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ListNode-response>)))
  "Returns string type for a service object of type '<ListNode-response>"
  "ros_opcua_srvs/ListNodeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListNode-response)))
  "Returns string type for a service object of type 'ListNode-response"
  "ros_opcua_srvs/ListNodeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ListNode-response>)))
  "Returns md5sum for a message object of type '<ListNode-response>"
  "b2a7f7743df0b9b4b3bc49d484a1e868")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ListNode-response)))
  "Returns md5sum for a message object of type 'ListNode-response"
  "b2a7f7743df0b9b4b3bc49d484a1e868")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ListNode-response>)))
  "Returns full string definition for message of type '<ListNode-response>"
  (cl:format cl:nil "bool success~%string error_message~%ros_opcua_msgs/Address[] children~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ListNode-response)))
  "Returns full string definition for message of type 'ListNode-response"
  (cl:format cl:nil "bool success~%string error_message~%ros_opcua_msgs/Address[] children~%~%================================================================================~%MSG: ros_opcua_msgs/Address~%string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ListNode-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'children) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ListNode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ListNode-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
    (cl:cons ':children (children msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ListNode)))
  'ListNode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ListNode)))
  'ListNode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ListNode)))
  "Returns string type for a service object of type '<ListNode>"
  "ros_opcua_srvs/ListNode")