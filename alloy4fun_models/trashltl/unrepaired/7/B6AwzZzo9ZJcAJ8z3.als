open main
pred idB6AwzZzo9ZJcAJ8z3_prop8 {
	all f : File | (some f.~link) implies (eventually f in Trash)
}
pred __repair { idB6AwzZzo9ZJcAJ8z3_prop8 }
check __repair { idB6AwzZzo9ZJcAJ8z3_prop8 <=> prop8o }