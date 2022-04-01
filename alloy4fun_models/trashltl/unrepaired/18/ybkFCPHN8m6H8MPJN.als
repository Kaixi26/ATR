open main
pred idybkFCPHN8m6H8MPJN_prop19 {
	all f : Protected | f not in Trash until f in Trash 
}
pred __repair { idybkFCPHN8m6H8MPJN_prop19 }
check __repair { idybkFCPHN8m6H8MPJN_prop19 <=> prop19o }