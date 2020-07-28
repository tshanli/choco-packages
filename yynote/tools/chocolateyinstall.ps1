$ErrorActionPreference = 'Stop';
$url = 'http://pic.6fcsj.com/YYNote.zip'
$sum = 'F16CE5286521A71542BFB87BBE8DC5B168BBF29A0E56F7C7EEFE38B76DA35EE8'
$shortcutsPath = [System.Environment]::GetFolderPath('Programs')

$packageName    = $env:ChocolateyPackageName
$unzipLocation  = $env:ChocolateyToolsLocation
$url            = $url
$checksum       = $sum
$checksumType   = 'sha256'

Install-ChocolateyZipPackage -packageName $packageName `
  -url $url `
  -unzipLocation $unzipLocation `
  -checksumType $checksumType `
  -checksum $checksum `

Install-ChocolateyShortcut -shortcutFilePath (Join-Path -Path $shortcutsPath -ChildPath 'YYNote.lnk') -targetPath (Join-Path -Path $env:ChocolateyToolsLocation -ChildPath 'YYNote\YYNote.exe')
