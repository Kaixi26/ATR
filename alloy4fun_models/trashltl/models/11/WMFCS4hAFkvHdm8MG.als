open main
pred idWMFCS4hAFkvHdm8MG_prop12 {
	
  	eventually (some f:File | (f in Trash) implies ((f not in Trash) releases (f in Trash)))
}
pred __repair { idWMFCS4hAFkvHdm8MG_prop12 }
check __repair { idWMFCS4hAFkvHdm8MG_prop12 <=> prop12o }