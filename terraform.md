## Commands to Install Terraform in Windows 

1. Go to Terminal :
    Run PowerShell as Administrator
    Press Windows + X → select Windows PowerShell (Admin)

2. Paste this Command to Install Chocolatey :
    Set-ExecutionPolicy Bypass -Scope Process -Force; `
    [System.Net.ServicePointManager]::SecurityProtocol = `
    [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
    iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

3. Install Terraform :
    choco install terraform -y

4. Verify in Git Bash :
    terraform -v
 