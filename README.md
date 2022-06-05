# YouTube-DL-Scripts

## Introduction 

The script will attempt to download MP4s as .mp4 if possible and will convert .mkv videos to .mp4 if .mp4 files aren't found. Lacking both, the script will just download the best remaining available video format. Audio files will be converted to MP3 using ffmpeg.

If an issue exists with the downloading process, it's likely on yt-dlp's end since this script is just a convenient way to run yt-dlp.

## Instructions 

If you want to download a playlist or video, run "YouTube to MP4.bat" or "YouTube to MP3.bat" and type in or paste in the URL. These scripts can be run from outside or inside the "Downloaded Video" folder.

Hit enter, let the script run.

The script will close on its own and the downloaded file will be in "Downloaded Video".

## Updating Information / Fixing the script 

If the download does not work the first time, "yt-dlp.exe" is most likely outdated. 
The script will update itself but you can also run "yt-dlp Update.bat" to update it manually.

If the update doesn't work, go to the following link and download "yt-dlp.exe" to replace the one in the original folder:
https://github.com/yt-dlp/yt-dlp/releases/latest