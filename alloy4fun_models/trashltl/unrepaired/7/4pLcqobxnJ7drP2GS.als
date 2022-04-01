open main
pred id4pLcqobxnJ7drP2GS_prop8 {
	eventually (some f:File | f.link in Trash)
}
pred __repair { id4pLcqobxnJ7drP2GS_prop8 }
check __repair { id4pLcqobxnJ7drP2GS_prop8 <=> prop8o }