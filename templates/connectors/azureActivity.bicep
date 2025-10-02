param workspaceName string

resource azureActivityConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'AzureActivity'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'AzureActivity'
  }
}