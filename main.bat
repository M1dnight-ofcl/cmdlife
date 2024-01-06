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

:gameloop
    echo Year %YEAR%:
    set /p cmd=^> 
    set /a YEAR=YEAR+1
    @REM test code:
    @REM echo command: %cmd%
    @REM if "%cmd%"=="Test" goto :testcmd
    if "%cmd%"=="exit" goto :quit
    if "%cmd%"=="exit" goto :quit
    goto :gameloop

@REM :testcmd
@REM     echo ^:^>
@REM     goto :gameloop

:launch
    @cls
    echo Welcome to CMDLife!
    echo to run a command, type 'help'
    set /a YEAR=1
    goto :gameloop
    goto :quit

:quit
    echo Finished!
    echo Thanks for playing
    pause
    @cls
    goto :eof