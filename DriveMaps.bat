:SBS_SETUP
rem Default sbs2k3 client setup
rem \\192.168.0.4\Clients\Setup\setup.exe /s 192.168.0.4
PAUSE
:MAPDRIVES
rem Connect network drives

if exist H:\*.* net use H: /d
net use H: "\\192.168.0.4\Agility Client Licensing and Profiles" /persistent:no

if exist I:\*.* net use I: /d
net use I: \\192.168.0.140\users /persistent:no

if exist J:\*.* net use J: /d
net use J: "\\192.168.0.4\Agility Account Management" /persistent:no

if exist K:\*.* net use K: /d
net use K: "\\192.168.0.4\Agility Multimedia" /persistent:no

if exist M:\*.* net use M: /d
net use M: "\\192.168.0.4\Agility Shared Apps" /persistent:no

if exist Q:\*.* net use Q: /d
net use Q: "\\192.168.0.4\Agility Training" /persistent:no

if exist S:\*.* net use S: /d
net use S: "\\192.168.0.4\Agility Company Documents" /persistent:no

if exist N:\*.* net use N: /d
net use N: "\\192.168.0.4\Agility Development" /persistent:no

if exist P:\*.* net use P: /d
net use P: "\\192.168.0.4\Agility Support" /persistent:no


:END

