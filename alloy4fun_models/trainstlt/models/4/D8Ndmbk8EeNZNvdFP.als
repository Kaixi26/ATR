open main
pred idD8Ndmbk8EeNZNvdFP_prop5 {
	
	always all t : Train | t.pos' in t.pos.prox
}
pred __repair { idD8Ndmbk8EeNZNvdFP_prop5 }
check __repair { idD8Ndmbk8EeNZNvdFP_prop5 <=> prop5o }