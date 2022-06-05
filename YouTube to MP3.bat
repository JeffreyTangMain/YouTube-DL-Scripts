echo off

set location=%~dp0
set downloadCommand=%location%

IF EXIST yt-dlp.exe (
    set downloadCommand=%location%\Downloaded Video
) ELSE (
    cd..
)

for /f "usebackq delims=" %%A in ("0_Variables.txt") do %%A
set /p url=URL: 

IF NOT %ERRORLEVEL%==0 GOTO :justUpdate

:download
%downloadMP3% "%downloadCommand%\%%(title)s.%%(ext)s" %url%
exit

:justUpdate
%update%
GOTO download