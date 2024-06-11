<#
Scriptname:  
Author:  szymryb
Date:   11.06.24
Version:    1
Description:    Read Write üben 
#>


if(test-path C:\Modul122)
{
    cd C:\Modul122
    if(Test-Path ReadWrite.txt)
    {
        Clear-Host
        get-content -path "ReadWrite.txt"
        get-date >> ReadWrite.txt
        Get-NetAdapter | sort-object -property name >> ReadWrite.txt
    }
}

