param workspaceName string

resource syslogConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'Syslog'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'Syslog'
  }
}