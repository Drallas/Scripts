# Show the most active processes in the system 
# Start : .\Get-TopProcesses.ps1 -computerName win0000vm -processname "notepad.exe"

param(
    [string]$computerName,
    [string]$processname
)
invoke-command -ScriptBlock { get-process -ComputerName $computerName -processname $processname } | Sort-Object -Property $processname -Descending 