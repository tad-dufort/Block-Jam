::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcDGROXmGIrAP4/z0/9alrkIeX6IVeYKb3L2CJfMvyEnrdp1t/HtX+A==
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NTZ4+WEqQ03Ve9/fobX36eyM+8G+EbhSYQoxXVPisgJHydRfR2lIAY3pg4=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZko0
::ZQ05rAF9IBncCkqN+0xwdVsFAlTi
::ZQ05rAF9IAHYFVzEqQISJBRXR0SoPWb6L7sP/On34++Vwg==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIEIB4URQqRKGq2CrAOqO70/aqTqkhdU+Myfc/51ruNK6A560iE
::dhA7uBVwLU+EWHuI+0E7aDFVQWQ=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEwEM0aD9BSguQKCv8RpYd+/vy+vnHg1kcWuMsd5naug==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NTZxaeOsUMcQO4zfZ2V36yLQA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
TITLE Initializing . . .
chcp 65001
mode 95,30
cls

net session >nul 2>&1
if %errorLevel% == 0 (
    goto installer
) else (
    goto Not_Admin
)
 
:Not_Admin
    TITLE Reopen The installer
    echo  [91m█▀▀ █▀█ █▀█ █▀█ █▀█[0m
    echo  [91m██▄ █▀▄ █▀▄ █▄█ █▀▄[0m
    echo.
    echo Please reopen this file as administartor.
    echo.
    echo [90mPress any key to exit . . .[0m
    PAUSE >nul
    exit
 
:installer
cls
TITLE Block Jam Setup Wizard . . .
echo             [91m██████╗ ██╗      █████╗  █████╗ ██╗  ██╗  [34m     ██╗ █████╗ ███╗   ███╗[0m
echo             [91m██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝  [34m     ██║██╔══██╗████╗ ████║[0m
echo             [91m██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝   [34m     ██║███████║██╔████╔██║[0m
echo             [91m██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗   [34m██╗  ██║██╔══██║██║╚██╔╝██║[0m
echo             [91m██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗  [34m╚█████╔╝██║  ██║██║ ╚═╝ ██║[0m
echo             [91m╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝  [34m ╚════╝ ╚═╝  ╚═╝╚═╝     ╚═╝[0m
echo                             █ █▄ █ █▀ ▀█▀ ▄▀█ █   █   █▀▀ █▀█
echo                             █ █ ▀█ ▄█  █  █▀█ █▄▄ █▄▄ ██▄ █▀▄
echo                                   (Made by Tad Dufort)
echo.
echo.
echo.
echo.
echo.
echo                                   [90mPress any key to start
echo                                           . . .[0m
PAUSE >nul
cls
echo [91m██████╗ ██╗      █████╗  █████╗ ██╗  ██╗  [34m     ██╗ █████╗ ███╗   ███╗[0m
echo [91m██╔══██╗██║     ██╔══██╗██╔══██╗██║ ██╔╝  [34m     ██║██╔══██╗████╗ ████║[0m
echo [91m██████╦╝██║     ██║  ██║██║  ╚═╝█████═╝   [34m     ██║███████║██╔████╔██║[0m
echo [91m██╔══██╗██║     ██║  ██║██║  ██╗██╔═██╗   [34m██╗  ██║██╔══██║██║╚██╔╝██║[0m
echo [91m██████╦╝███████╗╚█████╔╝╚█████╔╝██║ ╚██╗  [34m╚█████╔╝██║  ██║██║ ╚═╝ ██║[0m
echo [91m╚═════╝ ╚══════╝ ╚════╝  ╚════╝ ╚═╝  ╚═╝  [34m ╚════╝ ╚═╝  ╚═╝╚═╝     ╚═╝[0m
echo.
echo.
echo Welcome to the Block Jam installer!
echo Block Jam will now be installed in your program files folder
echo [90mPresss any key to start . . .[0m
PAUSE >nul
cls
xcopy /I /E "%~dp0\Block Jam" "%ProgramFiles%\Block Jam"
echo.
echo Done copying!
echo.
:choice
set /P c=Do you want to create a start menu folder [90m[Y/N][0m?  
if /I "%c%" EQU "Y" goto :startFolder
if /I "%c%" EQU "N" goto :choice2
goto :choice
:choice2
set /P c=Do you want to create a desktop shortcut [90m[Y/N][0m?  
if /I "%c%" EQU "Y" goto :desktopShortcut
if /I "%c%" EQU "N" goto :end
goto :choice2

:desktopShortcut
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\Block Jam.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%ProgramFiles%\Block Jam\main.exe" >> %SCRIPT%
echo oLink.WorkingDirectory = "%ProgramFiles%\Block Jam" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%
echo.
echo Desktop shortcut created
goto end

:startFolder
set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%AppData%\Microsoft\Windows\Start Menu\Programs\Block Jam.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%ProgramFiles%\Block Jam\main.exe" >> %SCRIPT%
echo oLink.WorkingDirectory = "%ProgramFiles%\Block Jam" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%
cscript /nologo %SCRIPT%
del %SCRIPT%
echo.
echo Start menu shortcut created
goto choice2

:end
echo.
echo.
echo Installation complete!
echo.
echo [90mPress any key to exit . . .[0m
PAUSE >nul




