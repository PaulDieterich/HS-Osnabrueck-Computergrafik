# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

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
CMAKE_COMMAND = /home/pjd-popos/Documents/clion-2020.2.3/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/pjd-popos/Documents/clion-2020.2.3/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pjd-popos/CLionProjects/untitled

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pjd-popos/CLionProjects/untitled/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/color.cpp.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/color.cpp.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/color.cpp.dir/flags.make

CMakeFiles/color.cpp.dir/rgbimage.cpp.o: CMakeFiles/color.cpp.dir/flags.make
CMakeFiles/color.cpp.dir/rgbimage.cpp.o: ../rgbimage.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjd-popos/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/color.cpp.dir/rgbimage.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color.cpp.dir/rgbimage.cpp.o -c /home/pjd-popos/CLionProjects/untitled/rgbimage.cpp

CMakeFiles/color.cpp.dir/rgbimage.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color.cpp.dir/rgbimage.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjd-popos/CLionProjects/untitled/rgbimage.cpp > CMakeFiles/color.cpp.dir/rgbimage.cpp.i

CMakeFiles/color.cpp.dir/rgbimage.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color.cpp.dir/rgbimage.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjd-popos/CLionProjects/untitled/rgbimage.cpp -o CMakeFiles/color.cpp.dir/rgbimage.cpp.s

CMakeFiles/color.cpp.dir/test1.cpp.o: CMakeFiles/color.cpp.dir/flags.make
CMakeFiles/color.cpp.dir/test1.cpp.o: ../test1.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjd-popos/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/color.cpp.dir/test1.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color.cpp.dir/test1.cpp.o -c /home/pjd-popos/CLionProjects/untitled/test1.cpp

CMakeFiles/color.cpp.dir/test1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color.cpp.dir/test1.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjd-popos/CLionProjects/untitled/test1.cpp > CMakeFiles/color.cpp.dir/test1.cpp.i

CMakeFiles/color.cpp.dir/test1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color.cpp.dir/test1.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjd-popos/CLionProjects/untitled/test1.cpp -o CMakeFiles/color.cpp.dir/test1.cpp.s

CMakeFiles/color.cpp.dir/vector.cpp.o: CMakeFiles/color.cpp.dir/flags.make
CMakeFiles/color.cpp.dir/vector.cpp.o: ../vector.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjd-popos/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/color.cpp.dir/vector.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color.cpp.dir/vector.cpp.o -c /home/pjd-popos/CLionProjects/untitled/vector.cpp

CMakeFiles/color.cpp.dir/vector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color.cpp.dir/vector.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjd-popos/CLionProjects/untitled/vector.cpp > CMakeFiles/color.cpp.dir/vector.cpp.i

CMakeFiles/color.cpp.dir/vector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color.cpp.dir/vector.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjd-popos/CLionProjects/untitled/vector.cpp -o CMakeFiles/color.cpp.dir/vector.cpp.s

CMakeFiles/color.cpp.dir/main.cpp.o: CMakeFiles/color.cpp.dir/flags.make
CMakeFiles/color.cpp.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pjd-popos/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/color.cpp.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color.cpp.dir/main.cpp.o -c /home/pjd-popos/CLionProjects/untitled/main.cpp

CMakeFiles/color.cpp.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color.cpp.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pjd-popos/CLionProjects/untitled/main.cpp > CMakeFiles/color.cpp.dir/main.cpp.i

CMakeFiles/color.cpp.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color.cpp.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pjd-popos/CLionProjects/untitled/main.cpp -o CMakeFiles/color.cpp.dir/main.cpp.s

# Object files for target color.cpp
color_cpp_OBJECTS = \
"CMakeFiles/color.cpp.dir/rgbimage.cpp.o" \
"CMakeFiles/color.cpp.dir/test1.cpp.o" \
"CMakeFiles/color.cpp.dir/vector.cpp.o" \
"CMakeFiles/color.cpp.dir/main.cpp.o"

# External object files for target color.cpp
color_cpp_EXTERNAL_OBJECTS =

color.cpp: CMakeFiles/color.cpp.dir/rgbimage.cpp.o
color.cpp: CMakeFiles/color.cpp.dir/test1.cpp.o
color.cpp: CMakeFiles/color.cpp.dir/vector.cpp.o
color.cpp: CMakeFiles/color.cpp.dir/main.cpp.o
color.cpp: CMakeFiles/color.cpp.dir/build.make
color.cpp: CMakeFiles/color.cpp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pjd-popos/CLionProjects/untitled/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable color.cpp"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color.cpp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/color.cpp.dir/build: color.cpp

.PHONY : CMakeFiles/color.cpp.dir/build

CMakeFiles/color.cpp.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/color.cpp.dir/cmake_clean.cmake
.PHONY : CMakeFiles/color.cpp.dir/clean

CMakeFiles/color.cpp.dir/depend:
	cd /home/pjd-popos/CLionProjects/untitled/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pjd-popos/CLionProjects/untitled /home/pjd-popos/CLionProjects/untitled /home/pjd-popos/CLionProjects/untitled/cmake-build-debug /home/pjd-popos/CLionProjects/untitled/cmake-build-debug /home/pjd-popos/CLionProjects/untitled/cmake-build-debug/CMakeFiles/color.cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/color.cpp.dir/depend

