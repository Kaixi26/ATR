open main
pred idusqbZeJGujCAMvExw_prop3 {
	
	all t : Train | t.pos = t.pos'
}
pred __repair { idusqbZeJGujCAMvExw_prop3 }
check __repair { idusqbZeJGujCAMvExw_prop3 <=> prop3o }