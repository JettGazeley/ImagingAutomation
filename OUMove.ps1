<#
Author: Jett Gazeley
Date: July 19, 2021

This file is used to automatically move computers into the correct OU during 
the build process
#>

<#Import the Active Directory Module#>
Import-Module ActiveDirectory

<#Get the computer name#>
$ComputerName = hostname

<#Get the Identity OU#>
$IdentityOU = "CN=$ComputerName,OU=Corporate Workstations,OU=Head Office,OU=Empire Computer Accounts,DC=kgndcpr01,DC=empire,DC=corp"

<#Get Target OU#>
$TargetOU = "CN=$ComputerName,OU=Windows 10,OU=Corporate Laptops,OU=Head Office,OU=Empire Computer Accounts,DC=kgndcpr01,DC=empire,DC=corp"

<#Move the computer into new OU#>
Move-ADobject -Identity $IdentityOU -TargetPath $TargetOU