#!/bin/bash

# https://learn.microsoft.com/en-us/cli/azure/network/perimeter?view=azure-cli-latest

NETWORK_PERIMETER_NAME="nsp-prd-global-01"
RESOURCE_GROUP_NAME="rg-bb-nsp-prd-global-01"
LOCATION="japanwest"
PROFILE_FOR_SOC_NAME="profile-log-soc"

echo "Create Network Security Perimeter"
echo "--------------------------------"
az network perimeter create \
  --name $NETWORK_PERIMETER_NAME \
  --resource-group $RESOURCE_GROUP_NAME \
  --location $LOCATION
echo "Network Security Perimeter Created Successfully"

echo "Create NSP Profile for SOC"
az network perimeter profile create \
    --name $PROFILE_FOR_SOC_NAME \
    --perimeter-name $NETWORK_PERIMETER_NAME \
    --resource-group $RESOURCE_GROUP_NAME
echo "NSP Profile for SOC Created Successfully"

echo "Please remember to add rules to the NSP Profile as needed."
echo "Please add the diagnostics settings to send logs to the Log Analytics workspace for network security perimeter."