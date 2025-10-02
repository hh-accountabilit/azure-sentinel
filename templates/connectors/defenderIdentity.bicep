param workspaceName string

resource defenderIdentityConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'AzureAdvancedThreatProtection'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'AzureAdvancedThreatProtection'
  }
}