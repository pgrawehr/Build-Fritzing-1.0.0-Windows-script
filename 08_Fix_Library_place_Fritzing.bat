@echo off
rem 08_Fix_Library_place_Fritzing.bat
rem http://www.neko.ne.jp/~freewing/software/build_fritzing_100_windows/
rem Copyright (c) 2023-2024 FREE WING,Y.Sakamoto
echo %0
timeout /T 10 /NOBREAK

dir .\quazip-6.9.0-1.4\include\QuaZip-Qt6-1.4\quazip
xcopy .\quazip-6.9.0-1.4\include\QuaZip-Qt6-1.4\quazip .\quazip-6.9.0-1.4\include\quazip\

dir .\quazip-%QT_VERSION%-1.4\bin
dir .\quazip-%QT_VERSION%-1.4\lib
xcopy .\quazip-%QT_VERSION%-1.4\bin .\quazip-%QT_VERSION%-1.4\build64\Release\
xcopy .\quazip-%QT_VERSION%-1.4\lib\*.lib .\quazip-%QT_VERSION%-1.4\build64\Release\
dir .\quazip-%QT_VERSION%-1.4\build64\Release\

rem https://github.com/fritzing/fritzing-app/commit/ba8ab8760d01dc0870299f8456940524f9b73a5c
xcopy /E .\quazip-%QT_VERSION%-1.4 .\quazip-%QT_VERSION%-1.4intuisphere\

exit /b 0

