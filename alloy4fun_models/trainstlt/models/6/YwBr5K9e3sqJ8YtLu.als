open main
pred idYwBr5K9e3sqJ8YtLu_prop7 {
	
  	all t : Train | one t.pos implies (eventually always no t.pos')
}
pred __repair { idYwBr5K9e3sqJ8YtLu_prop7 }
check __repair { idYwBr5K9e3sqJ8YtLu_prop7 <=> prop7o }