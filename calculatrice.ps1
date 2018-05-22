##################################################
# TP: Calculatrice
##################################################

 #Réexecute le code
 Do { 

#Valeur / Gestion d'erreur
#-----------------------------------------------------------------------
try{
    [int]$valeur1 = Read-Host ("Veuillez sélectionner un nombre")
}catch{
    Write-Host("Valeur saisi incorrect")
}

#Type d'opération
$type = Read-Host("Quel type de calcul souhaitez-vous réaliser ?")

try{
    [int]$valeur2 = Read-Host ("Veuillez sélectionner un deuxième nombre")
}catch{
    Write-Host("Valeur saisi incorrect")
}

 #Calcul
 #-----------------------------------------------------------------------
 switch ( $type ){

 #Addition
 1{
 $result = $valeur1 + $valeur2
 Write-Host "Le résulat est le suivant: $result" -ForegroundColor Green
 }

 #Soustraction
 2{
 $result = $valeur1 - $valeur2
 Write-Host "Le résulat est le suivant: $result" -ForegroundColor Green
 }

 #Multiplication
 3{
 $result = $valeur1 * $valeur2
 Write-Host "Le résulat est le suivant: $result" -ForegroundColor Green
 }

 #Division
 4{
 $result = $valeur1 / $valeur2
 Write-Host "Le résulat est le suivant: $result" -ForegroundColor Green
  }

 }#FIN Switch

 $again = Read-Host ("Voulez-vous faire un autre calcul? True / False")

} while ($again -eq "True")



