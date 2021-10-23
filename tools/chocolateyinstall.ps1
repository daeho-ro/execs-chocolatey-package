$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileFullPath = Join-Path $toolsDir "$packageName.exe"

$url64      = 'https://github.com/daeho-ro/execs/releases/download/v0.1.4/execs_0.1.4_windows_amd64.exe'
$checksum64 = '267d368963031de0ba262a7213ee336c003d4663d608ebe4bd1e9e683708d1f9'
$checksumType64 = 'sha256'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = $fileFullPath
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= $checksumType64
}

Get-ChocolateyWebFile @packageArgs
