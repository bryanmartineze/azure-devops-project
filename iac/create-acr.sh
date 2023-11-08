#!/bin/bash
az group create -l eastus -g 'azure-devops-rg'

#script to create your container registry: 
az login --service-principal -u AZURE_SERVICE_PRINCIPAL_ID -p AZURE_SERVICE_PRINCIPAL_KEY --tenant AZURE_TENANT_ID
az group create -l eastus -g 'azure-devops-rg'
cd iac/
az deployment group create -f 'container-registry.bicep' -g azure-devops-rg
