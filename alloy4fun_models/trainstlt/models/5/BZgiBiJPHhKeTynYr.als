open main
pred idBZgiBiJPHhKeTynYr_prop6 {
	
	all s:Signal | (s in Green implies s not in Green') or (s not in Green implies s in Green')
}
pred __repair { idBZgiBiJPHhKeTynYr_prop6 }
check __repair { idBZgiBiJPHhKeTynYr_prop6 <=> prop6o }