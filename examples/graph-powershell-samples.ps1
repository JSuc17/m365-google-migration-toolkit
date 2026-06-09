<#
.SYNOPSIS
Microsoft Graph PowerShell sample commands for Microsoft 365 user validation.

.DESCRIPTION
This script contains generic Microsoft Graph PowerShell examples useful for
Microsoft 365 administration, user provisioning validation, and migration support.

.NOTES
Author: Juan Sucre
Use case: Microsoft 365 / Google Workspace migration support
Security: Replace placeholder values before testing.
#>

# Install Microsoft Graph module if needed

# Install-Module Microsoft.Graph -Scope CurrentUser

# Connect to Microsoft Graph

Connect-MgGraph -Scopes "User.Read.All", "Directory.Read.All", "Organization.Read.All"

# Show current Graph context

Get-MgContext

# Get basic organization information

Get-MgOrganization | Select-Object DisplayName, Id

# List users

Get-MgUser -Top 10 | Select-Object DisplayName, UserPrincipalName, Id

# Get a specific user

$userPrincipalName = "[user@example.com](mailto:user@example.com)"

Get-MgUser -UserId $userPrincipalName | Select-Object `
DisplayName,
UserPrincipalName,
Mail,
AccountEnabled,
Id

# Check assigned licenses for a user

Get-MgUserLicenseDetail -UserId $userPrincipalName | Select-Object `
SkuPartNumber,
SkuId

# List user authentication methods

Get-MgUserAuthenticationMethod -UserId $userPrincipalName

# Check user group membership

Get-MgUserMemberOf -UserId $userPrincipalName

# Export basic users list to CSV

Get-MgUser -All | Select-Object `    DisplayName,
    UserPrincipalName,
    Mail,
    AccountEnabled`
| Export-Csv ".\m365-users-export.csv" -NoTypeInformation -Encoding UTF8

# Disconnect session

Disconnect-MgGraph
