$drivers = @(Get-CimInstance -ClassName Win32_PnPSignedDriver |
    Where-Object { $_.DriverProviderName -and $_.DriverProviderName -ne 'Microsoft' } |
    Select-Object DeviceName, DriverProviderName, DriverVersion, InfName)

$csvPath = "C:\Users\tinxy\Desktop\draiveri.csv"
$drivers | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

Write-Output "CSV failā ierakstīto draiveru rindu skaits: $($drivers.Count)"
Write-Output "CSV fails saglabāts: $csvPath"

if ($drivers.Count -eq 0) {
    Write-Output "Draiveri, kuru piegādātājs nav Microsoft, netika atrasti."
}
