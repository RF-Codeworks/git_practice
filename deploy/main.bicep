@description('The Azure region into which the resources should be deployed')
param location string = resourceGroup().location

@description('The type of environment. THus bust be prod or dev')
@allowed([
  'prod'
  'dev'
])
param environmentType string

