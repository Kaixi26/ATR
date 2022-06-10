open main
pred idWakmHvGhLY7dz5mP7_prop12 {
	 eventually (some f:File | (f in Trash) implies always (f in Trash))
}
pred __repair { idWakmHvGhLY7dz5mP7_prop12 }
check __repair { idWakmHvGhLY7dz5mP7_prop12 <=> prop12o }