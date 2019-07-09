# Login-AzureRmAccount
# Select-AzureRmSubscription -SubscriptionId "SUBSCRIPTION NAME"

$rg="lab3"
$job='job.' + ((get-date).ToUniversalTime()).tostring("MMddyy.HHmm")

$template="D:\projects\learning-azure-arm-deepdive\lab3\azuredeploy.json"
$params="D:\projects\learning-azure-arm-deepdive\lab3\azuredeploy.parameters.json"

$storageAccount=(New-AzureRMResourceGroupDeployment -Name $job -TemplateParameterFile $params -TemplateFile $template -ResourceGroupName $rg)