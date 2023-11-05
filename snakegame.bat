@echo off
title Snake Game
mode con: cols=40 lines=20

setlocal enabledelayedexpansion

rem Initialize game variables
set snake=##
set food=@@
set length=1
set speed=0.2

rem Set initial position
set xpos=10
set ypos=10

rem Generate initial food position
call :generateFood

:gameLoop
cls
echo Snake Game
echo --------------------------
for /l %%i in (1,1,20) do echo.

rem Draw the game board
set "board="
for /l %%i in (1,1,20) do (
    for /l %%j in (1,1,40) do (
        set "board=!board! "
    )
    set "board=!board!!newline!"
)

rem Draw the snake
set "board=!board:~0,%xpos%!!snake!!board:~%xpos%,9999!"
set "board=!board:~0,%ypos%!*40!%board:~%ypos%!*40!snake!!board:~%ypos%!*40!%board:~%ypos%,9999!"

rem Draw the food
set "board=!board:~0,%foodx%!*40!%board:~%foodx%!*40!%food!!board:~%foodx%!*40!%board:~%foodx%,9999!"

rem Display the game board
echo !board!

rem Move the snake
choice /t %speed% /n /c:wasd /m "Use W/A/S/D to move or Q to quit: "
if %errorlevel% equ 5 (
    exit
) else (
    set "move=!errorlevel!"
    call :moveSnake
    call :checkCollision
    if !collision! equ 1 (
        goto :gameOver
    )
    call :checkFood
    if !foodEaten! equ 1 (
        set /a length+=1
        call :generateFood
    )
    goto :gameLoop
)

:generateFood
set /a foodx=%random% %% 40
set /a foody=%random% %% 20
if !foodx! lss 1 set foodx=1
if !foody! lss 1 set foody=1
if !foodx! gtr 38 set foodx=38
if !foody! gtr 18 set foody=18
set food=!foodx!!foody!
goto :eof

:moveSnake
if !move! equ 1 (
    set /a ypos-=1
) else if !move! equ 2 (
    set /a ypos+=1
) else if !move! equ 3 (
    set /a xpos-=2
) else if !move! equ 4 (
    set /a xpos+=2
)
goto :eof

:checkCollision
set collision=0
if !xpos! lss 1 (
    set collision=1
)
if !xpos! gtr 38 (
    set collision=1
)
if !ypos! lss 1 (
    set collision=1
)
if !ypos! gtr 18 (
    set collision=1
)
goto :eof

:checkFood
set foodEaten=0
if !xpos!!ypos! equ !food! (
    set foodEaten=1
)
goto :eof

:gameOver
cls
echo Snake Game Over
echo --------------------------
echo Your Score: %length%
pause
exit
