open main
pred idc3hCdbTTjAyTw7pLP_prop5 {
	
	always all t : Train, p : t.pos | t.pos' in p.prox
}
pred __repair { idc3hCdbTTjAyTw7pLP_prop5 }
check __repair { idc3hCdbTTjAyTw7pLP_prop5 <=> prop5o }