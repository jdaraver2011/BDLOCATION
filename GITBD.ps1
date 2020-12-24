$HOST.UI.RawUI.ForegroundColor = "Green"
Write-Host "------------------------------"
Write-Host "| Client ID List Bitdefender |"
Write-Host "------------------------------"										
Write-Host "|ProT 1   MBA  16   WVG    31|"
Write-Host "|HM   2   MD   17   DUC    32|"
Write-Host "|A&G  3   NHS  18   SRMSDC 33|"
Write-Host "|B&G  4   NOBA 19   RM     34|"
Write-Host "|B&T  5   NSP  20   WSBR   35|"
Write-Host "|CUEE 6   OIPM 21   MSE    36|"
Write-Host "|CCNO 7   OPSO 22   NSHS   37|"
Write-Host "|DDD  8   RLC  23   CCI    38|"
Write-Host "|FANO 9   RDI  24   TWFG   39|"
Write-Host "|FOLA 10  SC   25   RMS    40|"
Write-Host "|FABC 11  SBCPA26            |"		
Write-Host "|GSLE 12  SHA  27            |"		
Write-Host "|HOF  13  TOM  28            |"		
Write-Host "|IAP  14  UH   29            |"		
Write-Host "|JAGNO15  VPG  30            |"
Write-Host "------------------------------"
Write-Host "-----------------------------------"
Write-Host "|Location Installer Bitdefender***|"
Write-Host "-----------------------------------"
Write-Host 
if (Test-Path "C:\Program Files (x86)") {
    $locationId = Read-Host -prompt 'Location to install?'
	Remove-Item C:\IT_Support\Bitdefender
	mkdir C:\IT_Support\Bitdefender
	wget -v  "https://proteksolutionsus.sharepoint.com/:u:/s/FileHosting/EciRNEIedPFNkKhPA5rvKDIBsL3EcUCrQib9clH0Q-NpWg?e=YjLcWO&download=1" -outfile C:\IT_Support\Bitdefender\EPSKIT_x64.exe
	wget -v  "https://raw.githubusercontent.com/jdaraver2011/BitdefenderHosting/main/BITDEFENDER/$locationid/64/installer.xml" -outfile C:\IT_Support\Bitdefender\installer.xml
	Start-Process -FilePath "C:\Windows\ltsvc\packages\bitdefender\EPSKIT~1.exe"
	exit
} else {
    $locationId = Read-Host -prompt 'Location to install?'
	Remove-Item C:\IT_Support\Bitdefender
	mkdir C:\IT_Support\Bitdefender
	wget -v  "https://proteksolutionsus.sharepoint.com/:u:/s/FileHosting/Ec9-_Tqml71LkhkFKb6soMQBcLN0jjktsKpEIcBOus-Apg?e=kwK4Yn&download=1" -outfile C:\IT_Support\Bitdefender\EPSKIT_x86.exe
	wget -v  "https://raw.githubusercontent.com/jdaraver2011/BitdefenderHosting/main/BITDEFENDER/$locationid/32/installer.xml" -outfile C:\IT_Support\Bitdefender\installer.xml
	Start-Process -FilePath "C:\Windows\ltsvc\packages\bitdefender\EPSKIT~1.exe"
	exit
}
