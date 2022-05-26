cmake_minimum_required(VERSION 3.20)
project(FreeGCS)
set(CMAKE_CXX_STANDARD 20)

find_package(Boost COMPONENTS graph REQUIRED)
find_package(Eigen3 REQUIRED)

include_directories("Include" ${Boost_INCLUDE_DIR})
file(GLOB SOURCES "Src/*.cxx")
add_library(FreeGCS SHARED ${SOURCES})
target_link_libraries(FreeGCS Boost::graph Eigen3::Eigen)
