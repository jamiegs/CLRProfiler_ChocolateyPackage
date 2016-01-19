
$ErrorActionPreference = 'Stop';

$packageName= 'CLR Profiler'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://clrprofiler.codeplex.com/downloads/get/532810'
$checksum   = 'E024DFEEDFE19B5BC1198BA34E14B9A7'

Install-ChocolateyZipPackage 'clrprofiler' $url $toolsDir -checksum $checksum
