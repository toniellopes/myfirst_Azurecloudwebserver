# Automated Azure Web Server Deployment

This repository contains a Bash script to automate the creation of an infrastructure on Microsoft Azure, deploying a Linux Virtual Machine and configuring an Nginx Web Server automatically.

## 🚀 Technologies Used
* **Cloud:** Microsoft Azure
* **Infrastructure as Code:** Azure CLI (Bash Scripting)
* **Web Server:** Nginx
* **Operating System:** Ubuntu 22.04 LTS

## 📋 What the script does
1. Creates a **Resource Group** for organization.
2. Deploys a **Virtual Machine** (Standard_D2s_v3).
3. Configures **Network Security Groups (NSG)** to allow HTTP traffic (Port 80).
4. Uses a **Custom Script Extension** to install and start the Nginx server.
5. Displays the **Public IP Address** to access the final website.

## 🛠️ How to run
1. Open your [Azure Cloud Shell](https://shell.azure.com/).
2. Clone this repository:
   ```bash
   git clone [https://github.com/toniellopes/myfirst_Azurecloudwebserver.git](https://github.com/toniellopes/myfirst_Azurecloudwebserver.git)
