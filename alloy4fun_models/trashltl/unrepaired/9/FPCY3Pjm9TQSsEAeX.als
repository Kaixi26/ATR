open main
pred idFPCY3Pjm9TQSsEAeX_prop10 {
	always all f:File | f in Protected implies  f in Protected'
}
pred __repair { idFPCY3Pjm9TQSsEAeX_prop10 }
check __repair { idFPCY3Pjm9TQSsEAeX_prop10 <=> prop10o }