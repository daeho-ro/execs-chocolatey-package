$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileFullPath = Join-Path $toolsDir "$packageName.exe"

$url64      = 'https://github.com/daeho-ro/execs/releases/download/v0.1.7/execs_0.1.7_windows_amd64.exe'
$checksum64 = 'd46896c6a4696ecc37fb084d9229a169ad84192bdb1c554cc7ba781cb08ba784'
$checksumType64 = 'sha256'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = $fileFullPath
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= $checksumType64
}

Get-ChocolateyWebFile @packageArgs
