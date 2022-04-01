open main
pred idqCXykJBTfsLPXbRdz_prop5 {
	all f : Trash | always eventually f not in File + Protected + Trash
}
pred __repair { idqCXykJBTfsLPXbRdz_prop5 }
check __repair { idqCXykJBTfsLPXbRdz_prop5 <=> prop5o }