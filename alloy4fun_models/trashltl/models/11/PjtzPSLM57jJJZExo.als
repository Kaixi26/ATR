open main
pred idPjtzPSLM57jJJZExo_prop12 {
	eventually some f:File | (f in Trash) implies always f in Trash
}
pred __repair { idPjtzPSLM57jJJZExo_prop12 }
check __repair { idPjtzPSLM57jJJZExo_prop12 <=> prop12o }