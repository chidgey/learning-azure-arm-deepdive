# Login-AzureRmAccount
# Select-AzureRmSubscription -SubscriptionId "SUBSCRIPTION NAME"

$rg="lab1"
$job='job.' + ((get-date).ToUniversalTime()).tostring("MMddyy.HHmm")

$template="D:\projects\learning-azure-arm-deepdive\lab1\azuredeploy.json"
$params="D:\projects\learning-azure-arm-deepdive\lab1\azuredeploy.parameters.json"

$storageAccount=(New-AzureRMResourceGroupDeployment -Name $job -TemplateParameterFile $params -TemplateFile $template -ResourceGroupName $rg)