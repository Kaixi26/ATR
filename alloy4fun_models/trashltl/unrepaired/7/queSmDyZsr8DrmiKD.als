open main
pred idqueSmDyZsr8DrmiKD_prop8 {
	eventually all f:File | f in f.link implies f in Trash
}
pred __repair { idqueSmDyZsr8DrmiKD_prop8 }
check __repair { idqueSmDyZsr8DrmiKD_prop8 <=> prop8o }