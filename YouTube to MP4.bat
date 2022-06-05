echo off

set location=%~dp0
set downloadCommand="%location%\%%(title)s.%%(ext)s"

IF EXIST yt-dlp.exe (
    set downloadCommand="%location%\Downloaded Video\%%(title)s.%%(ext)s"
) ELSE (
    cd..
)

for /f "usebackq delims=" %%A in ("0_Variables.txt") do %%A
set /p url=URL: 

IF NOT %ERRORLEVEL%==0 GOTO :justUpdate

:download
%downloadMP4% %downloadCommand% %url%
exit

:justUpdate
%update%
GOTO download