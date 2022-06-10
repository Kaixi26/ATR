open main
pred idThmgTSfvyYJmtnac6_prop10 { 
	once File in Protected implies always File in Protected
}
pred __repair { idThmgTSfvyYJmtnac6_prop10 }
check __repair { idThmgTSfvyYJmtnac6_prop10 <=> prop10o }