$serviceName = 'Spooler'

$methodOne = Measure-Command {
    $resultOne = Get-Service -Name $serviceName -ErrorAction Stop
}
$methodTwo = Measure-Command {
    $resultTwo = Get-CimInstance -ClassName Win32_Service -Filter "Name='$serviceName'" -ErrorAction Stop
}

Write-Output "1. veids (Get-Service) atrada: $($resultOne.Name), statuss: $($resultOne.Status)"
Write-Output ("1. veida izpildes laiks (ms): {0:N3}" -f $methodOne.TotalMilliseconds)
if ($null -ne $resultTwo) {
    Write-Output "2. veids (Get-CimInstance) atrada: $($resultTwo.Name), statuss: $($resultTwo.State)"
}
else {
    Write-Output "Ar otro veidu serviss netika atrasts."
}
Write-Output ("2. veida izpildes laiks (ms): {0:N3}" -f $methodTwo.TotalMilliseconds)
