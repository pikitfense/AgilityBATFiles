@echo off
cls
ECHO Altoona VPN connector and drive UN-mapper.
echo.
echo Do you want to disconnect WAN Drives?  (Ctrl-C to abort)
pause
c:
cd \share

net use H: /d
net use I: /d
net use J: /d
net use K: /d
net use M: /d
net use N: /d
net use P: /d
net use Q: /d
net use S: /d
net use T: /d
net use X: /d
net use Y: /d

:END

