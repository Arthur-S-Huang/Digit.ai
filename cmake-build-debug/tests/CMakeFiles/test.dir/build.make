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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test.dir/flags.make

Debug/test/test.app/Contents/Resources/CinderApp.icns: /Users/arthurhuang/IdeaProjects/cinder/samples/data/CinderApp.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content Debug/test/test.app/Contents/Resources/CinderApp.icns"
	$(CMAKE_COMMAND) -E copy /Users/arthurhuang/IdeaProjects/cinder/samples/data/CinderApp.icns Debug/test/test.app/Contents/Resources/CinderApp.icns

tests/CMakeFiles/test.dir/test.cc.o: tests/CMakeFiles/test.dir/flags.make
tests/CMakeFiles/test.dir/test.cc.o: ../tests/test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test.dir/test.cc.o"
	cd /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test.dir/test.cc.o -c /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/tests/test.cc

tests/CMakeFiles/test.dir/test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test.dir/test.cc.i"
	cd /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/tests/test.cc > CMakeFiles/test.dir/test.cc.i

tests/CMakeFiles/test.dir/test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test.dir/test.cc.s"
	cd /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/tests/test.cc -o CMakeFiles/test.dir/test.cc.s

# Object files for target test
test_OBJECTS = \
"CMakeFiles/test.dir/test.cc.o"

# External object files for target test
test_EXTERNAL_OBJECTS =

Debug/test/test.app/Contents/MacOS/test: tests/CMakeFiles/test.dir/test.cc.o
Debug/test/test.app/Contents/MacOS/test: tests/CMakeFiles/test.dir/build.make
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/IdeaProjects/cinder/lib/macosx/Debug/libcinder.a
Debug/test/test.app/Contents/MacOS/test: src/libmylibrary.a
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/IdeaProjects/cinder/lib/macosx/Debug/libcinder.a
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/IdeaProjects/cinder/lib/macosx/libboost_system.a
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/IdeaProjects/cinder/lib/macosx/libboost_filesystem.a
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/libtorch-mnist/libtorch/lib/libtorch.dylib
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/libtorch-mnist/libtorch/lib/libc10.dylib
Debug/test/test.app/Contents/MacOS/test: /Users/arthurhuang/libtorch-mnist/libtorch/lib/libc10.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_gapi.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_stitching.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_aruco.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_bgsegm.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_bioinspired.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_ccalib.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_dnn_objdetect.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_dnn_superres.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_dpm.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_highgui.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_face.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_fuzzy.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_hfs.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_img_hash.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_intensity_transform.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_line_descriptor.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_quality.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_rapid.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_reg.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_rgbd.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_saliency.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_stereo.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_structured_light.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_phase_unwrapping.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_superres.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_optflow.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_surface_matching.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_tracking.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_datasets.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_plot.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_text.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_dnn.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_videostab.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_videoio.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_xfeatures2d.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_ml.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_shape.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_ximgproc.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_video.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_xobjdetect.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_imgcodecs.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_objdetect.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_calib3d.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_features2d.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_flann.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_xphoto.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_photo.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_imgproc.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: /usr/local/lib/libopencv_core.4.3.0.dylib
Debug/test/test.app/Contents/MacOS/test: tests/CMakeFiles/test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../Debug/test/test.app/Contents/MacOS/test"
	cd /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/test.dir/build: Debug/test/test.app/Contents/MacOS/test
tests/CMakeFiles/test.dir/build: Debug/test/test.app/Contents/Resources/CinderApp.icns

.PHONY : tests/CMakeFiles/test.dir/build

tests/CMakeFiles/test.dir/clean:
	cd /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test.dir/clean

tests/CMakeFiles/test.dir/depend:
	cd /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/tests /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests /Users/arthurhuang/IdeaProjects/cinder/myprojects/final-project-Arthur-S-Huang/cmake-build-debug/tests/CMakeFiles/test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/test.dir/depend

