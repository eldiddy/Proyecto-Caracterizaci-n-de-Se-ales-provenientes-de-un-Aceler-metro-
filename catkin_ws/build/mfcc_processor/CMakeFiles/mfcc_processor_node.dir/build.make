# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/catkin_ws/build

# Include any dependencies generated for this target.
include mfcc_processor/CMakeFiles/mfcc_processor_node.dir/depend.make

# Include the progress variables for this target.
include mfcc_processor/CMakeFiles/mfcc_processor_node.dir/progress.make

# Include the compile flags for this target's objects.
include mfcc_processor/CMakeFiles/mfcc_processor_node.dir/flags.make

mfcc_processor/CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.o: mfcc_processor/CMakeFiles/mfcc_processor_node.dir/flags.make
mfcc_processor/CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.o: /root/catkin_ws/src/mfcc_processor/src/mfcc_processor_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object mfcc_processor/CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.o"
	cd /root/catkin_ws/build/mfcc_processor && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.o -c /root/catkin_ws/src/mfcc_processor/src/mfcc_processor_node.cpp

mfcc_processor/CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.i"
	cd /root/catkin_ws/build/mfcc_processor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/catkin_ws/src/mfcc_processor/src/mfcc_processor_node.cpp > CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.i

mfcc_processor/CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.s"
	cd /root/catkin_ws/build/mfcc_processor && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/catkin_ws/src/mfcc_processor/src/mfcc_processor_node.cpp -o CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.s

# Object files for target mfcc_processor_node
mfcc_processor_node_OBJECTS = \
"CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.o"

# External object files for target mfcc_processor_node
mfcc_processor_node_EXTERNAL_OBJECTS =

/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: mfcc_processor/CMakeFiles/mfcc_processor_node.dir/src/mfcc_processor_node.cpp.o
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: mfcc_processor/CMakeFiles/mfcc_processor_node.dir/build.make
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/libmessage_filters.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/libroscpp.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libpthread.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/librosconsole.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/libxmlrpcpp.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/libroscpp_serialization.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/librostime.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /opt/ros/noetic/lib/libcpp_common.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: /usr/lib/x86_64-linux-gnu/libfftw3.so
/root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node: mfcc_processor/CMakeFiles/mfcc_processor_node.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node"
	cd /root/catkin_ws/build/mfcc_processor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mfcc_processor_node.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
mfcc_processor/CMakeFiles/mfcc_processor_node.dir/build: /root/catkin_ws/devel/lib/mfcc_processor/mfcc_processor_node

.PHONY : mfcc_processor/CMakeFiles/mfcc_processor_node.dir/build

mfcc_processor/CMakeFiles/mfcc_processor_node.dir/clean:
	cd /root/catkin_ws/build/mfcc_processor && $(CMAKE_COMMAND) -P CMakeFiles/mfcc_processor_node.dir/cmake_clean.cmake
.PHONY : mfcc_processor/CMakeFiles/mfcc_processor_node.dir/clean

mfcc_processor/CMakeFiles/mfcc_processor_node.dir/depend:
	cd /root/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/catkin_ws/src /root/catkin_ws/src/mfcc_processor /root/catkin_ws/build /root/catkin_ws/build/mfcc_processor /root/catkin_ws/build/mfcc_processor/CMakeFiles/mfcc_processor_node.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : mfcc_processor/CMakeFiles/mfcc_processor_node.dir/depend

