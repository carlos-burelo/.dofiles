# Installing Oh My Posh


## Install PoweShell 7

> Microsoft Store (for download latest version)


```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://ohmyposh.dev/install.ps1'))
```


## Setup profile path

```powershell
# create config file in user path
mkdir ./config/pwsh
echo # PowerShell Config File >> profile.ps1


# Override profile default path

# using micro editor

micro $PROFILE.CurrentUserCurrentHost

# write the follow in the file

. $env:USERPROFILE\.config\pwsh\profile.ps1
```


> profile.sh

```powershell
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/material.omp.json" | Invoke-Expression

# Alias
Set-Alias g git
Set-Alias m micro
Set-Alias mk mkdir
```




