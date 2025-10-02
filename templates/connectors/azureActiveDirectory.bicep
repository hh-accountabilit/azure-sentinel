param workspaceName string
param tenantId string

resource aadConnector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'AzureActiveDirectory'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    dataTypes: {
      signInLogs: { state: 'Enabled' }
      auditLogs: { state: 'Enabled' }
    }
    tenantId: tenantId
    kind: 'AzureActiveDirectory'
  }
}