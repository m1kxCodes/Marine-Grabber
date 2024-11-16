@echo off
title Marine Grabber Setup

echo Installing dependencies for the grabber...

call :install_dependency requests
call :install_dependency pyautogui
call :install_dependency pynput
call :install_dependency cryptography
call :install_dependency opencv-python
call :install_dependency selenium
call :install_dependency psutil
call :install_dependency pyinstaller
call :install_dependency win32api

echo Dependencies installed successfully!

pause
goto :eof

:install_dependency
pip show %1 >nul 2>&1
if %errorlevel%==0 (
    echo Already have %1
) else (
    pip install %1 >nul 2>&1
    echo Installed %1
)
goto :eof
