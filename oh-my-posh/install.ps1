
# oh-my-posh Install : https://ohmyposh.dev/docs/installation/windows
#
if (CommandIsExisted "oh-my-posh") {
    Write-Host "oh-my-posh has been installed!!!"
    winget upgrade JanDeDobbeleer.OhMyPosh -s winget
    # scoop update oh-my-posh
    # Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
} else {
    Write-Host "install oh-my-posh now!!!"
    winget install -e --accept-source-agreements --accept-package-agreements JanDeDobbeleer.OhMyPosh
    # winget install JanDeDobbeleer.OhMyPosh -s winget
    # scoop install https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/oh-my-posh.json
    # Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))

    # oh-my-posh init pwsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cobalt2.omp.json | Invoke-Expression
    # oh-my-posh init pwsh --config 'C:\Users\lgf\AppData\Local\Programs\oh-my-posh\themes\kushal.omp.json' | Invoke-Expression
    # oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\kushal.omp.json" | Invoke-Expression
    Invoke-RestMethod https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cobalt2.omp.json -OutFile "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\cobalt2.omp.json"
    Invoke-RestMethod https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/kushal.omp.json -OutFile "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\kushal.omp.json"
}


## Final Line to set prompt
# oh-my-posh init pwsh --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/cobalt2.omp.json | Invoke-Expression
# oh-my-posh init pwsh --config 'C:\Users\lgf\AppData\Local\Programs\oh-my-posh\themes\kushal.omp.json' | Invoke-Expression
# oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\cobalt2.omp.json" | Invoke-Expression
# oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\kushal.omp.json" | Invoke-Expression

Write-Output 'oh-my-posh init pwsh --config "$env:LOCALAPPDATA\Programs\oh-my-posh\themes\kushal.omp.json" | Invoke-Expression' >> $PROFILE


