@description('The Azure region into which the resources should be deployed')
param location string = resourceGroup().location

@description('The type of environment. THus bust be prod or dev')
@allowed([
  'prod'
  'dev'
])
param environmentType string

@description('THe name of the App Service app. This name must be globally unique.')
param appServiceAppName string = 'toyweb-${uniqueString(resourceGroup().id)}'

module appService '../modules/app-service.bicep' = {
  name: 'app-service'
  params: {
    location: location
    environmentType: environmentType
    appServiceAppName: appServiceAppName
  }
}
