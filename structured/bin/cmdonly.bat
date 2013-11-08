@echo off

REM change up to the parent (structured) directory
cd ..

REM capture the full path of current directory
set cwd=%CD%

REM setup php path
set PATH=%PATH%;%cwd%\vendor\php

start cmd.exe

