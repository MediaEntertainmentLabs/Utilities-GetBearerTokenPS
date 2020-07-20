## Get Bearer Tokens

To install the module for quick access, the module must be signed. This allows you to import the module in PowerShell with "RemoteSigned" execution set which is more secure than allowing unsigned modules to be executed.

### Installation

1. Put the Az.Token.psm1 module in your PowerShell modules directory ~/Documents/Powershell/Modules/Az.Token/Az.Token.psm1
2. Open PowerShell as an adminstrator
3. Run the command to create a New-Certificate in SignModule.ps1
4. Move the certificate in the "Manage Computer Certificates" store from LocalMachine\Personal to LocalMachine\Trusted
5. Get the Certificate object
6. Sign the Module in the Powershell Modules directory
7. Open a user PowerShell session and Import-Module

## Use

Get-AzCachedAccessToken: Retreieve the Access Token from current context

Get-AzBearerToken: Retrieve the Access Token formatted as a Bearer token

Get-AzAuthHeader: Retrieve the Access Token formatted as an Authorization header