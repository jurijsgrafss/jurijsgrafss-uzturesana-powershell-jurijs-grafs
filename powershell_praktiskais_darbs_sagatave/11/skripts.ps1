$adapters = @(Get-NetAdapter -ErrorAction Stop | 
    Select-Object Name, Status, MacAddress, LinkSpeed)

$csvPath = "C:\Users\tinxy\Desktop\adapteri.csv"
$adapters | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

foreach ($adapter in $adapters) {
    Write-Output "Nosaukums: $($adapter.Name); Statuss: $($adapter.Status); MAC adrese: $($adapter.MacAddress); Savienojuma ātrums: $($adapter.LinkSpeed)"
}
Write-Output "Tīkla adapteru skaits: $($adapters.Count)"
Write-Output "CSV fails saglabāts: $csvPath"
