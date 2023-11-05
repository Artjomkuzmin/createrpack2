@echo off
title Console
echo Welcome to manager Concole

:menu
cls
echo ===============================
echo Manager Console 
echo ===============================
echo 1. Open Visual Studio Code
echo 2. Open Docker Desktop
echo 3. Exit
echo ===============================
set /p "choice=Enter your choice (1/2/3): "

if "%choice%"=="1" (
    start "Visual Studio Code" "C:\Path\To\Visual Studio Code\Code.exe"
    goto menu
)

if "%choice%"=="2" (
    start "Docker Desktop" "C:\Path\To\Docker Desktop\Docker Desktop.exe"
    goto menu
)

if "%choice%"=="3" (
    echo Goodbye!
    exit /b 0
)

echo Invalid choice. Please try again.
goto menu
