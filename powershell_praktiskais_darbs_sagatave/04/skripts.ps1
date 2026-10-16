function Start-AutoStoppedServices {
    [CmdletBinding(SupportsShouldProcess = $true)]
    param()

    # Находим сервисы, у которых StartMode == 'Auto', а State == 'Stopped'
    $servicesToStart = @(Get-CimInstance -ClassName Win32_Service | 
        Where-Object { $_.StartMode -eq 'Auto' -and $_.State -eq 'Stopped' })

    if ($servicesToStart.Count -eq 0) {
        Write-Output "Nav apturētu servisu ar automātisku palaišanas veidu. Skaits: 0"
    } else {
        Write-Output "Atrasto servisu skaits: $($servicesToStart.Count)"
        foreach ($service in $servicesToStart) {
            Write-Output "Serviss: $($service.Name) ($($service.DisplayName))"
            # ShouldProcess позволяет корректно отрабатывать ключу -WhatIf
            if ($PSCmdlet.ShouldProcess($service.Name, "Palaist servisu")) {
                Start-Service -Name $service.Name -ErrorAction SilentlyContinue
            }
        }
    }
}
