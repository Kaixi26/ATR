open main
pred idoLqnfMLhXpTSSNvZE_prop15 {
	( all f:File | f not in Trash implies eventually f in Trash)
}
pred __repair { idoLqnfMLhXpTSSNvZE_prop15 }
check __repair { idoLqnfMLhXpTSSNvZE_prop15 <=> prop15o }