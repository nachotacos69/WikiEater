@echo off
setlocal enabledelayedexpansion

set "app=GECV_EX_BLZ4.exe (put this script to the main GECV BLZ Tool)" 
set "input_folder=put the directory here where the extracted folder is"
set "output_folder=put your output folder here (make one first)"

for %%F in ("%input_folder%\*.blz2") do (
    set "input_file=%%~nxF"
    set "output_file=!input_file:~0,-5!_new.blz2"
    "%app%" unpack "%%F" "!output_folder!\!output_file!" blz2
)

echo All files processed.
pause
