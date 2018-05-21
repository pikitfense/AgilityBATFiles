@echo off
cls
@echo off
cls
echo Agility Source Code Control -- WhoHasWhat.bat v0.4
rem v0.4, 10/4/2016 Dynamic directories 
echo.
echo.

for /D %%f in (N:\Development\Agility10_Clarion10\Development\Checkout\*.) do call :haswhat %%f

goto done

:haswhat
echo %1
echo =================
dir %1\*.app /B
echo.
echo.

:done