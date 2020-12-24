$HOST.UI.RawUI.ForegroundColor = "Green"
Write-Host "-----------------------------------"
Write-Host "|Location Installer Bitdefender***|"
Write-Host "-----------------------------------"
Write-Host 
if (Test-Path "C:\Program Files (x86)") {
    $locationId = Read-Host -prompt 'Location to install?'
	Remove-Item C:\IT_Support\Bitdefender
	mkdir C:\IT_Support\Bitdefender
	wget -v  "https://proteksolutionsus.sharepoint.com/:u:/s/FileHosting/EciRNEIedPFNkKhPA5rvKDIBsL3EcUCrQib9clH0Q-NpWg?e=YjLcWO&download=1" -outfile C:\IT_Support\Bitdefender\EPSKIT_x64.exe
	wget -v  "https://raw.githubusercontent.com/jdaraver2011/BitdefenderHosting/main/BITDEFENDER/%locationId%/64/installer.xml" -outfile C:\IT_Support\Bitdefender\installer.xml
	Start-Process -FilePath "C:\Windows\ltsvc\packages\bitdefender\EPSKIT~1.exe"
	exit
} else {
    $locationId = Read-Host -prompt 'Location to install?
	Remove-Item C:\IT_Support\Bitdefender
	mkdir C:\IT_Support\Bitdefender
	wget -v  "https://proteksolutionsus.sharepoint.com/:u:/s/FileHosting/Ec9-_Tqml71LkhkFKb6soMQBcLN0jjktsKpEIcBOus-Apg?e=kwK4Yn&download=1" -outfile C:\IT_Support\Bitdefender\EPSKIT_x86.exe
	wget -v  "https://raw.githubusercontent.com/jdaraver2011/BitdefenderHosting/main/BITDEFENDER/%locationId%/32/installer.xml" -outfile C:\IT_Support\Bitdefender\installer.xml
	Start-Process -FilePath "C:\Windows\ltsvc\packages\bitdefender\EPSKIT~1.exe"
	exit
}
