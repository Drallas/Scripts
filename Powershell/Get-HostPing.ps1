function Get-HostPing {

    $hostArray = @(Get-Content C:\Documents\computers.csv)
    Write-Host "loaded" $hostArray # Show computers from list
    
    foreach ($element in $hostArray) {
        $hostTest = Test-Connection $element -count 1 -quiet
        if ($hostTest -eq $True) { Write-Host $element "did respond!" }   
        else { Write-Host $element "Is not responding!" }
    }  
}