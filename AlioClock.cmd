@echo off
title AlioClock
color 0A
mode con: cols=45 lines=8
chcp 65001 >nul

:: НАСТРОЙКИ
set serv=time.apple.com
:: РЕКОМЕНДАЦИИ
set r1=time.windows.com
set r2=time.android.com
set r3=time.google.com
set r4=time.apple.com
echo AlioClock NEXT
echo (C) Copyright AlioClock Team
timeout /t 5 >nul
cls
:menu
echo 1. Recommendations
echo 2. Start
echo 3. Exit
set /p choice="Enter: (0-4) "
if "%choice%"=="1" goto r
if "%choice%"=="2" goto alio
if "%choice%"=="3" exit


:r
echo set serv=time.google.com
echo set serv=time.android.com
echo set serv=time.google.com
echo set serv=time.apple.com
echo CUSTOM:
echo %r1%
echo %r2%
echo %r3%
echo %r4%
pause
cls
goto menu


:alio
cls
echo =============================
w32tm /stripchart /computer:%serv% /dataonly /samples:1
echo (C) Copyright AlioClock Team
echo =============================
timeout /t 1 >nul
cls
goto alio