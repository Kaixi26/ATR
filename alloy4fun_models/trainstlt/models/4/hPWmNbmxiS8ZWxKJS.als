open main
pred idhPWmNbmxiS8ZWxKJS_prop5 {
	
	
	all t : Train | t.pos' != t.pos implies t.pos' in t.pos.prox
}
pred __repair { idhPWmNbmxiS8ZWxKJS_prop5 }
check __repair { idhPWmNbmxiS8ZWxKJS_prop5 <=> prop5o }