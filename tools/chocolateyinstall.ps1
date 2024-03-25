$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileFullPath = Join-Path $toolsDir "$packageName.exe"

$url64      = 'https://github.com/daeho-ro/execs/releases/download/v0.1.6/execs_0.1.6_windows_amd64.exe'
$checksum64 = '9b6401b720803444afea75b9f07f8ad9e365fc54766a5c5d4c5fe4a0826140a9'
$checksumType64 = 'sha256'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileFullPath  = $fileFullPath
  url64bit      = $url64
  checksum64    = $checksum64
  checksumType64= $checksumType64
}

Get-ChocolateyWebFile @packageArgs
