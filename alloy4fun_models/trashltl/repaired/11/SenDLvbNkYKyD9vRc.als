open main
pred idSenDLvbNkYKyD9vRc_prop12 {
	
  	some f:File | f in Trash since f not in Trash
}
pred __repair { idSenDLvbNkYKyD9vRc_prop12 }
check __repair { idSenDLvbNkYKyD9vRc_prop12 <=> prop12o }