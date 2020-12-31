## Delete Admin User
$upnsuffix=$(az ad signed-in-user show --query userPrincipalName --output tsv | sed 's/.*@//')
$user = "victimadminuser@$upnsuffix"
Remove-AzADUser -UserPrincipalName $user -Confirm:$False -Force

## Delete Resource Group
$group = "pentest-rg"
az group delete -n $group -y

## Script Output 
echo "Successfully deleted the user $user"
echo "Successfully deleted the resource group $group"