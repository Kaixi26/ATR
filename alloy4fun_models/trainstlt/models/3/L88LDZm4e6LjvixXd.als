open main
pred idL88LDZm4e6LjvixXd_prop4 {
	
	all disj s1, s2 : (Signal-(Entry+Exit)) | always s1.pos != s2.pos
}
pred __repair { idL88LDZm4e6LjvixXd_prop4 }
check __repair { idL88LDZm4e6LjvixXd_prop4 <=> prop4o }