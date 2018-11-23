param([String[]] $Indexes, [String] $Drive)

$Dest=$Drive+":\install.wim"

foreach ($idx in $Indexes) {
 & dism /export-image /sourceimagefile:install.swm /swmfile:install*.swm /sourceindex:"$idx" /destinationimagefile:"$Dest" /Compress:max /CheckIntegrity
}