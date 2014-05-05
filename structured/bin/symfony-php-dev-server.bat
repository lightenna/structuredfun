@echo off

REM change up to the parent (structured) directory
cd ..

REM capture the full path of current directory
set cwd=%CD%

REM setup php path
set PATH=%PATH%;%cwd%\vendor\php

REM change into app dir
cd htdocs

REM run php dev server on named port, enable debug settings for php (not in production php.ini)
php -S localhost:8097 -c ../conf/php.ini -d register_argc_argv=On app/console server:run

pause

