
cd lab1
az group create --name lab1 --location "uk south"
az group deployment create --name job1 --resource-group lab1 --template-file azuredeploy.json
