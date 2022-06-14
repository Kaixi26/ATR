open main
pred idLTcipNGTnDR2Sjp5N_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) and t.pos != t.pos' )implies (t.pos.signal in  Signal-Green) )

}
pred __repair { idLTcipNGTnDR2Sjp5N_prop14 }
check __repair { idLTcipNGTnDR2Sjp5N_prop14 <=> prop14o }