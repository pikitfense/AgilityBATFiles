@echo off

SET DT8=%date:~-4,4%-%date:~-10,2%-%date:~-7,2% %Time:~0,2%%Time:~3,2%

set XDrv=X:\Build\QA\AGILITY_1020\MSSQL
set QADrv="N:\Development\Agility10_Clarion10\QA Build 10.20\MSSQL\"
start explorer %QADrv%
echo.
echo Press any key to post DLL %1.DLL
echo.
pause

echo. 
echo Posting %1.DLL to QA volume: %QADrv%
copy "%XDrv%\%1.dll" %QADrv%

