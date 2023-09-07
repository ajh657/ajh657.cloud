$files = Get-ChildItem "./images/" -Filter *.png

foreach ($item in $files) {
    <# $item is the current item #>

    magick $item.FullName `
    -page 0-340 -background none -flatten`
    -crop 1:1 -gravity Center`
    $item.Name

}