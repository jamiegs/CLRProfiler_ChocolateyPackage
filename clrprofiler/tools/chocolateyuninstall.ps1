$ErrorActionPreference = 'Stop'; 

$packageName = 'clrprofiler'
$zipfile = "CLRProfiler45Binaries.zip"
Uninstall-ChocolateyZipPackage $packageName $zipfile

