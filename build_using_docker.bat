@echo off
set SCRIPT_PATH=%~dp0
set ROOT_DIR=%SCRIPT_PATH:~0,-1%

set PWD=%ROOT_DIR:\=/%

docker run -it -v %PWD%:/opt/project -w /opt/project vcmd/android-builder gradle aR
