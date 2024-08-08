@echo off
setlocal enabledelayedexpansion

REM Set the path to the GECV_EX_BLZ4.exe program
set "exe_path=\GECV_EX_BLZ4.exe"

REM Set the path to the directory containing BLZ2 files
set /p blz2_dir="Enter the path to the directory containing BLZ2 files: "

REM Create a folder named "deflated" if it doesn't exist
if not exist "%blz2_dir%\deflated" mkdir "%blz2_dir%\deflated"

REM Loop through each BLZ2 file in the directory
for %%f in ("%blz2_dir%\*.blz2") do (
    REM Extract the BLZ2 file using GECV_EX_BLZ4.exe
    "%exe_path%" unpack "%%~f" "!blz2_dir!\deflated\%%~nf.bin" blz2
)

echo Extraction completed.
pause
