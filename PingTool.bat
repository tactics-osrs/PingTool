@echo off
setlocal enabledelayedexpansion

:main
cls
echo Internet Test by Tactics.
echo.
set /p site=Enter the site to ping: 

if "%site%"=="" (
    echo Please enter a site to ping.
    pause
    goto main
)

echo Pinging %site%...
ping %site% -n 1 > nul
if errorlevel 1 (
    echo Internet is not working. There was no response from %site%.
    echo.
    echo Written by ...
    echo ".------..------..------..------..------..------..------."
    echo "|T.--. ||A.--. ||C.--. ||T.--. ||I.--. ||C.--. ||S.--. |"
    echo "| :/\: || (\/) || :/\: || :/\: || (\/) || :/\: || :/\: |"
    echo "| (__) || :\/: || :\/: || (__) || :\/: || :\/: || :\/: |"
    echo "| '--'T|| '--'A|| '--'C|| '--'T|| '--'I|| '--'C|| '--'S|"
    echo "`------'`------'`------'`------'`------'`------'`------'"
) else (
    for /f "tokens=1,2 delims== " %%a in ('ping %site% -n 4 ^| find "Average"') do set avgPing=%%b
    echo Internet is working. Average ping to %site% is: %avgPing%
    echo.
    echo Written by ...
    echo ".------..------..------..------..------..------..------."
    echo "|T.--. ||A.--. ||C.--. ||T.--. ||I.--. ||C.--. ||S.--. |"
    echo "| :/\: || (\/) || :/\: || :/\: || (\/) || :/\: || :/\: |"
    echo "| (__) || :\/: || :\/: || (__) || :\/: || :\/: || :\/: |"
    echo "| '--'T|| '--'A|| '--'C|| '--'T|| '--'I|| '--'C|| '--'S|"
    echo "`------'`------'`------'`------'`------'`------'`------'"
)

pause
goto main

:EOF
rem Written by Tactics
