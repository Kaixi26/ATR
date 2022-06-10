open main
pred idEeFFmHnHMkEDj9RTo_prop14 {
	all f:File | f in (Trash & Protected) implies f not in (Trash & Protected')
}
pred __repair { idEeFFmHnHMkEDj9RTo_prop14 }
check __repair { idEeFFmHnHMkEDj9RTo_prop14 <=> prop14o }