$ErrorActionPreference = 'Stop';
$shortcutsPath = [System.Environment]::GetFolderPath('Programs')

Remove-Item -Path (Join-Path -Path $shortcutsPath -ChildPath 'YYNote.lnk') -ErrorAction SilentlyContinue
Remove-Item -Path (Join-Path -Path $env:ChocolateyToolsLocation -ChildPath 'YYNote') -Recurse -Force -ErrorAction SilentlyContinue
