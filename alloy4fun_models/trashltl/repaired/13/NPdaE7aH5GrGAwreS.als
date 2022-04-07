open main
pred idNPdaE7aH5GrGAwreS_prop14 {
	all f:File&Protected&Trash | after f in File&Trash 
}
pred __repair { idNPdaE7aH5GrGAwreS_prop14 }
check __repair { idNPdaE7aH5GrGAwreS_prop14 <=> prop14o }