echo off
cd..
set /p uname=URL: 
set desu=%~dp0
IF NOT %ERRORLEVEL%==0 GOTO :justUpdate
yt-dlp.exe -f bestaudio --playlist-items 1-100 --audio-quality 0 --extract-audio --audio-format mp3 --fixup detect_or_warn --add-metadata --embed-thumbnail -i -o "%desu%\%%(title)s.%%(ext)s" %uname%
:justUpdate
yt-dlp.exe -U