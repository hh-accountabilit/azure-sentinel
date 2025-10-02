param workspaceName string

resource defenderCloudAppsConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'MicrosoftCloudAppSecurity'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'MicrosoftCloudAppSecurity'
  }
}