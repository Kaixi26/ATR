open main
pred id66uH8rfaCJbERe7pw_prop7 {
	
  	all t : Train | eventually no t.pos
}
pred __repair { id66uH8rfaCJbERe7pw_prop7 }
check __repair { id66uH8rfaCJbERe7pw_prop7 <=> prop7o }