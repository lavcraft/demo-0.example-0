cmake_minimum_required(VERSION 2.8)

project(dep0)

set(SOURCES dep0.cpp)
set(HEADERS dep0.h)

add_library(dep0 ${HEADERS} ${SOURCES})

install(FILES ${HEADERS}
   DESTINATION "${INSTALL_INCLUDE_DIR}/dep0")
     
ADD_CUSTOM_COMMAND(
   OUTPUT ${CMAKE_BINARY_DIR}/dep0.h
   COMMAND ${CMAKE_COMMAND} -E copy ${CMAKE_CURRENT_SOURCE_DIR}/dep0.h
${CMAKE_BINARY_DIR}/dep0.h
   DEPENDS ${CMAKE_CURRENT_SOURCE_DIR}/dep0.h
   )
