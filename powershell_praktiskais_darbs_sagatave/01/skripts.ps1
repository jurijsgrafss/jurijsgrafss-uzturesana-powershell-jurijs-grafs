# Atskaites ID: RVT-4417
$computer = Get-CimInstance -ClassName Win32_ComputerSystem
$operatingSystem = Get-CimInstance -ClassName Win32_OperatingSystem
$processCount = (Get-Process).Count

Write-Output "Datora nosaukums: $($computer.Name)"
Write-Output "Operētājsistēma: $($operatingSystem.Caption)"
Write-Output "Operētājsistēmas būvējuma numurs: $($operatingSystem.BuildNumber)"
Write-Output "PowerShell versija: $($PSVersionTable.PSVersion)"
Write-Output "Pašreizējais datums un laiks: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
Write-Output "Pašlaik darbojošos procesu skaits: $processCount"
