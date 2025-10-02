param workspaceName string
param tenantId string

resource o365Connector 'Microsoft.SecurityInsights/dataConnectors@2022-09-01-preview' = {
  name: 'Office365'
  parent: resourceId('Microsoft.OperationalInsights/workspaces', workspaceName)
  properties: {
    tenantId: tenantId
    kind: 'Office365'
  }
}