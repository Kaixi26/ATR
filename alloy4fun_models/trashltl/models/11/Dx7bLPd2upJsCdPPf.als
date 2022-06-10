open main
pred idDx7bLPd2upJsCdPPf_prop12 {
	eventually all f:File |eventually f in Trash implies always f in Trash
}
pred __repair { idDx7bLPd2upJsCdPPf_prop12 }
check __repair { idDx7bLPd2upJsCdPPf_prop12 <=> prop12o }