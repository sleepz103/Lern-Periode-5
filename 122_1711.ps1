<#   
Scriptname: Menu für 3 CMD-LEts
Author: szymryb
Date: 11/06/24
Version: 1
Description: Aufgabe 1711 M122 
#>


$userGetChoice
$userContinueChoice
$continueGate

do{

Clear-Host

$userGetChoice = read-host -prompt "Bitte waehlen Sie eine Option"

switch ($userGetChoice)
{
    1 {get-process}
    2 {get-service}
    3 {get-netadapter}
    4 {break;}
}

if ($userGetChoice -eq 4)
{
    break;
}
else
{
    $userContinueChoice = read-host -prompt "Wollen Sie noch einmal waehlen oder abbrechen?"
    switch($userContinueChoice)
    {
        {($_ -eq "a") -or ($_ -eq "A")} {$continueGate = $false}
        "w" {$continueGate = $true}
    }
}

}while($continueGate -eq $true)

exit