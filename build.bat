@echo off
cd /d "%~dp0"
java -Xms1g -Dfile.encoding=UTF-8 -Dapple.awt.UIElement=true -jar "c:\Users\Ahall\AppData\Roaming\Garmin\ConnectIQ\Sdks\connectiq-sdk-win-8.4.0-2025-12-03-5122605dc\bin\monkeybrains.jar" -o clicker/bin/clicker.prg -f clicker/monkey.jungle -y developer_key -d fr165m_sim -w
pause
