param workspaceName string

resource defenderEndpointConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'MicrosoftDefenderAdvancedThreatProtection'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'MicrosoftDefenderAdvancedThreatProtection'
  }
}