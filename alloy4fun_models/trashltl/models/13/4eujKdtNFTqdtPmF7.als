open main
pred id4eujKdtNFTqdtPmF7_prop14 {
	all f:Protected | always some (f & Trash) implies no (Protected' & f) 
}
pred __repair { id4eujKdtNFTqdtPmF7_prop14 }
check __repair { id4eujKdtNFTqdtPmF7_prop14 <=> prop14o }