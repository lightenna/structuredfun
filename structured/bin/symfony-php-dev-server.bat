@echo off

REM change up to the parent (structured) directory
cd ..

REM capture the full path of current directory
set cwd=%CD%

REM setup php path
set PATH=%PATH%;%cwd%\vendor\php

REM change into app dir
cd htdocs

REM run php dev server on port 8000
php -c ../conf/php.ini app/console server:run

pause

