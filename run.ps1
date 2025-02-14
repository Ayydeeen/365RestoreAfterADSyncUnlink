foreach($i in (get-content C:\Temp\unlinkOUtest.csv)){ 
  echo $i
	Restore-MsolUser -UserPrincipalName $i
	Set-MSOLuser -UserPrincipalName $i -ImmutableID "$null" 

 	#Uncomment below line to disable account after restored	
  	Set-MsolUser -UserPrincipalName $i -BlockCredential $true 
}
