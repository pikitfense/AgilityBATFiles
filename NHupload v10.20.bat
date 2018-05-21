@echo off

SET DT8=%date:~-4,4%-%date:~-10,2%-%date:~-7,2% %Time:~0,2%%Time:~3,2%

set XDrv=X:\Build\QA\AGILITY_1020
set NDrv="N:\Development\Agility10_Clarion10\Development\Checkout\Thomas\After Changes\%dt8% %1\"

echo Create Directory %dt8% %time%
md %NDrv%

start explorer %XDrv%
start explorer %NDrv%
pause

cls


echo.
echo Copy files to N %time%
copy "C:\Share\Source10\MSSQL\%1.app"    %NDrv%
copy "C:\Share\Source10\MSSQL\%1.cwproj" %NDrv%

echo.
echo Copy files to X %time%
MD "%XDrv%\UploadThomas" >NUL
copy "C:\Share\Source10\MSSQL\%1.app"    "%XDrv%\UploadThomas"
copy "C:\Share\Source10\MSSQL\%1.cwproj" "%XDrv%\UploadThomas"
:x_drive

pause
