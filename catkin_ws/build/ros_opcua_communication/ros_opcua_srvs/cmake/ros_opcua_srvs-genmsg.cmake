# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ros_opcua_srvs: 0 messages, 8 services")

set(MSG_I_FLAGS "-Iros_opcua_msgs:/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ros_opcua_srvs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" "ros_opcua_msgs/Address:ros_opcua_msgs/TypeValue"
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" ""
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" ""
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" "ros_opcua_msgs/Address"
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" "ros_opcua_msgs/Address:ros_opcua_msgs/TypeValue"
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" "ros_opcua_msgs/Address"
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" "ros_opcua_msgs/Address"
)

get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" NAME_WE)
add_custom_target(_ros_opcua_srvs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ros_opcua_srvs" "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" "ros_opcua_msgs/Address:ros_opcua_msgs/TypeValue"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_cpp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
)

### Generating Module File
_generate_module_cpp(ros_opcua_srvs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ros_opcua_srvs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ros_opcua_srvs_generate_messages ros_opcua_srvs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_cpp _ros_opcua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_opcua_srvs_gencpp)
add_dependencies(ros_opcua_srvs_gencpp ros_opcua_srvs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_opcua_srvs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_eus(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
)

### Generating Module File
_generate_module_eus(ros_opcua_srvs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ros_opcua_srvs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ros_opcua_srvs_generate_messages ros_opcua_srvs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_eus _ros_opcua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_opcua_srvs_geneus)
add_dependencies(ros_opcua_srvs_geneus ros_opcua_srvs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_opcua_srvs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_lisp(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
)

### Generating Module File
_generate_module_lisp(ros_opcua_srvs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ros_opcua_srvs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ros_opcua_srvs_generate_messages ros_opcua_srvs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_lisp _ros_opcua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_opcua_srvs_genlisp)
add_dependencies(ros_opcua_srvs_genlisp ros_opcua_srvs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_opcua_srvs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_nodejs(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
)

### Generating Module File
_generate_module_nodejs(ros_opcua_srvs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ros_opcua_srvs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ros_opcua_srvs_generate_messages ros_opcua_srvs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_nodejs _ros_opcua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_opcua_srvs_gennodejs)
add_dependencies(ros_opcua_srvs_gennodejs ros_opcua_srvs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_opcua_srvs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)
_generate_srv_py(ros_opcua_srvs
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv"
  "${MSG_I_FLAGS}"
  "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/Address.msg;/root/catkin_ws/src/ros_opcua_communication/ros_opcua_msgs/msg/TypeValue.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
)

### Generating Module File
_generate_module_py(ros_opcua_srvs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ros_opcua_srvs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ros_opcua_srvs_generate_messages ros_opcua_srvs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/CallMethod.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Connect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Disconnect.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/ListNode.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Read.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Subscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Unsubscribe.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/root/catkin_ws/src/ros_opcua_communication/ros_opcua_srvs/srv/Write.srv" NAME_WE)
add_dependencies(ros_opcua_srvs_generate_messages_py _ros_opcua_srvs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ros_opcua_srvs_genpy)
add_dependencies(ros_opcua_srvs_genpy ros_opcua_srvs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ros_opcua_srvs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ros_opcua_srvs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET ros_opcua_msgs_generate_messages_cpp)
  add_dependencies(ros_opcua_srvs_generate_messages_cpp ros_opcua_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ros_opcua_srvs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(ros_opcua_srvs_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ros_opcua_srvs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET ros_opcua_msgs_generate_messages_eus)
  add_dependencies(ros_opcua_srvs_generate_messages_eus ros_opcua_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ros_opcua_srvs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(ros_opcua_srvs_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ros_opcua_srvs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET ros_opcua_msgs_generate_messages_lisp)
  add_dependencies(ros_opcua_srvs_generate_messages_lisp ros_opcua_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ros_opcua_srvs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(ros_opcua_srvs_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ros_opcua_srvs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET ros_opcua_msgs_generate_messages_nodejs)
  add_dependencies(ros_opcua_srvs_generate_messages_nodejs ros_opcua_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ros_opcua_srvs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(ros_opcua_srvs_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ros_opcua_srvs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET ros_opcua_msgs_generate_messages_py)
  add_dependencies(ros_opcua_srvs_generate_messages_py ros_opcua_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ros_opcua_srvs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(ros_opcua_srvs_generate_messages_py std_srvs_generate_messages_py)
endif()
