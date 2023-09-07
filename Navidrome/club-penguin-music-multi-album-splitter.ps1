$files = Get-ChildItem "./"

foreach ($item in $files) {
    <# $item is the current item #>
    if ($item.Name -match "(?<=- ).*(?=, )") {
        <# Action to perform if the condition is true #>

        $newfilename = $item.Name -replace "(?<=- ).*(?= ｜)", $item.Name

        Copy-Item -Path "./" + $item.Name -Destination "./" + $newfilename

        $oldfilenamefixed = $item.Name -replace "(?<=- ).*(?=, ), ", ""

        Rename-Item -Path "./" + $item.Name -NewName "./" + $oldfilenamefixed
    }
}