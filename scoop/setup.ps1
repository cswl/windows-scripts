[environment]::setEnvironmentVariable('SCOOP','F:\SavedData\scoop','User')

iex (new-object net.webclient).downloadstring('https://get.scoop.sh')