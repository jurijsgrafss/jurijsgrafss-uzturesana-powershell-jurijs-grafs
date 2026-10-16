# Atskaites ID: RVT-4417
$processes = Get-CimInstance -ClassName Win32_Process
foreach ($process in $processes) {
    $ownerResult = Invoke-CimMethod -InputObject $process -MethodName GetOwner -ErrorAction SilentlyContinue
    if ($ownerResult.ReturnValue -eq 0) {
        Write-Output "Process: $($process.Name); Id: $($process.ProcessId); Lietotājs: $($ownerResult.Domain)\$($ownerResult.User)"
    }
    else {
        Write-Output "Process: $($process.Name); Id: $($process.ProcessId); Lietotāju nevarēja noteikt (ReturnValue: $($ownerResult.ReturnValue))."
    }
}
