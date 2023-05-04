# Connect to vCenter Server
Connect-VIServer -Server <vCenter_Server_Name> -User <Username> -Password <Password>

# Get vCenter Events
$events = Get-VIEvent

# Loop through each event and display the details
foreach ($event in $events) {
    Write-Output "Description: $($event.FullFormattedMessage)"
    Write-Output "Type: $($event.GetType().Name)"
    Write-Output "Date Time: $($event.CreatedTime)"
    Write-Output "User: $($event.UserName)"
    Write-Output "----------------------"
}

# Disconnect from vCenter Server
Disconnect-VIServer -Confirm:$false
