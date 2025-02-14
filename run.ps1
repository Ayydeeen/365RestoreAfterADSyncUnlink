foreach($i in (get-content C:\Temp\unlinkOUtest.csv)){ 
  echo $i
	Restore-MsolUser -UserPrincipalName $i
	Set-MSOLuser -UserPrincipalName $i -ImmutableID "$null" 
}
