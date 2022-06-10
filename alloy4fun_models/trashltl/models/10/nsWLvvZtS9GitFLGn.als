open main
pred idnsWLvvZtS9GitFLGn_prop11 {
	after (all f:(File-Trash) | f not in Protected implies f in Protected)
}
pred __repair { idnsWLvvZtS9GitFLGn_prop11 }
check __repair { idnsWLvvZtS9GitFLGn_prop11 <=> prop11o }