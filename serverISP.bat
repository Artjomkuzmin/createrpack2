@echo off
title ServerISP

:menu
cls
echo ===============================
echo ServerISP
echo ===============================
echo 1. Server
echo 2. Main
echo 3. Keys
echo 4. Back
echo ===============================
set /p "choice=Enter your choice (1/2/3/4): "

if "%choice%"=="1" (
    call :server
)

if "%choice%"=="2" (
    call :main
)

if "%choice%"=="3" (
    call :keys
)

if "%choice%"=="4" (
    echo Goodbye!
    exit /b 0
)

echo Invalid choice. Please try again.
goto menu

:server
cls
echo Server Option
rem Add your server-related commands here
pause
goto menu

:main
cls
echo Main Option
rem Add your main-related commands here
pause
goto menu

:keys
cls
echo Keys Option
rem Add your keys-related commands here
pause
goto menu
