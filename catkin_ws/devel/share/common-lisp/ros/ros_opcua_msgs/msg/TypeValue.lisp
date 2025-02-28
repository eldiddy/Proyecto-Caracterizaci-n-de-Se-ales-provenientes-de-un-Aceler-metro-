; Auto-generated. Do not edit!


(cl:in-package ros_opcua_msgs-msg)


;//! \htmlinclude TypeValue.msg.html

(cl:defclass <TypeValue> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (bool_d
    :reader bool_d
    :initarg :bool_d
    :type cl:boolean
    :initform cl:nil)
   (int8_d
    :reader int8_d
    :initarg :int8_d
    :type cl:fixnum
    :initform 0)
   (uint8_d
    :reader uint8_d
    :initarg :uint8_d
    :type cl:fixnum
    :initform 0)
   (int16_d
    :reader int16_d
    :initarg :int16_d
    :type cl:fixnum
    :initform 0)
   (uint16_d
    :reader uint16_d
    :initarg :uint16_d
    :type cl:fixnum
    :initform 0)
   (int32_d
    :reader int32_d
    :initarg :int32_d
    :type cl:integer
    :initform 0)
   (uint32_d
    :reader uint32_d
    :initarg :uint32_d
    :type cl:integer
    :initform 0)
   (int64_d
    :reader int64_d
    :initarg :int64_d
    :type cl:integer
    :initform 0)
   (uint64_d
    :reader uint64_d
    :initarg :uint64_d
    :type cl:integer
    :initform 0)
   (float_d
    :reader float_d
    :initarg :float_d
    :type cl:float
    :initform 0.0)
   (double_d
    :reader double_d
    :initarg :double_d
    :type cl:float
    :initform 0.0)
   (string_d
    :reader string_d
    :initarg :string_d
    :type cl:string
    :initform ""))
)

(cl:defclass TypeValue (<TypeValue>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TypeValue>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TypeValue)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_opcua_msgs-msg:<TypeValue> is deprecated: use ros_opcua_msgs-msg:TypeValue instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:type-val is deprecated.  Use ros_opcua_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'bool_d-val :lambda-list '(m))
(cl:defmethod bool_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:bool_d-val is deprecated.  Use ros_opcua_msgs-msg:bool_d instead.")
  (bool_d m))

(cl:ensure-generic-function 'int8_d-val :lambda-list '(m))
(cl:defmethod int8_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:int8_d-val is deprecated.  Use ros_opcua_msgs-msg:int8_d instead.")
  (int8_d m))

(cl:ensure-generic-function 'uint8_d-val :lambda-list '(m))
(cl:defmethod uint8_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:uint8_d-val is deprecated.  Use ros_opcua_msgs-msg:uint8_d instead.")
  (uint8_d m))

(cl:ensure-generic-function 'int16_d-val :lambda-list '(m))
(cl:defmethod int16_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:int16_d-val is deprecated.  Use ros_opcua_msgs-msg:int16_d instead.")
  (int16_d m))

(cl:ensure-generic-function 'uint16_d-val :lambda-list '(m))
(cl:defmethod uint16_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:uint16_d-val is deprecated.  Use ros_opcua_msgs-msg:uint16_d instead.")
  (uint16_d m))

(cl:ensure-generic-function 'int32_d-val :lambda-list '(m))
(cl:defmethod int32_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:int32_d-val is deprecated.  Use ros_opcua_msgs-msg:int32_d instead.")
  (int32_d m))

(cl:ensure-generic-function 'uint32_d-val :lambda-list '(m))
(cl:defmethod uint32_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:uint32_d-val is deprecated.  Use ros_opcua_msgs-msg:uint32_d instead.")
  (uint32_d m))

(cl:ensure-generic-function 'int64_d-val :lambda-list '(m))
(cl:defmethod int64_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:int64_d-val is deprecated.  Use ros_opcua_msgs-msg:int64_d instead.")
  (int64_d m))

(cl:ensure-generic-function 'uint64_d-val :lambda-list '(m))
(cl:defmethod uint64_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:uint64_d-val is deprecated.  Use ros_opcua_msgs-msg:uint64_d instead.")
  (uint64_d m))

(cl:ensure-generic-function 'float_d-val :lambda-list '(m))
(cl:defmethod float_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:float_d-val is deprecated.  Use ros_opcua_msgs-msg:float_d instead.")
  (float_d m))

(cl:ensure-generic-function 'double_d-val :lambda-list '(m))
(cl:defmethod double_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:double_d-val is deprecated.  Use ros_opcua_msgs-msg:double_d instead.")
  (double_d m))

(cl:ensure-generic-function 'string_d-val :lambda-list '(m))
(cl:defmethod string_d-val ((m <TypeValue>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_opcua_msgs-msg:string_d-val is deprecated.  Use ros_opcua_msgs-msg:string_d instead.")
  (string_d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TypeValue>) ostream)
  "Serializes a message object of type '<TypeValue>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'bool_d) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'int8_d)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint8_d)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'int16_d)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint16_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint16_d)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'int32_d)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint32_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint32_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint32_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint32_d)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'int64_d)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uint64_d)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'float_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'double_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'string_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'string_d))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TypeValue>) istream)
  "Deserializes a message object of type '<TypeValue>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'bool_d) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int8_d) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint8_d)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int16_d) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint16_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint16_d)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int32_d) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint32_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint32_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint32_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint32_d)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'int64_d) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'uint64_d)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'float_d) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'double_d) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'string_d) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'string_d) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TypeValue>)))
  "Returns string type for a message object of type '<TypeValue>"
  "ros_opcua_msgs/TypeValue")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TypeValue)))
  "Returns string type for a message object of type 'TypeValue"
  "ros_opcua_msgs/TypeValue")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TypeValue>)))
  "Returns md5sum for a message object of type '<TypeValue>"
  "af7ad16307b5795f5d52adc813870ca9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TypeValue)))
  "Returns md5sum for a message object of type 'TypeValue"
  "af7ad16307b5795f5d52adc813870ca9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TypeValue>)))
  "Returns full string definition for message of type '<TypeValue>"
  (cl:format cl:nil "# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TypeValue)))
  "Returns full string definition for message of type 'TypeValue"
  (cl:format cl:nil "# This represents OPC-UA type-value pair~%string type~%bool bool_d~%int8 int8_d~%uint8 uint8_d~%int16 int16_d~%uint16 uint16_d~%int32 int32_d~%uint32 uint32_d~%int64 int64_d~%uint64 uint64_d~%float32 float_d~%float64 double_d~%string string_d~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TypeValue>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     1
     1
     1
     2
     2
     4
     4
     8
     8
     4
     8
     4 (cl:length (cl:slot-value msg 'string_d))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TypeValue>))
  "Converts a ROS message object to a list"
  (cl:list 'TypeValue
    (cl:cons ':type (type msg))
    (cl:cons ':bool_d (bool_d msg))
    (cl:cons ':int8_d (int8_d msg))
    (cl:cons ':uint8_d (uint8_d msg))
    (cl:cons ':int16_d (int16_d msg))
    (cl:cons ':uint16_d (uint16_d msg))
    (cl:cons ':int32_d (int32_d msg))
    (cl:cons ':uint32_d (uint32_d msg))
    (cl:cons ':int64_d (int64_d msg))
    (cl:cons ':uint64_d (uint64_d msg))
    (cl:cons ':float_d (float_d msg))
    (cl:cons ':double_d (double_d msg))
    (cl:cons ':string_d (string_d msg))
))
