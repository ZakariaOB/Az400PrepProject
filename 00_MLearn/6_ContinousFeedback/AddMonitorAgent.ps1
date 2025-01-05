$ResourceGroup = "azwe-zboukh1-rg-devtest-logs-001"
$WorkspaceName = "azwe-zboukh1-devtest-logs-01"
$Location = "westeurope"

# List of solutions to enable
$Solutions = "CapacityPerformance", "LogManagement", "ChangeTracking", "ProcessInvestigator"

# Create the resource group if needed
try {
    Get-AzResourceGroup -Name $ResourceGroup -ErrorAction Stop
} catch {
    New-AzResourceGroup -Name $ResourceGroup -Location $Location
}

# Create the workspace
New-AzOperationalInsightsWorkspace -Location $Location -Name $WorkspaceName -ResourceGroupName $ResourceGroup

# List all solutions and their installation status
Get-AzOperationalInsightsIntelligencePacks -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName

# Add solutions
foreach ($solution in $Solutions) {
    Set-AzOperationalInsightsIntelligencePack -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName -IntelligencePackName $solution -Enabled $true
}

# List enabled solutions
(Get-AzOperationalInsightsIntelligencePacks -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName).Where({($_.enabled -eq $true)})

# Enable IIS Log Collection using the agent
Enable-AzOperationalInsightsIISLogCollection -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName

# Windows Event
New-AzOperationalInsightsWindowsEventDataSource -ResourceGroupName $ResourceGroup -WorkspaceName $WorkspaceName -EventLogName "Application" -CollectErrors -CollectWarnings -Name "Example Application Event Log"



## Retrieve the Log Analytics workspace secure key. Replace the values of the variables 
## with your existing resource group and workspace name.

Get-AzOperationalInsightsWorkspaceSharedKey `
                    -ResourceGroupName azwe-zboukh1-rg-devtest-logs-001 `
                    -Name azwe-zboukh1-devtest-logs-01

## PrimarySharedKey   : 9nRGfYQOk6FjFVmDAV1n+IvBgY8bqozEbjNhDTP0aSHkmG5rqrzKYMWdD16fuw7FKPGnDEXi3APeJwylXFKOQg==
## SecondarySharedKey : BEw3H6PTjN86e9VOXS1EKiuR1yri2XHZtEngNqO7E9s0OVu0ZGosQBCxeM6JUr09Jyn1U4R64xLFEZf1NHffkA==


$PublicSettings = @{"workspaceId" = "azwe-zboukh1-devtest-logs-01"}
$ProtectedSettings = @{"workspaceKey" = "9nRGfYQOk6FjFVmDAV1n+IvBgY8bqozEbjNhDTP0aSHkmG5rqrzKYMWdD16fuw7FKPGnDEXi3APeJwylXFKOQg=="}
$ResourceGroupName = "azwe-zboukh1-rg-devtest-logs-001"
$VMName = "test-monitir-vm-win"
$Location = "centralus"

Set-AzVMExtension -ExtensionName "Microsoft.EnterpriseCloud.Monitoring" `
    -ResourceGroupName $ResourceGroupName `
    -VMName $VMName `
    -Publisher "Microsoft.EnterpriseCloud.Monitoring" `
    -ExtensionType "MicrosoftMonitoringAgent" `
    -TypeHandlerVersion 1.0 `
    -Settings $PublicSettings `
    -ProtectedSettings $ProtectedSettings `
    -Location $Location