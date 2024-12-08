
@echo off
title 

color F

:::
:::         ___.         .__  .__.__         
:::  _____ \_ |__  __ __|  | |__|  | ___.__.
:::  \__  \ | __ \|  |  \  | |  |  |<   |  |
:::   / __ \| \_\ \  |  /  |_|  |  |_\___  |
:::  (____  /___  /____/|____/__|____/ ____|
:::       \/    \/                   \/     
:::      
:::                           
:::

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A

rem Set the subfolder where the R script is located
set RScriptFolder=src

rem Set the r-script (without .r extention)
set RScriptName=main

rem Set the base path of the R installation
set RScript64="%~dp0env\R-4.4.2\bin\x64\Rscript.exe"

rem Run the R script using RScript.exe
%RScript64% "%~dp0%RScriptFolder%\%RScriptName%.r" %~dp0%

REM pause