$files = Get-ChildItem "./" -Filter *.mp3

foreach ($item in $files) {
    <# $item is the current item #>

    $imageName = $item.FullName -replace ".mp3", ".png"

    $fileName = $item.FullName
    $fileNameOutput = $filename -replace ".mp3", "output.mp3"
    $simpleName = $item.Name

    ffmpeg -i $fileName -i $imageName -c copy -map 0 -map 1 "./Mapped/$($simpleName)"

}