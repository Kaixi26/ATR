open main
pred idKf5g7RvTveqzffh73_prop8 {
	 (all f:File| some f.link implies eventually f+f.link in Trash)
}
pred __repair { idKf5g7RvTveqzffh73_prop8 }
check __repair { idKf5g7RvTveqzffh73_prop8 <=> prop8o }