if ($args.Length -gt 1) {
    $item = Get-Item $args[1]

    magick $item.FullName -crop $args[0] -gravity Center "$($item.DirectoryName)\$($item.BaseName)-cropped$($item.Extension)"
}
else {
    magick mogrify -crop $args[0] -gravity Center *.png
}