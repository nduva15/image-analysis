# Install script for directory: /Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/dependencies/EllipsisDetector

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Users/joaquinblanco/Library/Android/sdk/ndk/24.0.8215888/toolchains/llvm/prebuilt/darwin-x86_64/bin/llvm-objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/libEllipsisDetector.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake/EllipsisDetectorTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake/EllipsisDetectorTargets.cmake"
         "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/CMakeFiles/Export/share/EllipsisDetector/cmake/EllipsisDetectorTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake/EllipsisDetectorTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake/EllipsisDetectorTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake" TYPE FILE FILES "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/CMakeFiles/Export/share/EllipsisDetector/cmake/EllipsisDetectorTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake" TYPE FILE FILES "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/CMakeFiles/Export/share/EllipsisDetector/cmake/EllipsisDetectorTargets-relwithdebinfo.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/EllipsisDetector/cmake" TYPE FILE FILES
    "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/EllipsisDetectorConfig.cmake"
    "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/EllipsisDetectorConfigVersion.cmake"
    "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/EllipsisDetectorAdd.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/dependencies/EllipsisDetector/include/EllipsisDetector")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/EllipsisDetector" TYPE FILE PERMISSIONS OWNER_READ GROUP_READ WORLD_READ FILES "/Users/joaquinblanco/Developer/FlutterProjects/varroa_counter_zhaw/ZHAW/Vatorex/build/Vatorex/arm64-v8a/EllipsisDetector/config_ellipsis_detector.h")
endif()

