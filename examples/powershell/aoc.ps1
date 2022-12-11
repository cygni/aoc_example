$inputContent = Get-Content ./input.txt
$part = $ENV:part

Write-Host "PowerShell"
if ($part -eq "part1") {
    $result = $inputContent | measure -Sum
    Write-Host $result.Sum
}
if ($part -eq "part2") {
    $result = 1; $inputContent | foreach { $result *= $_ }
    Write-Host $result
}