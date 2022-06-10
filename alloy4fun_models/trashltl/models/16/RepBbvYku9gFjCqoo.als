open main
pred idRepBbvYku9gFjCqoo_prop17 {
	always (all f : Trash | f not in Trash')
}
pred __repair { idRepBbvYku9gFjCqoo_prop17 }
check __repair { idRepBbvYku9gFjCqoo_prop17 <=> prop17o }