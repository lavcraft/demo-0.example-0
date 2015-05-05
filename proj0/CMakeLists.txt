cmake_minimum_required(VERSION 2.8)
project(proj0app)
ENABLE_TESTING()

SET(CMAKE_CXX_FLAGS="-g -O0 -Wall -W -Wshadow -Wunused-variable -Wunused-parameter -Wunused-function -Wunused -Wno-system-headers -Wno-deprecated -Woverloaded-virtual -Wwrite-strings -fprofile-arcs -ftest-coverage")

determine_version(${proj0app_SOURCE_DIR} ${GIT_EXECUTABLE} "proj0app")
set(proj0_srcs
    main.cpp)
add_executable(proj0app ${proj0_srcs})
target_link_libraries(proj0app dep0)

add_test(NAME Proj0Run COMMAND proj0app)
