$files = Get-ChildItem "./"

foreach ($item in $files) {
    <# $item is the current item #>
    if ($item.Name -match '(?<=- ).*(?=, )') {
        <# Action to perform if the condition is true #>

        $filepath = $item.FullName

        echo $filepath

        $newfilename = $filepath -replace ',(?<=,).*(?= ｜)', ''

        echo "New filename replaced $($newfilename)"

        Copy-Item $filepath -Destination $newfilename

        echo "Copied $($filepath) to $($newfilename)"

        $oldfilenamefixed = $item.Name -replace '(?<=- ).*(?=, ), ', ''

        echo "oldfixedfilename $($oldfilenamefixed)"

        Rename-Item -Path $filepath -NewName $oldfilenamefixed
    }
}