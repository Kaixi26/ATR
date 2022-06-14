open main
pred idF8LGtHDiki7nfPLnw_prop5 {
	
  always all t : Train | (t.pos).prox = Exit releases t.pos.prox in Track
}
pred __repair { idF8LGtHDiki7nfPLnw_prop5 }
check __repair { idF8LGtHDiki7nfPLnw_prop5 <=> prop5o }