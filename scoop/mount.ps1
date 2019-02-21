
. ".\Mount-VHDFolder.ps1"
. ".\iniparser.ps1"

$config = Get-IniFile -filePath '.\config.ini'

$image =  $config.scoop.Image
$target = $config.scoop.Target
$part = $config.scoop.Partition

Mount-VHDToFolder -Image $image -MountFolder $target -PartitionNumber $part