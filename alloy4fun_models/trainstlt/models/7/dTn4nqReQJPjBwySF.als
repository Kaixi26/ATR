open main
pred iddTn4nqReQJPjBwySF_prop8 {
	
	all t:Train |(t.pos.signal)  in (Signal-Green) implies (some t.pos') implies  ((t.pos.signal) in Green)

}
pred __repair { iddTn4nqReQJPjBwySF_prop8 }
check __repair { iddTn4nqReQJPjBwySF_prop8 <=> prop8o }