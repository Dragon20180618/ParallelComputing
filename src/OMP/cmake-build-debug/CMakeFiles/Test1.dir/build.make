# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /cygdrive/c/Users/Dragon/.CLion2019.2/system/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Dragon/.CLion2019.2/system/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/d/ParallelComputing/Coding/Test1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Test1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Test1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Test1.dir/flags.make

CMakeFiles/Test1.dir/main.c.o: CMakeFiles/Test1.dir/flags.make
CMakeFiles/Test1.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Test1.dir/main.c.o"
	D:/ParallelComputing/Cygwin/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Test1.dir/main.c.o   -c /cygdrive/d/ParallelComputing/Coding/Test1/src/main.c

CMakeFiles/Test1.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Test1.dir/main.c.i"
	D:/ParallelComputing/Cygwin/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/d/ParallelComputing/Coding/Test1/src/main.c > CMakeFiles/Test1.dir/main.c.i

CMakeFiles/Test1.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Test1.dir/main.c.s"
	D:/ParallelComputing/Cygwin/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/d/ParallelComputing/Coding/Test1/src/main.c -o CMakeFiles/Test1.dir/main.c.s

# Object files for target Test1
Test1_OBJECTS = \
"CMakeFiles/Test1.dir/main.c.o"

# External object files for target Test1
Test1_EXTERNAL_OBJECTS =

Test1.exe: CMakeFiles/Test1.dir/main.c.o
Test1.exe: CMakeFiles/Test1.dir/build.make
Test1.exe: CMakeFiles/Test1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Test1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Test1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Test1.dir/build: Test1.exe

.PHONY : CMakeFiles/Test1.dir/build

CMakeFiles/Test1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Test1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Test1.dir/clean

CMakeFiles/Test1.dir/depend:
	cd /cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/d/ParallelComputing/Coding/Test1/src /cygdrive/d/ParallelComputing/Coding/Test1/src /cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug /cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug /cygdrive/d/ParallelComputing/Coding/Test1/src/cmake-build-debug/CMakeFiles/Test1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Test1.dir/depend

