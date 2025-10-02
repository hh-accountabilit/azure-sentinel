param workspaceName string

resource defenderXDRConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'MicrosoftXDR'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    kind: 'MicrosoftXDR'
  }
}