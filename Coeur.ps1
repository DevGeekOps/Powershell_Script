#Choisir un nombre

$val = 5
$coeur = 10
Write-Host "Vous disposez de 10 coeurs"

Do{

$valchoisi = Read-Host "Veuillez choisir un nombre: "

 if($valchoisi -eq $val) {Write-Host "Bravo, tu as mérité un biscuit" -ForegroundColor Green}

 if($valchoisi -lt $val)
 {
    Write-Host "Faux, petit indice: c'est plus grand" -ForegroundColor Yellow
    $coeur -= 1
    Write-Host ("Il reste $coeur coeurs....")
 }


 if($valchoisi -gt $val)
 {
    Write-Host "Faux, petit indice: c'est plus petit" -ForegroundColor Yellow
    $coeur -= 1
    $coeur
 }

 }while($valchoisi -eq $val)

