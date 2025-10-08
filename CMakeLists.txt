cmake_minimum_required(VERSION 3.15)
project(TeamMergeConflict CXX)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(mathlib src/math.cpp)
target_include_directories(mathlib PUBLIC ${CMAKE_SOURCE_DIR}/src)

add_executable(app src/main.cpp)
target_link_libraries(app PRIVATE mathlib)

enable_testing()
add_executable(tests tests/test.cpp)
target_link_libraries(tests PRIVATE mathlib)
add_test(NAME unit COMMAND tests)