del /f /s /q External
rmdir /s /q External
mkdir External
cd External

git clone https://github.com/Microsoft/vcpkg.git
.\vcpkg\bootstrap-vcpkg.bat
