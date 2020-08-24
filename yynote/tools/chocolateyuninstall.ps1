$ErrorActionPreference = 'Stop';
$shortcutsPath = [System.Environment]::GetFolderPath('Programs')
$installDir  = [System.Environment]::GetFolderPath('ProgramFilesX86')

Remove-Item -Path (Join-Path -Path $shortcutsPath -ChildPath 'YYNote.lnk') -ErrorAction SilentlyContinue
Remove-Item -Path (Join-Path -Path $installDir -ChildPath 'YYNote') -Recurse -Force -ErrorAction SilentlyContinue
