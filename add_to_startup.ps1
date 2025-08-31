$scriptDir = "$env:USERPROFILE\Search Jisho"
New-Item -ItemType Directory -Force -Path $scriptDir | Out-Null

Copy-Item -Path "$PSScriptRoot\*" -Destination $scriptDir -Recurse -Force

$execPath = "`"$scriptDir\AutoHotkey64.exe`" `"$scriptDir\search_jisho.ahk`""
$scriptName = "Search On Jisho HotKey"

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run" -Name $scriptName -Value $execPath

Write-Output "Installed. Can now Search on Jisho using `"Win + J`". Script will now run on Startup."
Write-Output "The script can be manually running (double click) the `"run_search_jisho.bat`" file."