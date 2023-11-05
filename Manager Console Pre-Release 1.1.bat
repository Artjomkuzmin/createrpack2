@echo off
title Manager Console Pre-Release 1.1

:menu
cls
echo ===============================
echo Manager Console Pre-Release 1.1
echo ===============================
echo 1. Display System Info
echo 2. Run 'listdisk' Command
echo 3. Connect to Remote Desktop
echo 4. Admin Tools
echo 5. Starter Tools
echo 6. Start Program
echo 7. Exit
echo ===============================
set /p "choice=Enter your choice (1/2/3/4/5/6/7): "

if "%choice%"=="1" (
    cls
    echo IP Address:
    ipconfig | findstr IPv4
    echo Username: %USERNAME%
    echo CPU Mode: <Your CPU Mode>
    echo GPU Mode: <Your GPU Mode>
    echo RAM Temperature: <Temperature Value>
    pause
    goto menu
)

if "%choice%"=="2" (
    cls
    echo Running 'listdisk' command...
    echo.
    listdisk
    pause
    goto menu
)

if "%choice%"=="3" (
    cls
    set /p "ip=Enter the IP address of the computer to connect: "
    set /p "namecomputer=Enter the name of the computer to connect: "
    echo Connecting to %ip% (%namecomputer%)...
    rem Insert your remote desktop command here
    pause
    goto menu
)

if "%choice%"=="4" (
    call :admin_tools
    goto menu
)

if "%choice%"=="5" (
    call :starter_tools
    goto menu
)

if "%choice%"=="6" (
    start "Admin Visual Studio Code" "C:\Path\To\Visual Studio Code\Code.exe"
    goto menu
)

if "%choice%"=="7" (
    echo Goodbye!
    endlocal
    exit /b 0
)

echo Invalid choice. Please try again.
goto menu

:admin_tools
cls
echo ===============================
echo Admin Tools
echo ===============================
echo 1. File Tool
echo 2. Run Tool
echo 3. Key Tool
echo 4. Back
echo ===============================
set /p "admin_choice=Enter your choice (1/2/3/4): "

if "%admin_choice%"=="1" (
    echo You selected File Tool.
    rem Add your file tool functionality here
    pause
    goto admin_tools
)

if "%admin_choice%"=="2" (
    echo You selected Run Tool.
    rem Add your run tool functionality here
    pause
    goto admin_tools
)

if "%admin_choice%"=="3" (
    echo You selected Key Tool.
    rem Add your key tool functionality here
    pause
    goto admin_tools
)

if "%admin_choice%"=="4" (
    goto :eof
)

echo Invalid choice. Please try again.
goto admin_tools

:starter_tools
cls
echo ===============================
echo Starter Tools
echo ===============================
echo 1. Tool 1 (File)
echo 2. Tool 2 (Run)
echo 3. Tool 3 (Key)
echo 4. Back
echo ===============================
set /p "starter_choice=Enter your choice (1/2/3/4): "

if "%starter_choice%"=="1" (
    echo You selected Tool 1 (File).
    rem Add your Tool 1 functionality here
    pause
    goto starter_tools
)

if "%starter_choice%"=="2" (
    echo You selected Tool 2 (Run).
    rem Add your Tool 2 functionality here
    pause
    goto starter_tools
)

if "%starter_choice%"=="3" (
    echo You selected Tool 3 (Key).
    rem Add your Tool 3 functionality here
    pause
    goto starter_tools
)

if "%starter_choice%"=="4" (
    goto :eof
)

echo Invalid choice. Please try again.
goto starter_tools
