# Install script for directory: /home/nesetaydin/catkin_ws/src/ilk_paket

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nesetaydin/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/msg" TYPE FILE FILES
    "/home/nesetaydin/catkin_ws/src/ilk_paket/msg/drone.msg"
    "/home/nesetaydin/catkin_ws/src/ilk_paket/msg/zaman.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/srv" TYPE FILE FILES
    "/home/nesetaydin/catkin_ws/src/ilk_paket/srv/kelimeSayaci.srv"
    "/home/nesetaydin/catkin_ws/src/ilk_paket/srv/toplam.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/action" TYPE FILE FILES "/home/nesetaydin/catkin_ws/src/ilk_paket/action/Fibonacci.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/msg" TYPE FILE FILES
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciAction.msg"
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciActionGoal.msg"
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciActionResult.msg"
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciActionFeedback.msg"
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciGoal.msg"
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciResult.msg"
    "/home/nesetaydin/catkin_ws/devel/share/ilk_paket/msg/FibonacciFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/cmake" TYPE FILE FILES "/home/nesetaydin/catkin_ws/build/ilk_paket/catkin_generated/installspace/ilk_paket-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nesetaydin/catkin_ws/devel/include/ilk_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nesetaydin/catkin_ws/devel/share/roseus/ros/ilk_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nesetaydin/catkin_ws/devel/share/common-lisp/ros/ilk_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nesetaydin/catkin_ws/devel/share/gennodejs/ros/ilk_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nesetaydin/catkin_ws/devel/lib/python3/dist-packages/ilk_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nesetaydin/catkin_ws/devel/lib/python3/dist-packages/ilk_paket")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nesetaydin/catkin_ws/build/ilk_paket/catkin_generated/installspace/ilk_paket.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/cmake" TYPE FILE FILES "/home/nesetaydin/catkin_ws/build/ilk_paket/catkin_generated/installspace/ilk_paket-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/cmake" TYPE FILE FILES
    "/home/nesetaydin/catkin_ws/build/ilk_paket/catkin_generated/installspace/ilk_paketConfig.cmake"
    "/home/nesetaydin/catkin_ws/build/ilk_paket/catkin_generated/installspace/ilk_paketConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket" TYPE FILE FILES "/home/nesetaydin/catkin_ws/src/ilk_paket/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ilk_paket/launch" TYPE DIRECTORY FILES "/home/nesetaydin/catkin_ws/src/ilk_paket/launch/")
endif()

