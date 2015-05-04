cmake_minimum_required(VERSION 2.8.8)
project(proj0 CXX)

set(CMAKE_MODULE_PATH ${proj0_SOURCE_DIR}/cmake)

include(BuildLocation)
include(InstallLocation)
include(DetermineVersion)

include_directories(".")

add_subdirectory(proj0)
add_subdirectory(dep0)

# Set up our version.
set(proj0_VERSION_MAJOR   "1")
set(proj0_VERSION_MINOR   "2")
set(proj0_VERSION_PATCH   "2")
set(proj0_VERSION
  "${proj0_VERSION_MAJOR}.${proj0_VERSION_MINOR}.${proj0_VERSION_PATCH}")
find_package(Git)
determine_version(${proj0_SOURCE_DIR} ${GIT_EXECUTABLE} "proj0")

message(STATUS "VERSION : ${proj0_VERSION}")

