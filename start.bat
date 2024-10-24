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

set /p "Wahl=Choose an option: "

if '%Wahl%'=='1' goto shutdown
if '%Wahl%'=='2' goto reboot
if '%Wahl%'=='3' goto logout
if '%Wahl%'=='4' goto cancel
if '%Wahl%'=='5' goto calculator
color 4F
echo Ungültige Wahl. Bitte eine Zahl zwischen 1 und 5 eingeben.
pause
goto main

:shutdown
color 2E
cls
echo ===========================
echo        Shutdown Setup      
echo ===========================
set /p "Time=Shutdown Zeit in Sekunden: "
echo Zeit bis zum Herunterfahren: %Time% Sekunden
echo.
echo "Bitte speichern Sie alle offenen Dateien!"
shutdown -s -f -t %Time%
pause
goto main

:reboot
color 5E
cls
echo ===========================
echo        Reboot Setup        
echo ===========================
set /p "Time=Reboot in Sekunden: "
echo Der Computer startet in %Time% Sekunden neu.
shutdown -r -t %Time%
pause
goto main

:logout
color 3E
shutdown -l
goto main

:cancel
color 6E
shutdown -a
echo Shutdown abgebrochen.
pause
goto main

:calculator
cls
color 1F
echo ===========================
echo    Zeit-Konvertierung      
echo ===========================
echo [1] Stunden in Sekunden
echo [2] Minuten in Sekunden
echo ===========================
set /p "wahl2=Choose an option: "
if '%wahl2%'=='1' goto stunden
if '%wahl2%'=='2' goto minuten
goto main

:stunden
color 3F
cls
echo Gib die Anzahl der Stunden ein:
set /p "stunden=Stunden: "
set /a sekunden=%stunden%*3600
echo %stunden% Stunden sind %sekunden% Sekunden.
pause
goto main

:minuten
color 3F
cls
echo Gib die Anzahl der Minuten ein:
set /p "minuten=Minuten: "
set /a sekunden=%minuten%*60
echo %minuten% Minuten sind %sekunden% Sekunden.
pause
goto main
