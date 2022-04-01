open main
pred idrFiwAdRFoC29PwdBc_prop18 {
 
	all f:Protected |  f not in Protected   releases  f in Trash
}
pred __repair { idrFiwAdRFoC29PwdBc_prop18 }
check __repair { idrFiwAdRFoC29PwdBc_prop18 <=> prop18o }