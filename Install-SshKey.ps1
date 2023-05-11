&{
  'Connecting to Azure'
  Connect-AzAccount -Identity -ErrorAction Continue
  'Getting SSH key'
  $Key = Get-AzSshKey -Name cluster-ssh -ResourceGroup bob-dev3 -ErrorAction Continue
  'Storing SSH key'
  $Key.publicKey | Out-File "C:\key.pub"
} >C:\log.txt 2>&1
