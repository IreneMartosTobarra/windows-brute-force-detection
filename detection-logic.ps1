
# Windows Brute Force Detection
# Detects 5 or more failed logons within 15 minutes.

$StartTime = (Get-Date).AddMinutes(-15)

$FailedLogons = Get-WinEvent -FilterHashtable @{
    LogName   = 'Security'
    Id        = 4625
    StartTime = $StartTime
} -ErrorAction SilentlyContinue

$Results = foreach ($Event in $FailedLogons) {
    $Xml = [xml]$Event.ToXml()

    $Data = @{}
    foreach ($Item in $Xml.Event.EventData.Data) {
        $Data[$Item.Name] = $Item.'#text'
    }

    [PSCustomObject]@{
        Account = $Data['TargetUserName']
        Time    = $Event.TimeCreated
    }
}

$Alerts = $Results |
    Group-Object Account |
    Where-Object { $_.Count -ge 5 }

if ($Alerts) {
    foreach ($Alert in $Alerts) {
        Write-Host "ALERT: Possible brute-force activity!"
        Write-Host "Account: $($Alert.Name)"
        Write-Host "Failed attempts: $($Alert.Count)"
    }
}
else {
    Write-Host "No brute-force pattern detected."
}
