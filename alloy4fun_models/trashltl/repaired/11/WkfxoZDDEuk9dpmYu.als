open main
pred idWkfxoZDDEuk9dpmYu_prop12 {
	eventually (always some f:File | f not in Trash implies f in Trash')
}
pred __repair { idWkfxoZDDEuk9dpmYu_prop12 }
check __repair { idWkfxoZDDEuk9dpmYu_prop12 <=> prop12o }