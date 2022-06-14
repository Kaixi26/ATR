open main
pred ideDmK9yKJpWMvFHDhQ_prop3 {
	
	all t:Train | t.pos'=t.pos
}
pred __repair { ideDmK9yKJpWMvFHDhQ_prop3 }
check __repair { ideDmK9yKJpWMvFHDhQ_prop3 <=> prop3o }