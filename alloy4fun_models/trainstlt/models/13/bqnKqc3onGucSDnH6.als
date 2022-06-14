open main
pred idbqnKqc3onGucSDnH6_prop14 {
	
	always ( all t:Train | eventually (some t.pos  and  one (t.pos.signal :>Green) and t.pos' !=t. pos ) implies (t.pos.signal in  Signal-Green) )

}
pred __repair { idbqnKqc3onGucSDnH6_prop14 }
check __repair { idbqnKqc3onGucSDnH6_prop14 <=> prop14o }