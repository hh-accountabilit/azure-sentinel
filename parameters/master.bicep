
param deployAAD bool = false
param deployO365 bool = false
param deployMDE bool = false
param deployMDI bool = false
param deployMDC bool = false
param deployXDR bool = false
param deployActivityLogs bool = false
param deployAIP bool = false
param deploySyslog bool = false
param deployCEF bool = false
param deployCustomLogs bool = false

param workspaceName string
param location string = resourceGroup().location

resource workspace 'Microsoft.OperationalInsights/workspaces@2021-06-01' existing = {
  name: workspaceName
}

module aadConnector 'connectors/aad.bicep' = if (deployAAD) {
  name: 'aadConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module o365Connector 'connectors/o365.bicep' = if (deployO365) {
  name: 'o365Connector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module mdeConnector 'connectors/mde.bicep' = if (deployMDE) {
  name: 'mdeConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module mdiConnector 'connectors/mdi.bicep' = if (deployMDI) {
  name: 'mdiConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module mdcConnector 'connectors/mdc.bicep' = if (deployMDC) {
  name: 'mdcConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module xdrConnector 'connectors/xdr.bicep' = if (deployXDR) {
  name: 'xdrConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module activityLogsConnector 'connectors/activityLogs.bicep' = if (deployActivityLogs) {
  name: 'activityLogsConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module aipConnector 'connectors/aip.bicep' = if (deployAIP) {
  name: 'aipConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module syslogConnector 'connectors/syslog.bicep' = if (deploySyslog) {
  name: 'syslogConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module cefConnector 'connectors/cef.bicep' = if (deployCEF) {
  name: 'cefConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}

module customLogsConnector 'connectors/customLogs.bicep' = if (deployCustomLogs) {
  name: 'customLogsConnector'
  params: {
    workspaceName: workspace.name
    location: location
  }
}
