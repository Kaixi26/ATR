open main
pred iduZ98cLjPYuNLSvrLs_prop14 {
	
	always ( all t:Train | (some t.pos and  one (t.pos.signal :>Green) )implies (t.pos.signal in  Signal-Green) )

}
pred __repair { iduZ98cLjPYuNLSvrLs_prop14 }
check __repair { iduZ98cLjPYuNLSvrLs_prop14 <=> prop14o }