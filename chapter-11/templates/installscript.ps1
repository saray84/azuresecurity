param (
    $UserName  
)

Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

choco install sql-server-management-studio googlechrome setdefaultbrowser win-no-annoy -y

SetDefaultBrowser.exe HKLM "Google Chrome" 