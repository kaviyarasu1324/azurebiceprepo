targetScope = 'subscription'

@description('The name of the resource group to create')
param rgName string

@description('The location of the resource group')
param location string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
// MISSING closing brace here
// Output
output resourceGroupName string = rg.name
output resourceGroupLocation string = rg.location
