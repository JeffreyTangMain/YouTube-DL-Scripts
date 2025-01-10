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

SET downloadMP3Split=yt-dlp.exe -f bestaudio/best --audio-quality 0 --extract-audio --audio-format mp3 --fixup detect_or_warn --add-metadata --embed-thumbnail --split-chapters -i -o

IF NOT %ERRORLEVEL%==0 GOTO :justUpdate

:download
%downloadMP3Split% chapter:"%%(title)s.%%(section_title)s.%%(ext)s" -P "%downloadCommand%\" %url%
exit

:justUpdate
%update%
GOTO download