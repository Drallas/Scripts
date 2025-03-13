#Calculating if it's weekend; ; my first Powershell script!
function Get-Weekend {
    $currentDate = Get-Date #Getting the current data from system
    $startWeekend = 6 #Weekend start at day 6 (Saturday)
    $dayName = $currentDate.DayOfWeek #Takes the name of the day
    $dayNumber = Get-Date -UFormat %u #-Uformat %u geeft DayNumber, maandag is 1
    $daysBeforeWeekend = $startWeekend - $dayNumber #Calculate daysleft before weekend
    
    if($dayName -eq "friday") {Write-Host $daysBeforeWeekend "Day left, loading the weekend"} 
    elseif ($dayNumber -lt $startWeekend) {Write-Host "Today is" $dayName $daysBeforeWeekend "day(s) before it's weekend"} #elseif not needed but keeping it for fun.
    }
    
    Get-Weekend
    
    #Get-Weekend using a Switch statement
    #Meer over Switch Statements -> https://kevinmarquette.github.io/2018-01-12-Powershell-switch-statement
    $currentDate = Get-Date #Getting the current data from system
    $startWeekend = 6
    $dayName = $currentDate.DayOfWeek #Takes the name of the day
    $dayNumber = Get-Date -UFormat %u #-Uformat %u geeft DayNumber, maandag is 1
    $daysBeforeWeekend = $startWeekend - $dayNumber #Calculate daysleft before weekend
    
    $weekDay = $dayNumber
    
        switch ( $weekDay )
        {
            {$_ -le 4}{ $result = Write-Host "Today is" $dayName $daysBeforeWeekend "day(s) before it's weekend"}
            5 { $result = Write-Host "Today is" $dayName $daysBeforeWeekend "day left, loading the weekend..."}
            
            default { Write-Host "Today is" $dayName "Enjoy the Weekend"}
    
        }
    
        $result