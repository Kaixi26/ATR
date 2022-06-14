open main
pred idkmGFYwjasLfeE9Jx2_prop14 {
	
	always ( all t:Train | let tr=t.pos | ( one (tr.signal :>Green) )implies after (tr.signal in  Signal-Green) )

}
pred __repair { idkmGFYwjasLfeE9Jx2_prop14 }
check __repair { idkmGFYwjasLfeE9Jx2_prop14 <=> prop14o }