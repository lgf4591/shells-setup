

# function Get-LatestGitHubReleaseVersion {
#     param(
#         [Parameter(Mandatory = $true)]
#         [string]$Owner,
#         [Parameter(Mandatory = $true)]
#         [string]$Repo
#     )

#     $apiUrl = "https://api.github.com/repos/$Owner/$Repo/releases/latest"
#     $response = Invoke-RestMethod -Uri $apiUrl
#     $latestVersion = $response.tag_name
#     return $latestVersion
# }

# $owner = "ryanoasis"
# $repo = "nerd-fonts"
# $latestVersion = Get-LatestGitHubReleaseVersion -Owner $owner -Repo $repo
# Write-Host "Latest release version of $repo is: $latestVersion"

# [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
# $fontFamilies = (New-Object System.Drawing.Text.InstalledFontCollection).Families
# $fontFamilies_map = [ordered]@{CascadiaCode="CaskaydiaCove NF"; Hack="Hack Nerd Font"}

# $fontName = "Hack"
# $fontFamilies -notcontains "$fontFamilies_map[$fontName]"

# $webClient = New-Object System.Net.WebClient
# $webClient.DownloadFile("https://github.com/$Owner/$Repo/releases/download/$latestVersion/$fontName.zip", ".\$fontName.zip")

# Expand-Archive -Path ".\$fontName.zip" -DestinationPath ".\$fontName" -Force
# $destination = (New-Object -ComObject Shell.Application).Namespace(0x14)
# Get-ChildItem -Path ".\$fontName" -Recurse -Filter "*.ttf" | ForEach-Object {
#     If (-not(Test-Path "$env:SystemRoot\Fonts\$($_.Name)")) {        
#         # Install font
#         $destination.CopyHere($_.FullName, 0x10)
#     }
# }


Write-Host "mkdir a,b"
# # mkdir a,b
# Pause


# function test_ping($iplist)
# {
#     foreach ($myip in $iplist)
#     {
#         $strQuery = "select * from win32_pingstatus where address = '$myip'"
#         # 利用 Get-WmiObject 送出 ping 的查詢
#         $wmi = Get-WmiObject -query $strQuery
#         if ($wmi.statuscode -eq 0) 
#         {
#             return "Pinging`t$myip...`tsuccessful"
#         }
#         else 
#         {
#             return "Pinging`t$myip...`tErrorCode:" + $wmi.statuscode
#         }
#     }
# }

# test_ping args[0]