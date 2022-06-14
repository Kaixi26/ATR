open main
pred idQL4xhLXvQdFi2PA7Y_prop1 {
	
	all t : Track | t.signal not in Green
}
pred __repair { idQL4xhLXvQdFi2PA7Y_prop1 }
check __repair { idQL4xhLXvQdFi2PA7Y_prop1 <=> prop1o }