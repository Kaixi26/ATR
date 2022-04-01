open main
pred idpKxdDmySd7wDMxuo9_prop8 {
	 (all f:File| some f.link implies eventually f.link in Trash)
}
pred __repair { idpKxdDmySd7wDMxuo9_prop8 }
check __repair { idpKxdDmySd7wDMxuo9_prop8 <=> prop8o }