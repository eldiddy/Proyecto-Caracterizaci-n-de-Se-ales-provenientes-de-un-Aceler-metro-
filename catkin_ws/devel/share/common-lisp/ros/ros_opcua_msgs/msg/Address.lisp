; Auto-generated. Do not edit!


(cl:in-package ros_opcua_msgs-msg)


;//! \htmlinclude Address.msg.html

(cl:defclass <Address> (roslisp-msg-protocol:ros-message)
  ((nodeId
    :reader nodeId
    :initarg :nodeId
    :type cl:string
    :initform "")
   (qualifiedName
    :reader qualifiedName
    :initarg :qualifiedName
    :type cl:string
    :initform ""))
)

(cl:defclass Address (<Address>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Address>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Address)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_msgs-msg:<Address> is deprecated: use ros_opcua_msgs-msg:Address instead.")))

(cl:ensure-generic-function 'nodeId-val :lambda-list '(m))
(cl:defmethod nodeId-val ((m <Address>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:nodeId-val is deprecated.  Use ros_opcua_msgs-msg:nodeId instead.")
  (nodeId m))

(cl:ensure-generic-function 'qualifiedName-val :lambda-list '(m))
(cl:defmethod qualifiedName-val ((m <Address>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:qualifiedName-val is deprecated.  Use ros_opcua_msgs-msg:qualifiedName instead.")
  (qualifiedName m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Address>) ostream)
  "Serializes a message object of type '<Address>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nodeId))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nodeId))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'qualifiedName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'qualifiedName))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Address>) istream)
  "Deserializes a message object of type '<Address>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nodeId) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nodeId) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'qualifiedName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'qualifiedName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Address>)))
  "Returns string type for a message object of type '<Address>"
  "ros_opcua_msgs/Address")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Address)))
  "Returns string type for a message object of type 'Address"
  "ros_opcua_msgs/Address")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Address>)))
  "Returns md5sum for a message object of type '<Address>"
  "4b42b1dbd3ac4f374e9502c4ddbd8514")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Address)))
  "Returns md5sum for a message object of type 'Address"
  "4b42b1dbd3ac4f374e9502c4ddbd8514")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Address>)))
  "Returns full string definition for message of type '<Address>"
  (cl:format cl:nil "string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Address)))
  "Returns full string definition for message of type 'Address"
  (cl:format cl:nil "string nodeId~%string qualifiedName~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Address>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nodeId))
     4 (cl:length (cl:slot-value msg 'qualifiedName))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Address>))
  "Converts a ROS message object to a list"
  (cl:list 'Address
    (cl:cons ':nodeId (nodeId msg))
    (cl:cons ':qualifiedName (qualifiedName msg))
))
