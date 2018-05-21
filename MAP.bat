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

goto Drive_K
Echo K:
if exist K:\*.* goto Drive_K
net use K: "\\192.168.0.4\Agility Multimedia" /persistent:no
:Drive_K

Echo N:
if exist N:\*.* goto Drive_N
net use N: "\\192.168.0.4\Agility Development" /persistent:no
:Drive_N

Echo X:
if exist X:\*.* goto Drive_X
net use x: "\\192.168.0.133\NetHealth" /persistent:no
:Drive_X

goto Drive_H
Echo H:
if exist H:\*.* goto Drive_H
net use H: "\\192.168.0.4\Agility Client Licensing and Profiles" /persistent:no
:Drive_H

goto Drive_J
Echo J:
if exist J:\*.* goto Drive_J
net use J: "\\192.168.0.4\Agility Account Management" /persistent:no
:Drive_J


Echo M:
if exist M:\*.* goto Drive_M
net use M: "\\192.168.0.4\Agility Shared Apps" /persistent:no
:Drive_M

goto Drive_Q
Echo Q:
if exist Q:\*.* goto Drive_Q
net use Q: "\\192.168.0.4\Agility Training" /persistent:no
:Drive_Q

goto Drive_T
Echo T:
if exist T:\*.* goto Drive_T
net use T: "\\192.168.0.4\Agility Company Documents" /persistent:no
:Drive_T

goto Drive_P
Echo P:
if exist P:\*.* goto Drive_P
net use P: "\\192.168.0.4\Agility Support" /persistent:no
:Drive_P

goto end

Echo Y:
if exist Y:\*.* goto Drive_Y
net use Y: "\\192.168.1.219\Other Software" /persistent:no
:Drive_Y


:END
