# Atskaites ID: RVT-4417
$topProcesses = Get-Process |
    Sort-Object -Property WorkingSet64 -Descending |
    Select-Object -First 10 |
    Sort-Object -Property WorkingSet64

if ($null -eq $topProcesses -or $topProcesses.Count -eq 0) {
    Write-Output "Procesi netika atrasti."
}
else {
    foreach ($process in $topProcesses) {
        $memoryMB = [math]::Round($process.WorkingSet64 / 1MB, 1)
        Write-Output ("Nosaukums: {0}; Id: {1}; Atmiņa (MB): {2:N1}" -f $process.ProcessName, $process.Id, $memoryMB)
    }
}
