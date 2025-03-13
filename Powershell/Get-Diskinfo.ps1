Function Get-Diskinfo {

    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [String]$computerName,
        [String]$Drive = 'c:'
    )
    Get-WmiObject -class Win32_logicalDisk -Filter "DeviceID='$Drive'" -ComputerName $computerName |
    Select-Object PSComputerName, DeviceID,
    @{n = 'Size(GB)'; e = { $_.size / 1gb -as [int] } },
    @{n = 'Free(GB)'; e = { $_.Freespace / 1gb -as [int] } }
}