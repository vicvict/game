# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

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
CMAKE_COMMAND = /home/alex/Downloads/clion-2017.3/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/alex/Downloads/clion-2017.3/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alex/CLionProjects/game/SFML_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alex/CLionProjects/game/SFML_test/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SFML_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SFML_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SFML_test.dir/flags.make

CMakeFiles/SFML_test.dir/main.cpp.o: CMakeFiles/SFML_test.dir/flags.make
CMakeFiles/SFML_test.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alex/CLionProjects/game/SFML_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SFML_test.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SFML_test.dir/main.cpp.o -c /home/alex/CLionProjects/game/SFML_test/main.cpp

CMakeFiles/SFML_test.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SFML_test.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alex/CLionProjects/game/SFML_test/main.cpp > CMakeFiles/SFML_test.dir/main.cpp.i

CMakeFiles/SFML_test.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SFML_test.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alex/CLionProjects/game/SFML_test/main.cpp -o CMakeFiles/SFML_test.dir/main.cpp.s

CMakeFiles/SFML_test.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/SFML_test.dir/main.cpp.o.requires

CMakeFiles/SFML_test.dir/main.cpp.o.provides: CMakeFiles/SFML_test.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/SFML_test.dir/build.make CMakeFiles/SFML_test.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/SFML_test.dir/main.cpp.o.provides

CMakeFiles/SFML_test.dir/main.cpp.o.provides.build: CMakeFiles/SFML_test.dir/main.cpp.o


# Object files for target SFML_test
SFML_test_OBJECTS = \
"CMakeFiles/SFML_test.dir/main.cpp.o"

# External object files for target SFML_test
SFML_test_EXTERNAL_OBJECTS =

SFML_test: CMakeFiles/SFML_test.dir/main.cpp.o
SFML_test: CMakeFiles/SFML_test.dir/build.make
SFML_test: /usr/lib/x86_64-linux-gnu/libsfml-system.so
SFML_test: /usr/lib/x86_64-linux-gnu/libsfml-window.so
SFML_test: /usr/lib/x86_64-linux-gnu/libsfml-graphics.so
SFML_test: /usr/lib/x86_64-linux-gnu/libsfml-network.so
SFML_test: /usr/lib/x86_64-linux-gnu/libsfml-audio.so
SFML_test: CMakeFiles/SFML_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alex/CLionProjects/game/SFML_test/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SFML_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SFML_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SFML_test.dir/build: SFML_test

.PHONY : CMakeFiles/SFML_test.dir/build

CMakeFiles/SFML_test.dir/requires: CMakeFiles/SFML_test.dir/main.cpp.o.requires

.PHONY : CMakeFiles/SFML_test.dir/requires

CMakeFiles/SFML_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SFML_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SFML_test.dir/clean

CMakeFiles/SFML_test.dir/depend:
	cd /home/alex/CLionProjects/game/SFML_test/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alex/CLionProjects/game/SFML_test /home/alex/CLionProjects/game/SFML_test /home/alex/CLionProjects/game/SFML_test/cmake-build-debug /home/alex/CLionProjects/game/SFML_test/cmake-build-debug /home/alex/CLionProjects/game/SFML_test/cmake-build-debug/CMakeFiles/SFML_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SFML_test.dir/depend
