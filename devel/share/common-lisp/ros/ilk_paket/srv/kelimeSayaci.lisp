; Auto-generated. Do not edit!


(cl:in-package ilk_paket-srv)


;//! \htmlinclude kelimeSayaci-request.msg.html

(cl:defclass <kelimeSayaci-request> (roslisp-msg-protocol:ros-message)
  ((kelimeler
    :reader kelimeler
    :initarg :kelimeler
    :type cl:string
    :initform ""))
)

(cl:defclass kelimeSayaci-request (<kelimeSayaci-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kelimeSayaci-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kelimeSayaci-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-srv:<kelimeSayaci-request> is deprecated: use ilk_paket-srv:kelimeSayaci-request instead.")))

(cl:ensure-generic-function 'kelimeler-val :lambda-list '(m))
(cl:defmethod kelimeler-val ((m <kelimeSayaci-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:kelimeler-val is deprecated.  Use ilk_paket-srv:kelimeler instead.")
  (kelimeler m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kelimeSayaci-request>) ostream)
  "Serializes a message object of type '<kelimeSayaci-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'kelimeler))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'kelimeler))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kelimeSayaci-request>) istream)
  "Deserializes a message object of type '<kelimeSayaci-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'kelimeler) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'kelimeler) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kelimeSayaci-request>)))
  "Returns string type for a service object of type '<kelimeSayaci-request>"
  "ilk_paket/kelimeSayaciRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kelimeSayaci-request)))
  "Returns string type for a service object of type 'kelimeSayaci-request"
  "ilk_paket/kelimeSayaciRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kelimeSayaci-request>)))
  "Returns md5sum for a message object of type '<kelimeSayaci-request>"
  "65c69d5d821fe1758c24c7c87273f551")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kelimeSayaci-request)))
  "Returns md5sum for a message object of type 'kelimeSayaci-request"
  "65c69d5d821fe1758c24c7c87273f551")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kelimeSayaci-request>)))
  "Returns full string definition for message of type '<kelimeSayaci-request>"
  (cl:format cl:nil "string kelimeler~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kelimeSayaci-request)))
  "Returns full string definition for message of type 'kelimeSayaci-request"
  (cl:format cl:nil "string kelimeler~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kelimeSayaci-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'kelimeler))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kelimeSayaci-request>))
  "Converts a ROS message object to a list"
  (cl:list 'kelimeSayaci-request
    (cl:cons ':kelimeler (kelimeler msg))
))
;//! \htmlinclude kelimeSayaci-response.msg.html

(cl:defclass <kelimeSayaci-response> (roslisp-msg-protocol:ros-message)
  ((sayac
    :reader sayac
    :initarg :sayac
    :type cl:integer
    :initform 0))
)

(cl:defclass kelimeSayaci-response (<kelimeSayaci-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <kelimeSayaci-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'kelimeSayaci-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ilk_paket-srv:<kelimeSayaci-response> is deprecated: use ilk_paket-srv:kelimeSayaci-response instead.")))

(cl:ensure-generic-function 'sayac-val :lambda-list '(m))
(cl:defmethod sayac-val ((m <kelimeSayaci-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ilk_paket-srv:sayac-val is deprecated.  Use ilk_paket-srv:sayac instead.")
  (sayac m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <kelimeSayaci-response>) ostream)
  "Serializes a message object of type '<kelimeSayaci-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sayac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sayac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sayac)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sayac)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <kelimeSayaci-response>) istream)
  "Deserializes a message object of type '<kelimeSayaci-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sayac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sayac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sayac)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sayac)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<kelimeSayaci-response>)))
  "Returns string type for a service object of type '<kelimeSayaci-response>"
  "ilk_paket/kelimeSayaciResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kelimeSayaci-response)))
  "Returns string type for a service object of type 'kelimeSayaci-response"
  "ilk_paket/kelimeSayaciResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<kelimeSayaci-response>)))
  "Returns md5sum for a message object of type '<kelimeSayaci-response>"
  "65c69d5d821fe1758c24c7c87273f551")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'kelimeSayaci-response)))
  "Returns md5sum for a message object of type 'kelimeSayaci-response"
  "65c69d5d821fe1758c24c7c87273f551")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<kelimeSayaci-response>)))
  "Returns full string definition for message of type '<kelimeSayaci-response>"
  (cl:format cl:nil "uint32 sayac~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'kelimeSayaci-response)))
  "Returns full string definition for message of type 'kelimeSayaci-response"
  (cl:format cl:nil "uint32 sayac~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <kelimeSayaci-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <kelimeSayaci-response>))
  "Converts a ROS message object to a list"
  (cl:list 'kelimeSayaci-response
    (cl:cons ':sayac (sayac msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'kelimeSayaci)))
  'kelimeSayaci-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'kelimeSayaci)))
  'kelimeSayaci-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'kelimeSayaci)))
  "Returns string type for a service object of type '<kelimeSayaci>"
  "ilk_paket/kelimeSayaci")