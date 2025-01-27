$folder = Split-Path -Path $pwd -Leaf

New-Item -ItemType Directory raw
Set-Location ./raw/

$downloadArchive = $folder + '-downloaded.txt'

yt-dlp.exe --write-thumbnail --audio-format mp3 --download-archive $downloadArchive -o "%(title)s.%(ext)s" -i -f 251 $args[0]