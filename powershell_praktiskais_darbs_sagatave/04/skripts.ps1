# Atskaites ID: RVT-4417
[CmdletBinding(SupportsShouldProcess = $true)]
param()

$servicesToStart = @(Get-CimInstance -ClassName Win32_Service |
    Where-Object { $_.StartMode -eq 'Auto' -and $_.State -eq 'Stopped' })

if ($servicesToStart.Count -eq 0) {
    Write-Output "Nav apturētu servisu ar automātisku palaišanas veidu. Skaits: 0"
}
else {
    Write-Output "Atrasto servisu skaits: $($servicesToStart.Count)"
    foreach ($service in $servicesToStart) {
        Write-Output "Serviss: $($service.Name) ($($service.DisplayName))"
        if ($PSCmdlet.ShouldProcess($service.Name, "Palaist servisu")) {
            Start-Service -Name $service.Name -ErrorAction Continue
        }
    }
}
