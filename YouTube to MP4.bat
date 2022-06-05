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
%downloadMP4% "%downloadCommand%\%%(title)s.%%(ext)s" %url%

IF EXIST "%downloadCommand%\*.mkv" (
	for %%j in ("%downloadCommand%\*.mkv") do (
		ffmpeg.exe -i "%downloadCommand%\%%~nj.mkv" -codec copy "%downloadCommand%\%%~nj.mp4"
		del "%downloadCommand%\%%~nj.mkv"
	)
)

exit

:justUpdate
%update%
GOTO download