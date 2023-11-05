@echo off
mode con cols=120 lines=30
title Concole

:menu
cls
echo ===============================
echo Concole
echo ===============================
echo 1. List Disks
echo 2. Save Logs
echo 3. Network Devices
echo 4. Shutdown
echo 5. Reboot
echo 6. Check OS Version
echo 7. Powered by PackCommand Studio
echo 8. Auto-Exit
echo ===============================
set /p "choice=Enter your choice (1/2/3/4/5/6/7/8): "

if "%choice%"=="1" (
    echo Listing Disks...
    diskpart /s listdisk.txt
    pause
    goto menu
)

if "%choice%"=="2" (
    echo Saving Logs...
    mkdir Logs
    echo This is a log entry. > Logs\log.txt
    echo Logs have been saved to the "Logs" folder.
    pause
    goto menu
)

if "%choice%"=="3" (
    echo Discovering Network Devices...
    ipconfig /all > network_devices.txt
    notepad network_devices.txt
    pause
    goto menu
)

if "%choice%"=="4" (
    echo Shutting down...
    shutdown /s /t 0
    exit /b 0
)

if "%choice%"=="5" (
    echo Rebooting...
    shutdown /r /t 0
    exit /b 0
)

if "%choice%"=="6" (
    echo Checking OS Version...
    ver | findstr /i "5.6" > nul && echo Version: Windows 11
    ver | findstr /i "5.5" > nul && echo Version: Windows 10
    ver | findstr /i "5.4" > nul && echo Version: Windows 8.1
    ver | findstr /i "5.3" > nul && echo Version: Windows 8
    ver | findstr /i "5.2" > nul && echo Version: Windows 7
    ver | findstr /i "5.1" > nul && echo Version: Windows XP
    ver | findstr /i "5.0" > nul && echo Version: Windows 2000
    ver | findstr /i "4.1" > nul && echo Version: Windows NT 4.0
    ver | findstr /i "4." > nul && echo Version: Windows 95/98/Me
    pause
    goto menu
)

if "%choice%"=="7" (
    echo Powered by PackCommand Studio
    pause
    goto menu
)

if "%choice%"=="8" (
    echo Auto-exiting in 3 seconds...
    timeout /t 3 /nobreak >nul
    exit /b 0
)

echo Invalid choice. Please try again.
goto menu
