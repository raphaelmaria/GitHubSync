if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit}
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
Set-ExecutionPolicy RemoteSigned -Force

#Update do HELP
Write-Host "Fazendo Atualizacao do HELP do POWERSHELL" | Update-Help 2>> .\Log.txt

Invoke-WebRequest https://github.com/microsoft/winget-cli/releases/download/v1.1.12653/Microsoft.DesktopAppInstaller_8wekyb3d8bbwe.msixbundle -OutFile $Env:USERPROFILE\Downloads\Microsoft.DesktopAppInstaller.msixbundle
Add-AppxPackage $env:USERPROFILE\Downloads\Microsoft.DesktopAppInstaller.msixbundle


$RedeEXT = (Test-Connection 8.8.8.8 -Count 3 -Quiet)
if ($RedeEXT -eq "true"){
    Write-Host "Maquina conectada com a Internet" -ForegroundColor Green
    Write-Host "Efetuando Download do Conteudo Atualizado!"
                winget install AnyDeskSoftwareGmbH.AnyDesk -e --silent --accept-source-agreements --accept-package-agreements
                winget install BinaryMark.StreamingVideoDownloader -e --silent --accept-source-agreements --accept-package-agreements
                winget install RARLab.WinRAR -e --silent --accept-source-agreements --accept-package-agreements
                winget install Oracle.JavaRuntimeEnvironment -e --silent --accept-source-agreements --accept-package-agreements
                winget install VideoLAN.VLC -e --silent --accept-source-agreements --accept-package-agreements
                winget install Google.Chrome -e --silent --accept-source-agreements --accept-package-agreements
                winget install 7zip.7zip -e --silent --accept-source-agreements --accept-package-agreements
}else{
    Write-Host "Maquina sem acesso a internet!" -ForegroundColor Red
}

$DownloadOffice = 'https://mega.nz/file/JsIzlIaZ#y_73rzBceeD12ePfBxkLomWuZWVSSfAuVOSrsAIKBTQ'
$DownloadAtivador = 'https://mega.nz/file/484AVaLC#ccIQT0rY1ckw6-7i7s5kLgRakp-PPwKw9BDAK-Oo4sM'
Start-Process chrome.exe $DownloadOffice
Start-Process chrome.exe $DownloadAtivador


