Write-Host -ForegroundColor Green “Starting Imaging Process for City of Greater Dandenong”

Start-Sleep -Seconds 5

#Make sure I have the latest OSD Content

Write-Host -ForegroundColor Green “Updating OSD PowerShell Module”

Install-Module OSD -Force

Write-Host -ForegroundColor Green “Importing OSD PowerShell Module”

Import-Module OSD -Force

#Start OSDCloud ZTI the RIGHT way

Write-Host -ForegroundColor Green “Start OSDCloud”

Start-OSDCloud -OSLanguage en-US -OSBuild 24H2 -OSEdition Enterprise -ZTI

#Restart from WinPE

Write-Host -ForegroundColor Green “Restarting in 20 seconds!”

Start-Sleep -Seconds 20

wpeutil reboot