
#cd lab1
#az group create --name lab1 --location "uk south"
#az group deployment create --name job1 --resource-group lab1 --template-file azuredeploy.json

# Inject parameters from the shell
rg=lab1
template=/d/projects/learning-azure-arm-deepdive/lab1/azuredeploy.json
job=job2
params="StorageAccountParam=\"cclabstorageac001\""

echo az group deployment create --name $job --resource-group $rg --template-file $template --parameters $params