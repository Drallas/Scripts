$ServicesFromFile = Import-csv C:\powershell-scripts\test.csv
foreach ($services in $ServicesFromFile)
# now we have find the service in system services and then we can set or the expctected status for that service.

{ # this can be performed on N number of systems using single powershell script
    $MatchingService = get-service | Where-Object { $_.ServiceName -eq $services.ServiceName }
    Write-host "Found matching service:---" $MatchingService.ToString()
    $MatchingService.Start()
}