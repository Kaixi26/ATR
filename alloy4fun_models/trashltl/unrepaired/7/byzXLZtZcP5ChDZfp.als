open main
pred idbyzXLZtZcP5ChDZfp_prop8 {
  	always all f:File | eventually f.link in Trash
  	
	
}
pred __repair { idbyzXLZtZcP5ChDZfp_prop8 }
check __repair { idbyzXLZtZcP5ChDZfp_prop8 <=> prop8o }