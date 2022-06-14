open main
pred id8Wtwdr5FoLWjyvz9p_prop5 {
	
	always all t : Train, p : t.pos | (t.pos)' in p.prox 
}
pred __repair { id8Wtwdr5FoLWjyvz9p_prop5 }
check __repair { id8Wtwdr5FoLWjyvz9p_prop5 <=> prop5o }