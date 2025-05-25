# Commands to Install Terraform in Windows 

## 🖥️ Open PowerShell as Administrator
    Run PowerShell as Administrator
    Press Windows + X → select Windows PowerShell (Admin)

![Image](https://github.com/user-attachments/assets/36d2d227-c168-45ed-89d4-177b1e646e1b)

## 🍫 Install Chocolatey
    Set-ExecutionPolicy Bypass -Scope Process -Force; `
    [System.Net.ServicePointManager]::SecurityProtocol = `
    [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

![Image](https://github.com/user-attachments/assets/1a0ee57f-8160-462a-a5a6-b30926936ce7)

## 🔧 Install Terraform using Chocolatey
    choco install terraform -y

![Image](https://github.com/user-attachments/assets/f6548564-01c3-46f9-b641-5cfc85ae4c32)

## ✅ Verify Terraform Installation (in Git Bash or PowerShell)
    terraform -v

![Image](https://github.com/user-attachments/assets/37de168b-9ab6-4e82-8a32-f544d167b92c)

