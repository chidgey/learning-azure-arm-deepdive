@echo off

rem az group create --name lab1 --location "uk south"


rem Inject parameters from the shell
set rg="lab1"
set template="D:\projects\learning-azure-arm-deepdive\lab1\azuredeploy.json"
set job="job1"
set params="StorageAccountPrefix=cclabstorageac"

echo az group deployment create --name %job% --resource-group %rg% --template-file %template% --parameters %params%

rem az group delete --name lab1 --yes --no-wait