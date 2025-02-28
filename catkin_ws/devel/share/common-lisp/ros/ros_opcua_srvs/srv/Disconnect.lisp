; Auto-generated. Do not edit!


(cl:in-package ros_opcua_srvs-srv)


;//! \htmlinclude Disconnect-request.msg.html

(cl:defclass <Disconnect-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Disconnect-request (<Disconnect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Disconnect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Disconnect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Disconnect-request> is deprecated: use ros_opcua_srvs-srv:Disconnect-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Disconnect-request>) ostream)
  "Serializes a message object of type '<Disconnect-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Disconnect-request>) istream)
  "Deserializes a message object of type '<Disconnect-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Disconnect-request>)))
  "Returns string type for a service object of type '<Disconnect-request>"
  "ros_opcua_srvs/DisconnectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Disconnect-request)))
  "Returns string type for a service object of type 'Disconnect-request"
  "ros_opcua_srvs/DisconnectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Disconnect-request>)))
  "Returns md5sum for a message object of type '<Disconnect-request>"
  "6fe914479ce03184a758c3f6990c928f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Disconnect-request)))
  "Returns md5sum for a message object of type 'Disconnect-request"
  "6fe914479ce03184a758c3f6990c928f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Disconnect-request>)))
  "Returns full string definition for message of type '<Disconnect-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Disconnect-request)))
  "Returns full string definition for message of type 'Disconnect-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Disconnect-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Disconnect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Disconnect-request
))
;//! \htmlinclude Disconnect-response.msg.html

(cl:defclass <Disconnect-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Disconnect-response (<Disconnect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Disconnect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Disconnect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Disconnect-response> is deprecated: use ros_opcua_srvs-srv:Disconnect-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Disconnect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:success-val is deprecated.  Use ros_opcua_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Disconnect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:error_message-val is deprecated.  Use ros_opcua_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Disconnect-response>) ostream)
  "Serializes a message object of type '<Disconnect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Disconnect-response>) istream)
  "Deserializes a message object of type '<Disconnect-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Disconnect-response>)))
  "Returns string type for a service object of type '<Disconnect-response>"
  "ros_opcua_srvs/DisconnectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Disconnect-response)))
  "Returns string type for a service object of type 'Disconnect-response"
  "ros_opcua_srvs/DisconnectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Disconnect-response>)))
  "Returns md5sum for a message object of type '<Disconnect-response>"
  "6fe914479ce03184a758c3f6990c928f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Disconnect-response)))
  "Returns md5sum for a message object of type 'Disconnect-response"
  "6fe914479ce03184a758c3f6990c928f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Disconnect-response>)))
  "Returns full string definition for message of type '<Disconnect-response>"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Disconnect-response)))
  "Returns full string definition for message of type 'Disconnect-response"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Disconnect-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Disconnect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Disconnect-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Disconnect)))
  'Disconnect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Disconnect)))
  'Disconnect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Disconnect)))
  "Returns string type for a service object of type '<Disconnect>"
  "ros_opcua_srvs/Disconnect")