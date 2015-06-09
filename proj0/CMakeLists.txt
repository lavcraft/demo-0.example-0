cmake_minimum_required(VERSION 2.8)
project(proj0)
ENABLE_TESTING()

SET(CMAKE_CXX_FLAGS="-g -O0 -Wall -W -Wshadow -Wunused-variable -Wunused-parameter -Wunused-function -Wunused -Wno-system-headers -Wno-deprecated -Woverloaded-virtual -Wwrite-strings -fprofile-arcs -ftest-coverage")

determine_version(${proj0_SOURCE_DIR} ${GIT_EXECUTABLE} "proj0")
set(proj0_srcs
    main.cpp)
add_executable(proj0 ${proj0_srcs})
target_link_libraries(proj0 dep0)

add_test(NAME Proj0Run COMMAND proj0)
