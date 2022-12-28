
# import posh-git
Import-Module posh-git

# Enble file status[branchname + - ~] => [branchname]
$GitPromptSettings.EnableFileStatus = $True

# Set proxy for clash
$Env:http_proxy="http://127.0.0.1:7890"
$Env:https_proxy="http://127.0.0.1:7890"

# Show venv_name
if (Test-Path -Path Env:VIRTUAL_ENV)
{
    $path = "$Env:VIRTUAL_ENV\Scripts\activate.ps1"
    if (Test-Path -Path $path)
    {
        deactivate
        Invoke-Expression $path
    }
}