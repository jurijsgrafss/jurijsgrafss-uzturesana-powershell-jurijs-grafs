# Atskaites ID: RVT-4417
$runningCount = 0
$stoppedCount = 0
$allServices = Get-Service

foreach ($service in $allServices) {
    if ($service.Status -eq 'Running') {
        $runningCount++
    }
    elseif ($service.Status -eq 'Stopped') {
        $stoppedCount++
    }
}

$sum = $runningCount + $stoppedCount
Write-Output "Darbojošos servisu skaits: $runningCount"
Write-Output "Apturētu servisu skaits: $stoppedCount"
Write-Output "Abu skaitu summa: $sum"
Write-Output "Kopējais visu servisu skaits: $($allServices.Count)"
