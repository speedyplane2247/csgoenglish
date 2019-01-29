@echo off
title Custom CS:GO Language Updater
cls
if %1=help goto :help
if %1=customcsgopath goto :customcsgopath
:main
echo Path to File:
set /p csgofile=Path:
echo Name of language
set /p language=Name:
copy %csgofile% "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\templang.xlf"
cd "C:\Program Files (x86)\Steam\steamapps\common\Counter-Strike Global Offensive\csgo\resource\"
copy templang.xlf csgo_%language%.txt
echo Completed.
goto :exit
:exit
exit
:help
echo "help  |  loads this command"
echo "customcsgopath  |  use a custom csgo path"
goto :exit
:customcsgopath
echo Path to File:
set /p csgofile=Path:
echo Name of language
set /p language=Name:
echo CS:GO path
set /p csgopath=Path:
copy %csgofile% %csgopath%\templang.xlf
cd %csgopath%
copy templang.xlf csgo_%language%.txt
echo Completed.
goto :exit
