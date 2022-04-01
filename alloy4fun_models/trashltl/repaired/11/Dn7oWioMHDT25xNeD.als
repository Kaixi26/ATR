open main
pred idDn7oWioMHDT25xNeD_prop12 {
	always all f:File | eventually f in Trash && historically f not in Trash
}
pred __repair { idDn7oWioMHDT25xNeD_prop12 }
check __repair { idDn7oWioMHDT25xNeD_prop12 <=> prop12o }