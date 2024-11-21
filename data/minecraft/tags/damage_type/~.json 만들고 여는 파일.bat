@echo off
cls

:setup
color a
title loading..


:genstg
cls
title json creator
set /p filename=Filename : 
if "%filename%" EQU "" goto error
if EXIST "%filename%.json" goto error
echo generating..
if EXIST "C:\Program Files\Notepad++\notepad++.exe" echo #Do Stuff>%filename%.json&&"C:\Program Files\Notepad++\notepad++.exe" %filename%.json
if NOT EXIST "C:\Program Files\Notepad++\notepad++.exe" echo #Do Stuff>%filename%.json&&notepad %filename%.json

echo generated!
pause>nul
exit /b 1

:error
echo Invalid name or file already exists.
timeout 2 /NOBREAK>nul
goto genstg