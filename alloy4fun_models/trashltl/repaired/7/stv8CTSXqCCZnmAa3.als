open main
pred idstv8CTSXqCCZnmAa3_prop8 {
	 all f:File| some f.link implies (eventually f in Trash)
}
pred __repair { idstv8CTSXqCCZnmAa3_prop8 }
check __repair { idstv8CTSXqCCZnmAa3_prop8 <=> prop8o }