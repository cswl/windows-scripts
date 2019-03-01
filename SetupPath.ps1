Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process

$bin_path = "F:\SavedData\Scoop\shims"
$dll_path = "C:\Apps\_Libraries"

$registryPath = "HKCU:Environment"
$old_path = (Get-ItemProperty -Path "$registryPath" -Name "Path").Path

echo "$old_path"

if( $old_path -notlike "*"+$bin_path+"*" ){ 
     New-ItemProperty -Path $registryPath -Name "Path" -Value "$old_path;;$bin_path" `
    -PropertyType ExpandString -Force | Out-Null
}

$new_path =  (Get-ItemProperty -Path "$registryPath" -Name "Path").Path

echo "$new_path"