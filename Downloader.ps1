$rufusUrl = "https://github.com/pbatard/rufus/releases/download/v3.18/rufus-3.18p.exe"
$anydeskUrl = "https://download.anydesk.com/AnyDesk.exe"
$mediaCreationToolUrl = "https://go.microsoft.com/fwlink/?LinkId=691209"
$sophiUrl = "https://github.com/Sophia-Community/SophiApp/releases/download/1.0.0.62/SophiApp.zip"
$appInstallerUrl = "ms-windows-store://pdp/?ProductId=9NBLGGH4NNS1"
$hwinfoUrl = "https://www.sac.sk/download/utildiag/hwi_724.zip"

wget $rufusUrl -OutFile "$PSScriptRoot\Rufus.exe"
wget $mediaCreationToolUrl -OutFile "$PSScriptRoot\MediaCreationTool.exe"

wget "https://www.sac.sk/download/utildiag/hwi_724.zip" -OutFile "$PSScriptRoot\hwinfo.zip"
Expand-Archive "$PSScriptRoot\hwinfo.zip" -DestinationPath "$PSScriptRoot\"
if ([System.Environment]::Is64BitOperatingSystem) {
    Remove-Item "$PSScriptRoot\HWiNFO32.exe"
} else {
    Remove-Item "$PSScriptRoot\HWiNFO64.exe"
}
Remove-Item "$PSScriptRoot\hwinfo.zip"

New-Item -Path "$PSScriptRoot\Drivers & Software" -ItemType Directory
wget $anydeskUrl -OutFile "$PSScriptRoot\Drivers & Software\AnyDesk.exe"
wget $sophiUrl -OutFile "$PSScriptRoot\Drivers & Software\sophi.zip"
Expand-Archive "$PSScriptRoot\Drivers & Software\sophi.zip" -DestinationPath "$PSScriptRoot\Drivers & Software\"
Remove-Item "$PSScriptRoot\Drivers & Software\sophi.zip"

$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$PSScriptRoot\Drivers & Software\App Installer.lnk")
$Shortcut.TargetPath = $appInstallerUrl
$Shortcut.Save()

Remove-Item $PSCommandPath -Force