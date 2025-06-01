@echo off
echo Would you like to reset explorer.exe (Y/N)
echo Note : You have to type in a capital Y to complete
set /p Option=
if not %Option%==Y goto attempt

:idk
if %Option%==Y goto Restart

:attempt
if not %Option%==y goto Cancel

:Cancel
echo Cancelling...
@timeout 3
pause
exit
)

:Restart
taskkill /f /im explorer.exe
timeout 3
cd C:\Windows
start explorer.exe
echo Launching File Explorer
timeout 2
start explorer.exe
)