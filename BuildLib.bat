del /f /s /q build
rmdir /s /q build
cmake -G Ninja -Bbuild -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=clang -DCMAKE_CXX_COMPILER=clang++ -D_CMAKE_TOOLCHAIN_PREFIX=llvm- -DCMAKE_TOOLCHAIN_FILE="External\vcpkg\scripts\buildsystems\vcpkg.cmake"
cd build
ninja
