$startDir = "$env:USERPROFILE\Search Jisho"
$targetFile = "`"$startDir\run_search_jisho.bat`""
$shortcutFile = "$env:Public\Desktop\Search Jisho.lnk"
$WScriptShell = New-Object -ComObject WScript.Shell
$Shortcut = $WScriptShell.CreateShortcut($shortcutFile)
$Shortcut.TargetPath = $targetFile
$Shortcut.WorkingDirectory = $startDir
$Shortcut.IconLocation = "$startDir\AutoHotkey64.exe,0"
$Shortcut.Save()