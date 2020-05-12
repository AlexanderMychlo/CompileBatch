@ECHO OFF
SET "sourcedir=..."
SET "librarydir=..."
SET "includedir=..."

cd %sourcedir%

SETLOCAL EnableDelayedExpansion

SET CppList=
SET LibList=
SET IncludeList=

SET "space= "
SET "quote=""

SET "CommandLinker=-L"
SET "CommandLink=-l"
SET "CommandInclude=-I"

SET "extra=..."

FOR /f "delims=" %%v IN ('dir /a-d /b "%sourcedir%*.cpp"') DO (
SET CppList=!CppList!%space%%%v
)

FOR /f "tokens=*" %%a IN ('dir /ad /b "%librarydir%*"') DO (
SET LibList=!LibList!%space%%CommandLinker%%quote%!librarydir!%%a%extra%%quote%
)

FOR /f "tokens=*" %%b IN ('dir /ad /b "%includedir%*"') DO (
IF NOT [%%b] == [ucrt] (
SET IncludeList=!IncludeList!%space%%CommandInclude%%quote%!includedir!%%b%quote%
ECHO !IncludeList!
)
)

g++%CppList% -std=c++17 -mwindows %LibList% %IncludeList% -o ...
PAUSE
