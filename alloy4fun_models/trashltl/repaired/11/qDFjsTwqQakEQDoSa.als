open main
pred idqDFjsTwqQakEQDoSa_prop12 {
	 always (some f:File&Trash | f in Trash)
}
pred __repair { idqDFjsTwqQakEQDoSa_prop12 }
check __repair { idqDFjsTwqQakEQDoSa_prop12 <=> prop12o }