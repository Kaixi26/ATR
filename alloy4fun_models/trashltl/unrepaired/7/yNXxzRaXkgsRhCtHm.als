open main
pred idyNXxzRaXkgsRhCtHm_prop8 {
	eventually (all f : File | some f.link implies f in Trash)
}
pred __repair { idyNXxzRaXkgsRhCtHm_prop8 }
check __repair { idyNXxzRaXkgsRhCtHm_prop8 <=> prop8o }