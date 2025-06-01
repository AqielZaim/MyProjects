@echo off

SET variable_1=Undescore Services
set ip1=google.com
echo "Starting Undescore Services (Internet Checker)"
echo %variable_1%
@timeout 3
@ping -n 1 %ip1% | find "TTL"
if not errorlevel 1 set syntax1=Internet Connection Succesful
if errorlevel 1 set syntax1=No connection
echo Pinged "Google.com"
echo Result : %syntax1%
pause