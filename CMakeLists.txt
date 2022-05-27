cmake_minimum_required(VERSION 3.20)
project(FreeGCS)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS YES)

find_package(Boost COMPONENTS graph REQUIRED)
find_package(Eigen3 REQUIRED)

include_directories("Include" ${Boost_INCLUDE_DIR})
file(GLOB SOURCES "Src/*.cxx")
add_library(FreeGCS SHARED ${SOURCES})
target_include_directories(FreeGCS PUBLIC "Include")
target_link_libraries(FreeGCS Boost::graph Eigen3::Eigen)
