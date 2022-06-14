open main
pred idyT4iE3jWrGtqwJb26_prop3 {
	
	all t : Train | always t.pos in Entry or always t.pos in Exit
}
pred __repair { idyT4iE3jWrGtqwJb26_prop3 }
check __repair { idyT4iE3jWrGtqwJb26_prop3 <=> prop3o }