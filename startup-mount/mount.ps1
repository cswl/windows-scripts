
. "$PSScriptRoot\Mount-VHDFolder.ps1" 

Import-Csv "$PSScriptRoot\config.csv" |`
    ForEach-Object {
        $image = $_.Image
        $target = $_.Target
        $part = $_.Part
         Write-Output "Mounting  $image at $target "
            Mount-VHDToFolder -Image $image -MountFolder $target -PartitionNumber $part
    }


