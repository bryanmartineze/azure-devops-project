param location string = resourceGroup().location // Specify your desired Azure region

resource acrResource 'Microsoft.ContainerRegistry/registries@2023-01-01-preview' = {
  name: 'AzureDevOpsACR${uniqueString(resourceGroup().id)}' // Replace with your desired ACR name
  location: location
  properties: {
    adminUserEnabled: false // Set to true if you want admin user enabled
  }
  sku: {
    name: 'Basic' // Change to the desired SKU (e.g., 'Standard', 'Premium', etc.)
  }
}

output acrId string = acrResource.id
