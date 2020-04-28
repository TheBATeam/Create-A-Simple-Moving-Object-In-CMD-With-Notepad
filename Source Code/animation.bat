@echo off
setlocal enabledelayedexpansion
cls

mode 80,25
set "item=Û"
call :chk_window_size Lines Columns
REM Fixing Error ...
Set /a Lines=!Lines! - 3
Set /a Columns=!Columns! - 1


set R=1
Set C=1
set Sign1=+
set Sign2=+
set point=
:loopy
ping -n 1 127.0.0.1 >nul
::tree >nul
cls

REM Moving point y levels DOwn ...
for /l %%a in (0,1,!R!) do echo.

REM Moving point x spaces Side ...
set space=
for /l %%a in (0,1,!C!) do set "space=!space! "

REM Showing Point On Consol ...
echo.!space!!item!

set /a C=%c% %sign1% 1
set /a R=%R% %sign2% 1


if !c! equ !Columns! (set Sign1=-)
if !R! equ !Lines! (set Sign2=-)

if !c! leq 0 (set Sign1=+)
if !R! leq 0 (set Sign2=+)

goto loopy


:chk_window_size
mode con | find "%~1">"%temp%\%~1.tmp"
mode con | find "%~2">"%temp%\%~2.tmp"
set /p q=<"%temp%\%~1.tmp"
set /p w=<"%temp%\%~2.tmp"
set /a %~1=%q:~-6%
set /a %~2=%w:~-6%
goto :eof