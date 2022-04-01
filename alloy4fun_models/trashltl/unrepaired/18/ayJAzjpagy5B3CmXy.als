open main
pred idayJAzjpagy5B3CmXy_prop19 {
	always (all f:File | f in Protected until f in Trash)
}
pred __repair { idayJAzjpagy5B3CmXy_prop19 }
check __repair { idayJAzjpagy5B3CmXy_prop19 <=> prop19o }