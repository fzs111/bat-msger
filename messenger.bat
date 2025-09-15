@echo off
chcp 65001 >nul
echo Feladó: %computername%
set /p "computer=Címzett: "
:a
set "msg="
set /p "msg=%computer%> "
if not "%msg%"=="" set msg="%computername%: %msg%"
msg /server:%computer% hallgato %msg%
goto a
