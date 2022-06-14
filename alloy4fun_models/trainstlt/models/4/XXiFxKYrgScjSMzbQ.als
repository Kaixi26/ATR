open main
pred idXXiFxKYrgScjSMzbQ_prop5 {
	
	always all t : Train, p : t.pos | (t.pos)' in p.prox
}
pred __repair { idXXiFxKYrgScjSMzbQ_prop5 }
check __repair { idXXiFxKYrgScjSMzbQ_prop5 <=> prop5o }