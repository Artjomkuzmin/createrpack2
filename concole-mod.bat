@echo off
title Console with Mod
echo Welcome to Manager Console Pre-Release 1.1

:menu
cls
echo ===============================
echo Manager Console Pre-Release 1.1
echo ===============================
echo 1. Open Visual Studio Code
echo 2. Open Docker Desktop
echo 3. Restart
echo 4. Shut Down
echo 5. Open Command Prompt
echo 6. Start Explorer
echo 7. Run 'mrt.exe'
echo 8. Echo 'Console-Mod'
echo 9. Exit
echo ===============================
set /p "choice=Enter your choice (1/2/3/4/5/6/7/8/9): "

if "%choice%"=="1" (
    start "Visual Studio Code" "C:\Path\To\Visual Studio Code\Code.exe"
    goto menu
)

if "%choice%"=="2" (
    start "Docker Desktop" "C:\Path\To\Docker Desktop\Docker Desktop.exe"
    goto menu
)

if "%choice%"=="3" (
    echo Restarting the computer...
    shutdown /r /t 5
    goto menu
)

if "%choice%"=="4" (
    echo Shutting down the computer...
    shutdown /s /t 5
    goto menu
)

if "%choice%"=="5" (
    start cmd
    goto menu
)

if "%choice%"=="6" (
    start explorer.exe
    goto menu
)

if "%choice%"=="7" (
    start "MRT.exe" "C:\Path\To\MRT.exe"
    goto menu
)

if "%choice%"=="8" (
    echo Console-Mod
    pause
    goto menu
)

if "%choice%"=="9" (
    echo Goodbye!
    exit /b 0
)

echo Invalid choice. Please try again.
goto menu
