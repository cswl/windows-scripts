set drive=%1


reg load HKLM\OfflineSYSTEM %drive%\Windows\\system32\config\system
reg load HKLM\OfflineSAM %drive%\Windows\system32\config\sam
reg load HKLM\OfflineSECURITY %drive%\Windows\system32\config\security
reg load HKLM\OfflineSOFTWARE %drive%\Windows\system32\config\software
reg load HKLM\OfflineDEFAULT %drive%\Windows\system32\config\default

reg load HKLM\OfflineUserProfile %drive%\Windows\winnt\profiles\username