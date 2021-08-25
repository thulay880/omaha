﻿Write-Host "Installing PSTools ..." -ForegroundColor Cyan

Write-Host "Downloading..."
$zipPath = "$env:temp\pstools.zip"
(New-Object Net.WebClient).DownloadFile('https://download.sysinternals.com/files/PSTools.zip', $zipPath)

Write-Host "Unzip ..."
Expand-Archive -LiteralPath $zipPath -DestinationPath "c:\pstools"

Remove-Item $zipPath
Write-Host "Installed" -ForegroundColor Green