# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /snap/cmake/1147/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1147/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build

# Include any dependencies generated for this target.
include CMakeFiles/CSGdefo-0.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/CSGdefo-0.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/CSGdefo-0.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CSGdefo-0.dir/flags.make

CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o: CMakeFiles/CSGdefo-0.dir/flags.make
CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o: /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/main_withcheck.cpp
CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o: CMakeFiles/CSGdefo-0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o -MF CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o.d -o CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o -c /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/main_withcheck.cpp

CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/main_withcheck.cpp > CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.i

CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/main_withcheck.cpp -o CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.s

CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o: CMakeFiles/CSGdefo-0.dir/flags.make
CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o: /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/CSGdefo-0.cu
CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o: CMakeFiles/CSGdefo-0.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CUDA object CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o"
	/home/yufan/cuda/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o -MF CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o.d -x cu -c /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/CSGdefo-0.cu -o CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o

CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target CSGdefo-0
CSGdefo__0_OBJECTS = \
"CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o" \
"CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o"

# External object files for target CSGdefo-0
CSGdefo__0_EXTERNAL_OBJECTS =

CSGdefo-0: CMakeFiles/CSGdefo-0.dir/main_withcheck.cpp.o
CSGdefo-0: CMakeFiles/CSGdefo-0.dir/CSGdefo-0.cu.o
CSGdefo-0: CMakeFiles/CSGdefo-0.dir/build.make
CSGdefo-0: CMakeFiles/CSGdefo-0.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable CSGdefo-0"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CSGdefo-0.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CSGdefo-0.dir/build: CSGdefo-0
.PHONY : CMakeFiles/CSGdefo-0.dir/build

CMakeFiles/CSGdefo-0.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CSGdefo-0.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CSGdefo-0.dir/clean

CMakeFiles/CSGdefo-0.dir/depend:
	cd /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build /home/yufan/AE-PACT/Kernel/dump_best/RSKernel/rsr-defo/build/CMakeFiles/CSGdefo-0.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CSGdefo-0.dir/depend
