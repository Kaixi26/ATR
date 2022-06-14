open main
pred idDMdMBNFmH3ggB8RNB_prop5 {
	
	all t : Train | some (t.pos & Exit) implies  Train' = (Train - t) else( t.pos' in t.pos.prox)  
}
pred __repair { idDMdMBNFmH3ggB8RNB_prop5 }
check __repair { idDMdMBNFmH3ggB8RNB_prop5 <=> prop5o }