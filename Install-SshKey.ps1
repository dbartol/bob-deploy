Connect-AzAccount -Identity
$Key = Get-AzSshKey -Name cluster-ssh -ResourceGroup bob-dev3
$Key.publicKey | Out-File "C:\key.pub"
