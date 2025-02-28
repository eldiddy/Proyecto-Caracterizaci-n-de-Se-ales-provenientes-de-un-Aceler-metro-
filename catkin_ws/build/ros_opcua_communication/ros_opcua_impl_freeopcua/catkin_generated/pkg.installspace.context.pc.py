# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;ros_opcua_msgs;ros_opcua_srvs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lopcuaprotocol;-lopcuacore;-lopcuaclient;-lopcuaserver".split(';') if "-lopcuaprotocol;-lopcuacore;-lopcuaclient;-lopcuaserver" != "" else []
PROJECT_NAME = "ros_opcua_impl_freeopcua"
PROJECT_SPACE_DIR = "/root/catkin_ws/install"
PROJECT_VERSION = "0.2.0"
