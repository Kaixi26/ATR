open main
pred idP4ytnCsDz4ZGi4b7T_prop3 {
	
	always( all t:Train | no pos.t)
}
pred __repair { idP4ytnCsDz4ZGi4b7T_prop3 }
check __repair { idP4ytnCsDz4ZGi4b7T_prop3 <=> prop3o }