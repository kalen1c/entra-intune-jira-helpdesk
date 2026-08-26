# 1. Authenticate to Microsoft 365
Connect-MgGraph -Scopes "User.ReadWrite.All"

# 2. Set default temporary password
$PasswordProfile = @{
    Password = "YOUR_TEMPORARY_PASSWORD"
    ForceChangePasswordNextSignIn = $true
}

# 3. Import CSV file
$users = Import-Csv -Path "YOUR_FILE_PATH"

# 4. Loop through the file and build the accounts in Entra
foreach ($user in $users) {
    New-MgUser -DisplayName $user.DisplayName `
               -MailNickname $user.MailNickname `
               -UserPrincipalName $user.UserPrincipalName `
               -Department $user.Department `
               -AccountEnabled:$true `
               -PasswordProfile $PasswordProfile
}

# 5. Verify the accounts were created successfully
Get-MgUser -All | Select-Object DisplayName, UserPrincipalName, Department
