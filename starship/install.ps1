
# starship Install : https://starship.rs/zh-cn/guide/
#
if (CommandIsExisted "starship") {
    Write-Host "oh-my-posh has been installed!!!"
    winget upgrade Starship.Starship -s winget
    # scoop update oh-my-posh
    # Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
} else {
    # cargo install starship --locked
    # choco install starship
    # conda install -c conda-forge starship
    # scoop install starship
    winget install --id Starship.Starship
}
Invoke-RestMethod https://github.com/lgf4591/shells-setup/raw/main/starship/starship.toml -o "$HOME\.starship.toml"


# $ENV:STARSHIP_CONFIG = "$HOME\.config\starship.toml"
Write-Output ' ' >> $PROFILE
Write-Output ' ' >> $PROFILE
Write-Output '$ENV:STARSHIP_CONFIG = "$HOME\.starship.toml"' >> $PROFILE
Write-Output 'Invoke-Expression (&starship init powershell)' >> $PROFILE