@echo off

REM change up to the parent (structured) directory
cd ..

REM capture the full path of current directory
set cwd=%CD%

REM setup path to include PHP and Symfony commands (inc phpunit)
set PATH=%PATH%;%cwd%\vendor\php;%cwd%\htdocs\bin

REM this does work
set PHPRC=%cwd%\conf
REM this does not work
REM set PHP_INI_PATH=%cwd%\conf

REM change into the website root folder
cd htdocs
start cmd.exe

