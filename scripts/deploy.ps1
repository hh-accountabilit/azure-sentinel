param (
  [string]$ResourceGroupName,
  [string]$Location = 'eastus'
)

az group create --name $ResourceGroupName --location $Location
az deployment group create --resource-group $ResourceGroupName --template-file templates/sentinel.bicep
