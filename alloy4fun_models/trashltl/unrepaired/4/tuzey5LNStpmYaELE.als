open main
pred idtuzey5LNStpmYaELE_prop5 {
	always some f : Trash | f in File until f not in File
}
pred __repair { idtuzey5LNStpmYaELE_prop5 }
check __repair { idtuzey5LNStpmYaELE_prop5 <=> prop5o }