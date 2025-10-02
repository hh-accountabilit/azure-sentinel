param workspaceName string

resource cefConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'CEF'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'CEF'
  }
}