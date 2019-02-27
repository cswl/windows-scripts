
. ".\Mount-VHDFolder.ps1" 

Import-Csv '.\config.csv' |`
    ForEach-Object {
        $image = $_.Image
        $target = $_.Target
        $part = $_.Part
         Write-Output "Mounting  $image at $target "
        IF (Test-Path $target) {
            # Make the new folder
            mkdir -Force $target  | Out-Null
            Mount-VHDToFolder -Image $image -MountFolder $target -PartitionNumber $part
        }
        Else {
            Mount-VHDToFolder -Image $image -MountFolder $target -PartitionNumber $part
         }
       
    }


