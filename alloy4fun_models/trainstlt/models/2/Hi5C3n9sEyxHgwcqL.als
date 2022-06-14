open main
pred idHi5C3n9sEyxHgwcqL_prop3 {
	
 	always ((Train->Track - pos) + pos) = ((Train->Track - pos) + pos)
}
pred __repair { idHi5C3n9sEyxHgwcqL_prop3 }
check __repair { idHi5C3n9sEyxHgwcqL_prop3 <=> prop3o }