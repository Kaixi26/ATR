open main
pred idvGQFaMi6ZL2bpxv6d_prop14 {
	
	always ( all t:Train | ( one (t.pos.signal :>Green) )implies (t.pos.signal in  Signal-Green) )

}
pred __repair { idvGQFaMi6ZL2bpxv6d_prop14 }
check __repair { idvGQFaMi6ZL2bpxv6d_prop14 <=> prop14o }