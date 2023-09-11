<#
Date: 8/7/2023
Title: ADUsers.ps1
Description: This script is designed to show a list of names and number of Domain Admins and Domain Users.
Created By: Briannah McDaniel
            Cybersecurity Intern
#>


Write-Output "`n------------------------------"
Write-Output "List of Domain Admins:"     #prints "List of Domain Admins: "
Get-ADGroupMember 'domain admins' | Where-Object -Property name -ne 'krbtgt' | select name     #Gets the names of Users that are Domain Admins
#$NumDA is a variable used to store the number of Domain Admins      
$NumDA=(Get-ADGroupMember 'domain admins' | Where-Object -Property name -ne 'krbtgt' | select name).count     #Counts how many users are Domain Admins
write-output "`nNumber of Domain Admins: $NumDA"     #Prints out the number of Domain Admins
Write-Output "------------------------------`n"

Write-Output "`n------------------------------"
Write-Output "List of Domain Users:`n"     #prints "List of Domain Users: "
Write-Output "name"     #prints "name"
Write-Output "----"     #prints "----"
Get-ADGroupMember 'domain users' | Where-Object -Property name -ne 'krbtgt' | select name     #Gets the names of Users that are Domain Users
#NumDU is a variable used to store the number of Domain Users
$NumDU=(Get-ADGroupMember 'domain users' | Where-Object -Property name -ne 'krbtgt' | select name).count     #Counts how many users are Domain Users
write-output "`nNumber of Domain Users: $NumDU"     #Prints out the number of Domain admins
Write-Output "------------------------------"
