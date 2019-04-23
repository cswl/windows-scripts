
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.txt" /v "Application" /t REG_SZ /d "AutoHotkeyU64.exe" /f
REG ADD "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.txt\OpenWithList" /v "g" /t REG_SZ /d "AutoHotkeyU64.exe" /f

FTYPE AutohotkeyScriptv2=F:\Apps\AutoHotKeyv2\AutoHotkeyU64.exe  "%1"
ASSOC .ahk=AutohotkeyScriptv2