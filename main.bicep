targetScope = 'subscription'

@description('Name of the Resource Group')
param rgName string

@description('Location of the Resource Group')
param location string = 'eastus'

@description('Tags for the Resource Group')
param tags object = {
  environment: 'test'
  owner: 'Kaviyarasu'
}

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
  tags: tags
}
