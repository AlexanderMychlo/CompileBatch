@ECHO OFF

SET "sourcedir=..."
cd %sourcedir%

SETLOCAL EnableDelayedExpansion
SET list=
SET "space= "

FOR /f "delims=" %%v IN ('dir /b /a-d "%sourcedir%\*.cpp"') DO (
SET list=!list!%space%%%v
)

g++%list% -o ...
PAUSE
