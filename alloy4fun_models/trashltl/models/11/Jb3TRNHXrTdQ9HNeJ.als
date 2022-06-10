open main
pred idJb3TRNHXrTdQ9HNeJ_prop12 {
	  (some f:File | eventually (f in Trash implies always (f in Trash)))
}
pred __repair { idJb3TRNHXrTdQ9HNeJ_prop12 }
check __repair { idJb3TRNHXrTdQ9HNeJ_prop12 <=> prop12o }