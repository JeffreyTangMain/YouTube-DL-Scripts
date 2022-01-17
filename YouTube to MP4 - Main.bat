echo off
set /p uname=URL: 
set desu=%~dp0
IF NOT %ERRORLEVEL%==0 GOTO :justUpdate
yt-dlp.exe -f bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best --audio-quality 0 --playlist-items 1-100 --fixup detect_or_warn --add-metadata --embed-thumbnail -i -o "%desu%\Downloaded MP3\%%(title)s.%%(ext)s" %uname%
:justUpdate
yt-dlp.exe -U