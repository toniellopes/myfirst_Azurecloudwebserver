#!/bin/bash
# Azure Web Server Deployment Script
# Usage: ./deploy.sh

RG="IntroAzureRG"
LOCATION="centralus"
VM_NAME="my-vm"

echo "Creating Resource Group..."
az group create --name $RG --location $LOCATION

echo "Creating VM..."
az vm create --resource-group $RG --name $VM_NAME --location $LOCATION --size Standard_D2s_v3 --image Ubuntu2204 --admin-username azureuser --generate-ssh-keys --public-ip-sku Standard

echo "Opening Port 80..."
az vm open-port --port 80 --resource-group $RG --name $VM_NAME

echo "Installing Nginx..."
az vm extension set --resource-group $RG --vm-name $VM_NAME --name customScript --publisher Microsoft.Azure.Extensions --version 2.1 --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"]}' --protected-settings '{"commandToExecute": "./configure-nginx.sh"}'
EOFcat << 'EOF' > deploy.sh
#!/bin/bash
# Azure Web Server Deployment Script
# Usage: ./deploy.sh

RG="IntroAzureRG"
LOCATION="centralus"
VM_NAME="my-vm"

echo "Creating Resource Group..."
az group create --name $RG --location $LOCATION

echo "Creating VM..."
az vm create --resource-group $RG --name $VM_NAME --location $LOCATION --size Standard_D2s_v3 --image Ubuntu2204 --admin-username azureuser --generate-ssh-keys --public-ip-sku Standard

echo "Opening Port 80..."
az vm open-port --port 80 --resource-group $RG --name $VM_NAME

echo "Installing Nginx..."
az vm extension set --resource-group $RG --vm-name $VM_NAME --name customScript --publisher Microsoft.Azure.Extensions --version 2.1 --settings '{"fileUris":["https://raw.githubusercontent.com/MicrosoftDocs/mslearn-welcome-to-azure/master/configure-nginx.sh"]}' --protected-settings '{"commandToExecute": "./configure-nginx.sh"}'
