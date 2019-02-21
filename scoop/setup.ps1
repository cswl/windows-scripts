# Set-ExecutionPolicy RemoteSigned -scope CurrentUser

[environment]::setEnvironmentVariable('SCOOP','F:\SavedData\scoop','User')

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')