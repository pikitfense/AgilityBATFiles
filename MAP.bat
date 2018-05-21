@echo off
rem Map Net Health VPN Drives for Altoona.
rem v0.3
rem 9/24/2015, 5/15/2015

ECHO Map Net Health VPN Drives for Altoona.
echo.

Echo I:
if exist I:\*.* goto Drive_I
net use I: \\192.168.0.140\users /persistent:no
:Drive_I

Echo N:
if exist N:\*.* goto Drive_N
net use N: "\\192.168.0.4\Agility Development" /persistent:no
:Drive_N

Echo X:
if exist X:\*.* goto Drive_X
net use x: "\\192.168.0.133\NetHealth" /persistent:no
:Drive_X

Echo M:
if exist M:\*.* goto Drive_M
net use M: "\\192.168.0.4\Agility Shared Apps" /persistent:no
:Drive_M
