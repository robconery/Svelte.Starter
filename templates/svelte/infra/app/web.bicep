param environmentName string
param location string = resourceGroup().location
param tags object = {}

param applicationInsightsConnectionString string
param applicationInsightsInstrumentationKey string
param containerAppsEnvironmentName string
param containerRegistryName string
param imageName string = serviceName
param serviceName string = 'web'
param targetPort int = 80
param external bool = true

module app 'containerapp.bicep' = {
  name: '${serviceName}-container-app-module'
  params: {
    environmentName: environmentName
    location: location
    tags: tags
    applicationInsightsConnectionString: applicationInsightsConnectionString
    applicationInsightsInstrumentationKey: applicationInsightsInstrumentationKey
    containerAppsEnvironmentName: containerAppsEnvironmentName
    containerRegistryName: containerRegistryName
    imageName: imageName
    serviceName: serviceName
    targetPort: targetPort
    external: external
  }
}

output SERVICE_WEB_IDENTITY_PRINCIPAL_ID string = app.outputs.CONTAINER_APP_IDENTITY_PRINCIPAL_ID
output SERVICE_WEB_NAME string = app.outputs.CONTAINER_APP_NAME
output SERVICE_WEB_URI string = app.outputs.CONTAINER_APP_URI
output SERVICE_WEB_IMAGE_NAME string = app.outputs.CONTAINER_APP_IMAGE_NAME
