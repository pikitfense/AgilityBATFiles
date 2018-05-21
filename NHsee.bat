@echo off
rem Author: 			Thomas Ross
rem Date:				10/19/2017
rem Version			2.0
rem Agility Compatable version:		... 10.18


cls
echo.
echo SCANNING: %1.app 
echo.
echo.

rem http://patorjk.com/software/taag/#p=testall&f=Bigfig&t=Compile%20Box%0A
rem Use SQL SSMS to edit Batch file for correct text placement.

echo "  _                     _    _____                 _                                  _   
echo " | |                   | |  |  __ \               | |                                | |  
echo " | |     ___   ___ __ _| |  | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
echo " | |    / _ \ / __/ _` | |  | |  | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
echo " | |___| (_) | (_| (_| | |  | |__| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
echo " |______\___/ \___\__,_|_|  |_____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
echo "                                                          | |                             
echo "                                                          |_|                             


dir /Q c:\share\source10\mssql\%1.app
echo.
echo.


echo "   ___ _               _               _   
echo "  / __\ |__   ___  ___| | _____  _   _| |_ 
echo " / /  | '_ \ / _ \/ __| |/ / _ \| | | | __|
echo "/ /___| | | |  __/ (__|   < (_) | |_| | |_ 
echo "\____/|_| |_|\___|\___|_|\_\___/ \__,_|\__|
echo.                                            

dir /Q n:\development\Agility10_Clarion10\Development\Checkout\Thomas\%1.app
echo.
echo.



echo "  _____                 _                                  _   
echo " |  __ \               | |                                | |  
echo " | |  | | _____   _____| | ___  _ __  _ __ ___   ___ _ __ | |_ 
echo " | |  | |/ _ \ \ / / _ \ |/ _ \| '_ \| '_ ` _ \ / _ \ '_ \| __|
echo " | |__| |  __/\ V /  __/ | (_) | |_) | | | | | |  __/ | | | |_ 
echo " |_____/ \___| \_/ \___|_|\___/| .__/|_| |_| |_|\___|_| |_|\__|
echo "                               | |                             
echo "                               |_|                             

dir /Q n:\development\Agility10_Clarion10\Development\%1.app
echo.
echo.


echo "   _____                      _ _        ____            
echo "  / ____|                    (_) |      |  _ \           
echo " | |     ___  _ __ ___  _ __  _| | ___  | |_) | _____  __
echo " | |    / _ \| '_ ` _ \| '_ \| | |/ _ \ |  _ < / _ \ \/ /
echo " | |___| (_) | | | | | | |_) | | |  __/ | |_) | (_) >  < 
echo "  \_____\___/|_| |_| |_| .__/|_|_|\___| |____/ \___/_/\_\
echo "                       | |                               
echo "                       |_|                               

dir /Q x:\build\QA\Agility_1020\mssql\%1.app
echo.
echo.

