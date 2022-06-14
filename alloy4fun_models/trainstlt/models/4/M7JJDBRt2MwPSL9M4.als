open main
pred idM7JJDBRt2MwPSL9M4_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox 
}
pred __repair { idM7JJDBRt2MwPSL9M4_prop5 }
check __repair { idM7JJDBRt2MwPSL9M4_prop5 <=> prop5o }