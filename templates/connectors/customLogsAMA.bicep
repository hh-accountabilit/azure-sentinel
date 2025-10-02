param workspaceName string

resource customLogsConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'CustomLogs'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'CustomLogs'
  }
}