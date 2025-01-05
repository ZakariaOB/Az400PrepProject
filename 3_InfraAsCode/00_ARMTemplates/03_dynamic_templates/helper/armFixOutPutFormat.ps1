# Write your PowerShell commands here.

Write-Host "Fix azure formatting"


# Put the arm output here 
$nonJsonString = '$(resourcedeployed)';

Write-Host '$(resourcedeployed)';

Write-Host '==================================';
Write-Host 'Fix output formatting';
Write-Host '==================================';

# Make the string in the correct json format to be able to parse using ConvertFrom-Json

# Use regex to replace values with quoted values
$pattern = 'value:(\w+[^,}]*)'
$replacement = 'value:"$1"'
$jsonString = [regex]::Replace($nonJsonString, $pattern, $replacement)

# Add double quotes around property names and values
$jsonString = $jsonString -replace '(\w+):', '"$1":' -replace '([a-zA-Z0-9._]+),', '"$1",'

Write-Host '==================================';
Write-Host 'Reading data from template output';
Write-Host '==================================';

$outputs = $jsonString | ConvertFrom-Json

# Extracting the app and server names
foreach ($output in $outputs) {
    $value1 = $output.'webappname'.value
    $value2 = $output.'sqlserverfqdn'.value

    Write-Host $value1
    Write-Host $value2

    Write-Host "##vso[task.setvariable variable=webappname;]$value1"
    Write-Host "##vso[task.setvariable variable=sqlserverfqdn;]$value2"
}