// This file deploys a Resource Group at subscription scope
targetScope = 'subscription'

// Parameters
@description('The name of the resource group to create')
param rgName string

@description('The location of the resource group')
param location string

// Resource group definition
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

// Output
output resourceGroupName string = rg.name
output resourceGroupLocation string = rg.location
