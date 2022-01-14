::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcDGROXmGIrAP4/z0/9aErUkUWuUDWoPU2b/OCuEeqkPteZM+6lhWl8gHTDFZc3I=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFC5HSRa+GG6pDaET+NT44O6OrEohdu4we4Sb8LWDYOYa5kD3SYUiw2hZnfceCQhXawCoaxwIoG1NuCqMNMj8
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

::   Colour code symbol : 
::   STYLES:
::   0m = Reset
::   1m = Bold
::   4m = Underline
::   7m = Inverse
::   
::   NORMAL FOREGROUND COLORS:
::   30m = Black 
::   31m = Red
::   32m = Green
::   33m = Yellow
::   34m = Blue
::   35m = Magenta
::   36m = Cyan
::   37m = White
::   
::   NORMAL BACKGROUND COLORS:
::   40m = Black
::   41m = Red
::   42m = Green
::   43m = Yellow
::   44m = Blue
::   45m = Magenta
::   46m = Cyan
::   47m = White
::   
::   STRONG FOREGROUND COLORS:
::   90m = White
::   91m = Red
::   92m = Green
::   93m = Yellow
::   94m = Blue
::   95m = Magenta
::   96m = Cyan
::   97m = White
::   
::   STRONG BACKGROUND COLORS:
::   100m = Black
::   101m = Red
::   102m = Green
::   103m = Yellow
::   104m = Blue
::   105m = Magenta
::   106m = Cyan
::   107m = White

@echo off
:: setup (set size and UDF 8 text encoding)
TITLE Initializing . . .
chcp 65001
mode 95,30
cls

:: check for admin
net session >nul 2>&1
if %errorLevel% == 0 (
    goto installer
) else (
    goto Not_Admin
)
 
:: no admin error
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

:: main code
:installer
cls
:: title screen
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
:: welcome screen
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
:: copy files
xcopy /I /E "%~dp0\Block Jam" "%ProgramFiles%\Block Jam"
echo.
echo Done copying!
echo.
:: shortcut choices
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

:: VBScripts for shortcuts
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


::end
:end
echo.
echo.
echo Installation complete!
echo.
echo [90mPress any key to exit . . .[0m
PAUSE >nul




