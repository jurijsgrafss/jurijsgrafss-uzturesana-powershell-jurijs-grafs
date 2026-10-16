# Atskaites ID: RVT-4417
$startTime = (Get-Date).AddHours(-48)

try {
    $errors = @(Get-WinEvent -FilterHashtable @{
        LogName = 'System'
        Level = 2
        StartTime = $startTime
    } -ErrorAction Stop)

    Write-Output "Kļūdu ierakstu skaits sistēmas žurnālā pēdējās 48 stundās: $($errors.Count)"

    if ($errors.Count -gt 0) {
        $mostCommon = $errors |
            Group-Object -Property ProviderName |
            Sort-Object -Property Count -Descending |
            Select-Object -First 1

        Write-Output "Visbiežākais avots: $($mostCommon.Name)"
        Write-Output "Šī avota ierakstu skaits: $($mostCommon.Count)"
    }
    else {
        Write-Output "Pēdējās 48 stundās sistēmas žurnālā kļūdu ierakstu nav."
    }
}
catch {
    Write-Output "Neizdevās nolasīt sistēmas žurnālu: $($_.Exception.Message)"
}
