# Commands to Install Terraform in Windows 

## 🖥️ Open PowerShell as Administrator
    Run PowerShell as Administrator
    Press Windows + X → select Windows PowerShell (Admin)


## 🍫 Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; `
    [System.Net.ServicePointManager]::SecurityProtocol = `
    [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

## 🔧 Install Terraform using Chocolatey
    choco install terraform -y

## ✅ Verify Terraform Installation (in Git Bash or PowerShell)
    terraform -v
