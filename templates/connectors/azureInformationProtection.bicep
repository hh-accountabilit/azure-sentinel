param workspaceName string

resource aipConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'AzureInformationProtection'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'AzureInformationProtection'
  }
}