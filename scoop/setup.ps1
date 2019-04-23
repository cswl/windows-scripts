# Set-ExecutionPolicy RemoteSigned -scope CurrentUser
# [environment]::setEnvironmentVariable('SCOOP','S:\scoop','User')
# iex (new-object net.webclient).downloadstring('https://get.scoop.sh')

# get core functions
$core_url = 'https://raw.githubusercontent.com/lukesampson/scoop/master/lib/core.ps1'
Write-Output 'Initializing...'
Invoke-Expression (new-object net.webclient).downloadstring($core_url)

ensure_scoop_in_path