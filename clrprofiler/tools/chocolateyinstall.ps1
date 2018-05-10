$ErrorActionPreference = 'Stop';

$packageName= 'CLR Profiler'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://github.com/MicrosoftArchive/clrprofiler/releases/download/fall_2012/CLRProfiler45Binaries.zip'
$checksum   = 'E024DFEEDFE19B5BC1198BA34E14B9A7'
$desktop    = $([System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::DesktopDirectory))

Install-ChocolateyZipPackage 'clrprofiler' $url $toolsDir -checksum $checksum
Install-ChocolateyShortcut -shortcutFilePath "$($desktop)\clrprofiler.lnk" -targetPath "$($toolsDir)\64\CLRProfiler.exe"