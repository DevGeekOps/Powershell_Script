function PierreFeuilleCiseau {

   [int]$Ascore = 0
   [int]$Bscore = 0

 Do{

#Rules
#--------------------
echo "[1] -- Pierre"
echo "[2] -- Feuille"
echo "[3] -- Ciseau"
echo ""

$mareponse = Read-Host “Votre réponse: ”
$sareponse = Get-Random "1","2","3"

 
#CAS: IA choisi PIERRE
#----------------------------------------------------------------------------

      if($sareponse -eq 1 -and $mareponse -eq 1) {Write-Host "Egalité" -ForegroundColor Yellow}

      if($sareponse -eq 1 -and $mareponse -eq 2) 
      {
        Write-Host "Feuille bat la Pierre: Point pour moi" -ForegroundColor Green 
        $Ascore += 1 
      }

      if($sareponse -eq 1 -and $mareponse -eq 3)
      {
        Write-Host "Pierre bat les Ciseaux: Point pour le IA" -ForegroundColor Red
        $Bscore += 1
      }

#CAS: IA choisi FEUILLE
#----------------------------------------------------------------------------

      if($sareponse -eq 2 -and $mareponse -eq 1)
      {
        Write-Host "Feuille bat la Pierre: Point pour l'IA" -ForegroundColor Red
        $Bscore += 1
      }

      if($sareponse -eq 2 -and $mareponse -eq 2) {Write-Host "Egalité" -ForegroundColor Yellow}

      if($sareponse -eq 2 -and $mareponse -eq 3) 
      {
        Write-Host "Ciseau bat la Pierre: Point pour moi" -ForegroundColor Green
        $Ascore += 1
      }
  
#CAS: IA choisi CISEAU
#----------------------------------------------------------------------------

      if($sareponse -eq 3 -and $mareponse -eq 1)
      {
        Write-Host "Pierre bat les Ciseaux: Point pour moi" -ForegroundColor Green
        $Ascore += 1
      }

      if($sareponse -eq 3 -and $mareponse -eq 2)
      {
        Write-Host "Ciseau bat la Feuille: Point pour l'IA" -ForegroundColor Red
        $Bscore += 1
      }

      if($sareponse -eq 3 -and $mareponse -eq 3) {Write-Host "Egalité" -ForegroundColor Yellow}

   

    Write-host "Le score est le suivant: $Ascore / $Bscore"
  

    }while( ($Ascore -le 4) -or ($Bscore -eq 5)) 

 

}


#Fonction
PierreFeuilleCiseau


