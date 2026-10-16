$warningLimitGB = 10
$disks = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"

foreach ($disk in $disks) {
    $sizeGB = [math]::Round($disk.Size / 1GB, 2)
    $freeGB = [math]::Round($disk.FreeSpace / 1GB, 2)
    Write-Output "Disks: $($disk.DeviceID); Kopējais izmērs (GB): $sizeGB; Brīvā vieta (GB): $freeGB; Brīdinājuma robeža (GB): $warningLimitGB"
    if ($freeGB -lt $warningLimitGB) {
        Write-Output "BRĪDINĀJUMS: diskā $($disk.DeviceID) brīvās vietas ir mazāk par $warningLimitGB GB."
    }
}
