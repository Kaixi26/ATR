open main
pred id7HAgCnPZxoPudLBk9_prop7 {
	
  	all t : Train | (eventually always no t.pos')
}
pred __repair { id7HAgCnPZxoPudLBk9_prop7 }
check __repair { id7HAgCnPZxoPudLBk9_prop7 <=> prop7o }