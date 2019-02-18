@echo off

echo ### build.bat ###

set "buildDir=%~dp0\build"
if not exist %buildDir% mkdir %buildDir%

pushd %buildDir%

set "objDir=.\obj\"
set "files=..\src\main.c"
set "ofiles=.\obj\main.o"

set "CC=C:\MinGW\bin\gcc.exe"

set "compilerFlags=-std=c99 -Wall -Wextra -g -Dmain=SDL_main"
set "includeDirs=-I..\libs\SDL2\include -L..\libs\SDL2\lib"
set "linkerFlags=-mwindows"
set "linkerLibs=-lmingw32 -lSDL2main -lSDL2"
set "OUT=sss.exe"
echo %compilerFlags% %includeDirs% %linkerFlags% %files% %linkerLibs% -o %OUT%

%CC% %compilerFlags% %includeDirs% %linkerFlags% %files% %linkerLibs% -o %OUT%

popd %buildDir%

echo.
echo Completed build
