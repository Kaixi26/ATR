open main
pred idoMwvgbeF286cfSQAA_prop5 {
	all f : Trash | f in File until f not in File
}
pred __repair { idoMwvgbeF286cfSQAA_prop5 }
check __repair { idoMwvgbeF286cfSQAA_prop5 <=> prop5o }