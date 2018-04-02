youtube-dl --verbose --ignore-errors \
--download-archive '$HOME/vice/archivedytidlist.txt' \
--retries infinite --fragment-retries infinite --buffer-size 16k \
--hls-prefer-ffmpeg -o '$HOME/vice/%(uploader)s/%(uploaddate)s%(title)s.%(ext)s' \
--no-continue --no-part --write-description --write-info-json \
--write-annotations --write-all-thumbnails --console-title --all-subs \
--external-downloader axel --external-downloader-args '-n 15' \
--prefer-ffmpeg https://www.youtube.com/user/vice/videos | tee --append '$HOME/vice/_youtubedl.logfile'