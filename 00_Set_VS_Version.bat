echo %0

if %1!==! goto usage

set VS_ROOT_DIR=%1

exit /b 0
:usage
echo Usage: 00_Set_VS_Version.bat <PATH_TO_VS_DIRECTORY>
echo Example: 00_Set_VS_Version.bat "C:\Program Files\Microsoft Visual Studio\2022\Professional"

exit /b 1

