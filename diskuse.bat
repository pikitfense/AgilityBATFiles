@ECHO OFF
:: Use local variables
IF "%OS%"=="Windows_NT" SETLOCAL

:: Check command line arguments and Windows version
ECHO.%1 | FIND "/" >NUL
IF NOT ERRORLEVEL 1 IF /I NOT "%~1"=="/L" GOTO Syntax
ECHO.%1 | FIND "?" >NUL
IF NOT ERRORLEVEL 1 GOTO Syntax
ECHO.%1 | FIND "*" >NUL
IF NOT ERRORLEVEL 1 GOTO Syntax
IF NOT "%OS%"=="Windows_NT" GOTO Syntax
IF NOT "%~1"=="" IF /I NOT "%~1"=="/L" IF NOT EXIST "%~1" GOTO Syntax
SET LongFormat=1
IF /I NOT "%~1"=="/L" IF /I NOT "%~2"=="/L" SET LongFormat=0

:: Go to start directory
SET StartDir=%CD%
IF NOT "%~1"=="" IF /I NOT "%~1"=="/L" SET StartDir=%~1
PUSHD "%StartDir%"
IF ERRORLEVEL 1 GOTO Syntax

:: Display header
ECHO Directory	Space used (MB)
ECHO.=========	===============

:: Display disk usage for start directory
IF NOT EXIST *.* GOTO SubDirs
FOR /F "tokens=3,4*" %%A IN ('DIR %1 /A-D /-C ^| FIND /I "File(s)"') DO SET ListDir=%%A
:: Different procedures depending on /L switch
IF "%LongFormat%"=="1" GOTO LongFormat
SET /A ListDir=%ListDir%+524288
SET /A ListDir=%ListDir%/1048576
ECHO..\	%ListDir%
SET ListDir=
GOTO SubDirs
:LongFormat
:: Strip last 6 digits from value
SET ListDir=%ListDir:~0,-6%
IF NOT DEFINED ListDir SET ListDir=0
:: Display resulting value in MB
ECHO..\	%ListDir%
:: Clear variable
SET ListDir=


:: Display disk usage for every subdirectory
:SubDirs
FOR /D %%A IN (*.*) DO CALL :List%LongFormat% "%%~A"

:: Done
POPD
GOTO End


:List0
:: Set variable value to bytes used by directory
FOR /F "tokens=3,4*" %%B IN ('DIR /A /-C /S "%~1" ^| FIND /I "File(s)"') DO SET ListDir=%%~B
:: Add 0.5MB in order to properly round the value when integer divided by 1MB
SET /A ListDir=%ListDir%+524288
:: Integer divide by 1MB
SET /A ListDir=%ListDir%/1048576
:: Display resulting value in MB
ECHO.%~1	%ListDir%
:: Clear variable
SET ListDir=
GOTO:EOF


:List1
:: Set variable value to bytes used by directory
FOR /F "tokens=3,4*" %%B IN ('DIR /A /-C /S "%~1" ^| FIND /I "File(s)"') DO SET ListDir=%%~B
:: Strip last 6 digits from value
SET ListDir=%ListDir:~0,-6%
IF NOT DEFINED ListDir SET ListDir=0
:: Display resulting value in MB
ECHO.%~1	%ListDir%
:: Clear variable
SET ListDir=
GOTO:EOF


:Syntax
ECHO.
ECHO DiskUse, Version 5.01 for Windows 2000 / XP
ECHO Display disk space used by subdirectories (tab delimited)
ECHO.
ECHO Usage:  DISKUSE  [ startdir ]  [ /L ]
ECHO.
ECHO Where:  "startdir"  is the directory containing subdirectories to be
ECHO                     inventoried (default is the current directory)
ECHO         "/L"        is used for large numbers, over 2GB, to prevent return
ECHO                     of negative numbers due to batch math limitations
ECHO                     (integer division by 1000000 instead of properly
ECHO                     rounded mathematical division by 1048576)
ECHO.
ECHO Written by Rob van der Woude
ECHO http://www.robvanderwoude.com

:End
IF "%OS%"=="Windows_NT" ENDLOCAL

pause
