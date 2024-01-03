@cls
@title CMDLife
@echo off
:: echo Staring!
echo WELCOME TO CMDLIFE
echo ^> 1 ^- play
echo ^> 2 ^- quit
choice /c 12 > NUL
if errorlevel 2 goto quit
if errorlevel 1 goto launch

set q_debugMode="false"
if %1=="-d" set q_debugMode="true"

:launch
    echo Launching Game...
    py -m src q_debugMode
    goto :quit

:quit
    echo Finished!
    echo Thanks for playing
    pause
    @cls
    goto :eof