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
CMAKE_SOURCE_DIR = /home/pardomarques/Documents/comp_grafica_projeto_final

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pardomarques/Documents/comp_grafica_projeto_final/build

# Include any dependencies generated for this target.
include examples/midas/CMakeFiles/midas.dir/depend.make

# Include the progress variables for this target.
include examples/midas/CMakeFiles/midas.dir/progress.make

# Include the compile flags for this target's objects.
include examples/midas/CMakeFiles/midas.dir/flags.make

examples/midas/CMakeFiles/midas.dir/main.cpp.o: examples/midas/CMakeFiles/midas.dir/flags.make
examples/midas/CMakeFiles/midas.dir/main.cpp.o: ../examples/midas/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pardomarques/Documents/comp_grafica_projeto_final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/midas/CMakeFiles/midas.dir/main.cpp.o"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/midas.dir/main.cpp.o -c /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/main.cpp

examples/midas/CMakeFiles/midas.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midas.dir/main.cpp.i"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/main.cpp > CMakeFiles/midas.dir/main.cpp.i

examples/midas/CMakeFiles/midas.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midas.dir/main.cpp.s"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/main.cpp -o CMakeFiles/midas.dir/main.cpp.s

examples/midas/CMakeFiles/midas.dir/model.cpp.o: examples/midas/CMakeFiles/midas.dir/flags.make
examples/midas/CMakeFiles/midas.dir/model.cpp.o: ../examples/midas/model.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pardomarques/Documents/comp_grafica_projeto_final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/midas/CMakeFiles/midas.dir/model.cpp.o"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/midas.dir/model.cpp.o -c /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/model.cpp

examples/midas/CMakeFiles/midas.dir/model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midas.dir/model.cpp.i"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/model.cpp > CMakeFiles/midas.dir/model.cpp.i

examples/midas/CMakeFiles/midas.dir/model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midas.dir/model.cpp.s"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/model.cpp -o CMakeFiles/midas.dir/model.cpp.s

examples/midas/CMakeFiles/midas.dir/openglwindow.cpp.o: examples/midas/CMakeFiles/midas.dir/flags.make
examples/midas/CMakeFiles/midas.dir/openglwindow.cpp.o: ../examples/midas/openglwindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pardomarques/Documents/comp_grafica_projeto_final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/midas/CMakeFiles/midas.dir/openglwindow.cpp.o"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/midas.dir/openglwindow.cpp.o -c /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/openglwindow.cpp

examples/midas/CMakeFiles/midas.dir/openglwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midas.dir/openglwindow.cpp.i"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/openglwindow.cpp > CMakeFiles/midas.dir/openglwindow.cpp.i

examples/midas/CMakeFiles/midas.dir/openglwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midas.dir/openglwindow.cpp.s"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/openglwindow.cpp -o CMakeFiles/midas.dir/openglwindow.cpp.s

examples/midas/CMakeFiles/midas.dir/trackball.cpp.o: examples/midas/CMakeFiles/midas.dir/flags.make
examples/midas/CMakeFiles/midas.dir/trackball.cpp.o: ../examples/midas/trackball.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pardomarques/Documents/comp_grafica_projeto_final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object examples/midas/CMakeFiles/midas.dir/trackball.cpp.o"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/midas.dir/trackball.cpp.o -c /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/trackball.cpp

examples/midas/CMakeFiles/midas.dir/trackball.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/midas.dir/trackball.cpp.i"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/trackball.cpp > CMakeFiles/midas.dir/trackball.cpp.i

examples/midas/CMakeFiles/midas.dir/trackball.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/midas.dir/trackball.cpp.s"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/trackball.cpp -o CMakeFiles/midas.dir/trackball.cpp.s

# Object files for target midas
midas_OBJECTS = \
"CMakeFiles/midas.dir/main.cpp.o" \
"CMakeFiles/midas.dir/model.cpp.o" \
"CMakeFiles/midas.dir/openglwindow.cpp.o" \
"CMakeFiles/midas.dir/trackball.cpp.o"

# External object files for target midas
midas_EXTERNAL_OBJECTS =

bin/midas: examples/midas/CMakeFiles/midas.dir/main.cpp.o
bin/midas: examples/midas/CMakeFiles/midas.dir/model.cpp.o
bin/midas: examples/midas/CMakeFiles/midas.dir/openglwindow.cpp.o
bin/midas: examples/midas/CMakeFiles/midas.dir/trackball.cpp.o
bin/midas: examples/midas/CMakeFiles/midas.dir/build.make
bin/midas: abcg/libabcg.a
bin/midas: /usr/lib/x86_64-linux-gnu/libGLX.so
bin/midas: /usr/lib/x86_64-linux-gnu/libOpenGL.so
bin/midas: /usr/lib/x86_64-linux-gnu/libGLEW.so
bin/midas: abcg/external/fmt/libfmt.a
bin/midas: abcg/external/imgui/libimgui.a
bin/midas: /usr/lib/x86_64-linux-gnu/libSDL2main.a
bin/midas: /usr/lib/x86_64-linux-gnu/libSDL2.so
bin/midas: /usr/lib/x86_64-linux-gnu/libSDL2_image.so
bin/midas: examples/midas/CMakeFiles/midas.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pardomarques/Documents/comp_grafica_projeto_final/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/midas"
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/cmake -E remove_directory /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/midas.dir/link.txt --verbose=$(VERBOSE)
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/cmake -E make_directory /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas.dir
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/cmake -E copy /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas.dir/midas
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/cmake -E remove /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/cmake -E copy_directory /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas/assets /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas.dir/assets
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && /usr/bin/cmake -E rename /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas.dir /home/pardomarques/Documents/comp_grafica_projeto_final/build/bin/midas

# Rule to build all files generated by this target.
examples/midas/CMakeFiles/midas.dir/build: bin/midas

.PHONY : examples/midas/CMakeFiles/midas.dir/build

examples/midas/CMakeFiles/midas.dir/clean:
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas && $(CMAKE_COMMAND) -P CMakeFiles/midas.dir/cmake_clean.cmake
.PHONY : examples/midas/CMakeFiles/midas.dir/clean

examples/midas/CMakeFiles/midas.dir/depend:
	cd /home/pardomarques/Documents/comp_grafica_projeto_final/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pardomarques/Documents/comp_grafica_projeto_final /home/pardomarques/Documents/comp_grafica_projeto_final/examples/midas /home/pardomarques/Documents/comp_grafica_projeto_final/build /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas /home/pardomarques/Documents/comp_grafica_projeto_final/build/examples/midas/CMakeFiles/midas.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/midas/CMakeFiles/midas.dir/depend

