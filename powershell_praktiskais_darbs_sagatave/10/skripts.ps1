$computer = Get-CimInstance -ClassName Win32_ComputerSystem
$operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem
$processCount = (Get-Process).Count

$services = Get-Service
$runningCount = 0
$stoppedCount = 0
foreach ($service in $services) {
    if ($service.Status -eq 'Running') {
        $runningCount++
    }
    elseif ($service.Status -eq 'Stopped') {
        $stoppedCount++
    }
}

$startTime = (Get-Date).AddHours(-48)
try {
    $errors = @(Get-WinEvent -FilterHashtable @{
        LogName = 'System'
        Level = 2
        StartTime = $startTime
    } -ErrorAction Stop)
    $errorCount = $errors.Count
}
catch {
    $errorCount = -1
    Write-Output "Neizdevās nolasīt sistēmas žurnālu: $($_.Exception.Message)"
}

$disks = Get-CimInstance -ClassName Win32_LogicalDisk -Filter "DriveType=3"
Write-Output "KOPSAVILKUMS"
Write-Output "Datora nosaukums: $($computer.Name)"
Write-Output "Procesu skaits: $processCount"
Write-Output "Darbojošos servisu skaits: $runningCount"
Write-Output "Apturētu servisu skaits: $stoppedCount"
if ($errorCount -ge 0) {
    Write-Output "Sistēmas žurnāla kļūdu skaits pēdējās 48 stundās: $errorCount"
}
foreach ($disk in $disks) {
    $freeGB = [math]::Round($disk.FreeSpace / 1GB, 2)
    Write-Output "Disks $($disk.DeviceID) brīvā vieta (GB): $freeGB"
}
