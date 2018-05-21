@echo off
if %1x==x goto errmsg
SET DT8=%date:~-4,4%%date:~-10,2%%date:~-7,2%
SET DT4=%date:~-10,2%%date:~-7,2%
SET drv=%CD:~0,2%
SET pth=%CD:~2,99%

echo @echo off >c:\share\batch\h%1.bat
echo %drv% >>c:\share\batch\h%1.bat
echo cd %pth% >>c:\share\batch\h%1.bat
goto done
:errmsg
echo Error
:done
