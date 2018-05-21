@echo off

set XDrv=X:\Build\QA\AGILITY_1020
rem start explorer %XDrv%

echo.
echo Copy files to X %time%
rem MD "%XDrv%\UploadThomas" >NUL

echo.
echo Distribute files on X
copy "%XDrv%\UploadThomas\*.*" "%XDrv%"
copy "%XDrv%\UploadThomas\*.*" "%XDrv%\MSSQL"

pause
