@echo off
title System Control Script
color 1E

:main
cls
echo ===========================
echo     System Control Menu    
echo ===========================
echo.
echo [1] Shutdown
echo [2] Reboot
echo [3] Log out
echo [4] Cancel Shutdown
echo [5] Calculator (in sec)
echo ===========================
echo.

set /p "choice=Choose an option: "

if '%choice%'=='1' goto shutdown
if '%choice%'=='2' goto reboot
if '%choice%'=='3' goto logout
if '%choice%'=='4' goto cancel
if '%choice%'=='5' goto calculator
color 4F
echo Invalid option. Please enter a number between 1 and 5.
pause
goto main

:shutdown
color 2E
cls
echo ===========================
echo        Shutdown Setup      
echo ===========================
set /p "time=Shutdown time in seconds: "
echo Time until shutdown: %time% seconds
echo.
echo "Please save all open files!"
shutdown -s -f -t %time%
pause
goto main

:reboot
color 5E
cls
echo ===========================
echo        Reboot Setup        
echo ===========================
set /p "time=Reboot time in seconds: "
echo The computer will reboot in %time% seconds.
shutdown -r -t %time%
pause
goto main

:logout
color 3E
shutdown -l
goto main

:cancel
color 6E
shutdown -a
echo Shutdown cancelled.
pause
goto main

:calculator
cls
color 1F
echo ===========================
echo       Time Conversion      
echo ===========================
echo [1] Hours to seconds
echo [2] Minutes to seconds
echo ===========================
set /p "choice2=Choose an option: "
if '%choice2%'=='1' goto hours
if '%choice2%'=='2' goto minutes
goto main

:hours
color 3F
cls
echo Enter the number of hours:
set /p "hours=Hours: "
set /a seconds=%hours%*3600
echo %hours% hours are %seconds% seconds.
pause
goto main

:minutes
color 3F
cls
echo Enter the number of minutes:
set /p "minutes=Minutes: "
set /a seconds=%minutes%*60
echo %minutes% minutes are %seconds% seconds.
pause
goto main
