# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build

# Utility rule file for theGrid.desktop.

# Include the progress variables for this target.
include CMakeFiles/theGrid.desktop.dir/progress.make

CMakeFiles/theGrid.desktop:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Merging translations into theGrid.desktop..."
	LC_ALL=C /usr/bin/intltool-merge -d -u /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/po /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/theGrid.desktop.in theGrid.desktop
	sed -i 's/theGrid-//g' /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/theGrid.desktop

theGrid.desktop: CMakeFiles/theGrid.desktop
theGrid.desktop: CMakeFiles/theGrid.desktop.dir/build.make
.PHONY : theGrid.desktop

# Rule to build all files generated by this target.
CMakeFiles/theGrid.desktop.dir/build: theGrid.desktop
.PHONY : CMakeFiles/theGrid.desktop.dir/build

CMakeFiles/theGrid.desktop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/theGrid.desktop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/theGrid.desktop.dir/clean

CMakeFiles/theGrid.desktop.dir/depend:
	cd /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build /home/fulvio/Dropbox/ubuntu-devel/my-apps/theGrid/source/theGrid/build/CMakeFiles/theGrid.desktop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/theGrid.desktop.dir/depend

