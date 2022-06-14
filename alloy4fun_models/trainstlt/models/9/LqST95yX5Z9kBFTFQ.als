open main
pred idLqST95yX5Z9kBFTFQ_prop10 {
	
	all j:Junction | lone ( (prox.j).signal & Green )
}
pred __repair { idLqST95yX5Z9kBFTFQ_prop10 }
check __repair { idLqST95yX5Z9kBFTFQ_prop10 <=> prop10o }