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
CMAKE_SOURCE_DIR = /home/ribhu/OpenGL

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ribhu/OpenGL

# Include any dependencies generated for this target.
include CMakeFiles/openGLWindow.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/openGLWindow.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/openGLWindow.dir/flags.make

CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.o: CMakeFiles/openGLWindow.dir/flags.make
CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.o: src/glfwtest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ribhu/OpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.o -c /home/ribhu/OpenGL/src/glfwtest.cpp

CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ribhu/OpenGL/src/glfwtest.cpp > CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.i

CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ribhu/OpenGL/src/glfwtest.cpp -o CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.s

# Object files for target openGLWindow
openGLWindow_OBJECTS = \
"CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.o"

# External object files for target openGLWindow
openGLWindow_EXTERNAL_OBJECTS =

openGLWindow: CMakeFiles/openGLWindow.dir/src/glfwtest.cpp.o
openGLWindow: CMakeFiles/openGLWindow.dir/build.make
openGLWindow: CMakeFiles/openGLWindow.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ribhu/OpenGL/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable openGLWindow"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openGLWindow.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/openGLWindow.dir/build: openGLWindow

.PHONY : CMakeFiles/openGLWindow.dir/build

CMakeFiles/openGLWindow.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/openGLWindow.dir/cmake_clean.cmake
.PHONY : CMakeFiles/openGLWindow.dir/clean

CMakeFiles/openGLWindow.dir/depend:
	cd /home/ribhu/OpenGL && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ribhu/OpenGL /home/ribhu/OpenGL /home/ribhu/OpenGL /home/ribhu/OpenGL /home/ribhu/OpenGL/CMakeFiles/openGLWindow.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/openGLWindow.dir/depend
