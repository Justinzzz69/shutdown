@echo off
color e
:main
cls
echo [1] shutdown
echo [2] abmelden
echo [3] abrechen
echo [4] rechner (in sec)

set /p "Wahl=choice: "
if '%Wahl%' =='1' goto 1
if '%Wahl%' =='3' goto 3
if '%Wahl%' =='2' goto 2
if '%Wahl%' =='4' goto 4
goto main

:1
set /p "Time=shutdown Zeit: "
echo Zeit bis zum Runterfahren: %Time% Sec
shutdown -s -f -t %Time% 
pause
goto main

:2
shutdown -l
goto main


:3
shutdown -a
echo Shutdown abgebrochen.
pause
goto main


:4
echo.
cls
echo umrechnen:
echo [1] Stunden
echo.
echo [2] Minuten
echo.
set /p "wahl2=choice: "
if '%wahl2%' =='1' goto stunde
if '%wahl2%' =='2' goto minute
goto main

:stunde
ECHO Zeit Angabe in Stunden.
SET /P Num1Add=
SET Num2Add=3600
ECHO.
SET /A Ans=%Num1Add%*%Num2Add%
ECHO %Num1Add% * %Num2Add% = %Ans% in Sekunden
pause
goto main

:minute
ECHO Zeit Angabe in Minuten.
SET /P Num4Add=
SET Num5Add=60
ECHO.
SET /A Ans=%Num4Add%*%Num5Add%
ECHO %Num4Add% * %Num5Add% = %Ans%  ist die Zahl in Sekunden
pause
goto main