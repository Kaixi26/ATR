open main
pred idGZBSaEdCGT8vc5K9B_prop10 {
	always all p: Protected | historically p in Protected
}
pred __repair { idGZBSaEdCGT8vc5K9B_prop10 }
check __repair { idGZBSaEdCGT8vc5K9B_prop10 <=> prop10o }