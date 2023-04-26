$Users = Import-Csv -Path "\\10.72.4.18\it\Servers\NT USERS REQUEST\BBY\BBY\Userlist-sn.csv"            
foreach ($User in $Users)            
{            
    $Displayname = $User.'Firstname' + " " + $User.'Lastname'            
    $UserFirstname = $User.'Firstname'            
    $UserLastname = $User.'Lastname'            
    $OU = $User.'OU'            
    $SAM = $User.'SAM' 
    $UPN = $User.'SAM' +  "@" + $User.'Maildomain'                    
    $Description = $User.'Description'            
    $Password = $User.'Password'
    $Department=$User.'Department'
    $OfficePhone=$User.'OfficePhone'
    New-ADUser -Name "$Displayname" -DisplayName "$Displayname" -SamAccountName $SAM  –UserPrincipalName $UPN  -GivenName "$UserFirstname" -Surname "$UserLastname" -AccountPassword (ConvertTo-SecureString $Password -AsPlainText -Force) -Enabled $true -Path "$OU" -ChangePasswordAtLogon $true –PasswordNeverExpires $false -server bogota.accedocolombia.net          
    Set-ADUser -Identity $SAM -Replace @{Description=$Description}
    Set-ADUser -Identity $SAM -Replace @{Department=$Department}
    Set-ADUser -Identity $SAM -Replace @{telephoneNumber=$OfficePhone}

}

