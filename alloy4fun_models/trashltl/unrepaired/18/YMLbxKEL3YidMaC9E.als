open main
pred idYMLbxKEL3YidMaC9E_prop19 {
	all f : Protected | (f not in Trash) until (f in Trash)
}
pred __repair { idYMLbxKEL3YidMaC9E_prop19 }
check __repair { idYMLbxKEL3YidMaC9E_prop19 <=> prop19o }