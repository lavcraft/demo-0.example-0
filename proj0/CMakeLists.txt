cmake_minimum_required(VERSION 2.8)

determine_version(${proj0_SOURCE_DIR} ${GIT_EXECUTABLE} "proj0")
set(proj0_srcs
    main.cpp)
add_executable(proj0 ${proj0_srcs})
target_link_libraries(proj0 dep0)
