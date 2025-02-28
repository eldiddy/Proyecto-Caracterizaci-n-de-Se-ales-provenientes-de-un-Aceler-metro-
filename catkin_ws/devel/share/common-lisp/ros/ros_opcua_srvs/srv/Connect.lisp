; Auto-generated. Do not edit!


(cl:in-package ros_opcua_srvs-srv)


;//! \htmlinclude Connect-request.msg.html

(cl:defclass <Connect-request> (roslisp-msg-protocol:ros-message)
  ((endpoint
    :reader endpoint
    :initarg :endpoint
    :type cl:string
    :initform ""))
)

(cl:defclass Connect-request (<Connect-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connect-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connect-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Connect-request> is deprecated: use ros_opcua_srvs-srv:Connect-request instead.")))

(cl:ensure-generic-function 'endpoint-val :lambda-list '(m))
(cl:defmethod endpoint-val ((m <Connect-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:endpoint-val is deprecated.  Use ros_opcua_srvs-srv:endpoint instead.")
  (endpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connect-request>) ostream)
  "Serializes a message object of type '<Connect-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'endpoint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'endpoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connect-request>) istream)
  "Deserializes a message object of type '<Connect-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'endpoint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'endpoint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connect-request>)))
  "Returns string type for a service object of type '<Connect-request>"
  "ros_opcua_srvs/ConnectRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect-request)))
  "Returns string type for a service object of type 'Connect-request"
  "ros_opcua_srvs/ConnectRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connect-request>)))
  "Returns md5sum for a message object of type '<Connect-request>"
  "7339b9b9dcb669a384869db171c460ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connect-request)))
  "Returns md5sum for a message object of type 'Connect-request"
  "7339b9b9dcb669a384869db171c460ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connect-request>)))
  "Returns full string definition for message of type '<Connect-request>"
  (cl:format cl:nil "string endpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connect-request)))
  "Returns full string definition for message of type 'Connect-request"
  (cl:format cl:nil "string endpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connect-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'endpoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connect-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Connect-request
    (cl:cons ':endpoint (endpoint msg))
))
;//! \htmlinclude Connect-response.msg.html

(cl:defclass <Connect-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass Connect-response (<Connect-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Connect-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Connect-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_srvs-srv:<Connect-response> is deprecated: use ros_opcua_srvs-srv:Connect-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <Connect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:success-val is deprecated.  Use ros_opcua_srvs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_message-val :lambda-list '(m))
(cl:defmethod error_message-val ((m <Connect-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_srvs-srv:error_message-val is deprecated.  Use ros_opcua_srvs-srv:error_message instead.")
  (error_message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Connect-response>) ostream)
  "Serializes a message object of type '<Connect-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Connect-response>) istream)
  "Deserializes a message object of type '<Connect-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Connect-response>)))
  "Returns string type for a service object of type '<Connect-response>"
  "ros_opcua_srvs/ConnectResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect-response)))
  "Returns string type for a service object of type 'Connect-response"
  "ros_opcua_srvs/ConnectResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Connect-response>)))
  "Returns md5sum for a message object of type '<Connect-response>"
  "7339b9b9dcb669a384869db171c460ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Connect-response)))
  "Returns md5sum for a message object of type 'Connect-response"
  "7339b9b9dcb669a384869db171c460ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Connect-response>)))
  "Returns full string definition for message of type '<Connect-response>"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Connect-response)))
  "Returns full string definition for message of type 'Connect-response"
  (cl:format cl:nil "bool success~%string error_message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Connect-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'error_message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Connect-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Connect-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_message (error_message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Connect)))
  'Connect-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Connect)))
  'Connect-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Connect)))
  "Returns string type for a service object of type '<Connect>"
  "ros_opcua_srvs/Connect")