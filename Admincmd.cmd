@echo off
mode con: cols=100 lines=50
title Administrator-concole

:menu
cls
echo ===============================
echo Administrator-concole
echo ===============================
echo 1. List Disks
echo 2. System Info
echo 3. Connect to Desktop
echo 4. Delete Desktop Connection
echo 5. Exit
echo ===============================
set /p "choice=Enter your choice (1/2/3/4/5): "

if "%choice%"=="1" (
    echo Listing Disks...
    echo.
    diskpart /s listdisk.txt
    pause
    goto menu
)

if "%choice%"=="2" (
    echo Displaying System Information...
    echo.
    systeminfo
    pause
    goto menu
)

if "%choice%"=="3" (
    echo Connecting to Desktop...
    rem Add your remote desktop connection command here
    pause
    goto menu
)

if "%choice%"=="4" (
    echo Deleting Desktop Connection...
    rem Add your desktop connection deletion command here
    pause
    goto menu
)

if "%choice%"=="5" (
    echo Goodbye!
    exit /b 0
)

echo Invalid choice. Please try again.
goto menu
