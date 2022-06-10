open main
pred id5tL6pALL88H6fBvaM_prop10 {
	always (all f:File&Protected | after f in Protected)
}
pred __repair { id5tL6pALL88H6fBvaM_prop10 }
check __repair { id5tL6pALL88H6fBvaM_prop10 <=> prop10o }